import 'package:bbmstu_app/src/core/logger.dart';
import 'package:bbmstu_app/src/features/search/data/search_repository.dart';
import 'package:bbmstu_app/src/features/search/domain/models/models.dart';
import 'package:bbmstu_app/src/features/search/domain/view_models/view_models.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'search_bloc.freezed.dart';

abstract class ISearchBloc implements Bloc<SearchBlocEvent, SearchBlocState> {}

@freezed
abstract class SearchBlocEvent with _$SearchBlocEvent {
  const SearchBlocEvent._();

  const factory SearchBlocEvent.textInput(String text) = SearchBlocEventTextInput;

  const factory SearchBlocEvent.doInitSearch() = SearchBlocEventDoInitSearch;

  const factory SearchBlocEvent.doStepSearch(SearchItem searchItem) = SearchBlocEventDoStepSearch;

  const factory SearchBlocEvent.doFreeSearch(String text) = SearchBlocEventDoFreeSearch;

  bool get isTextInput => this is SearchBlocEventTextInput;

  bool get isNotTextInput => !isTextInput;
}

@freezed
abstract class SearchBlocState with _$SearchBlocState {
  const SearchBlocState._();

  const factory SearchBlocState.loading({
    @Default(false) bool showErrorLabel,
  }) = SearchBlocStateLoading;

  const factory SearchBlocState.data({
    @Default(false) bool showErrorLabel,
    required TDSearchListViewModel searchLists,
  }) = SearchBlocStateData;

  SearchBlocState showError() {
    return copyWith(
      showErrorLabel: true,
    );
  }
}

extension on SearchBlocStateData {
  SearchBlocStateData insert(SearchListViewModel item, SearchStepType step) {
    return copyWith(
      showErrorLabel: false,
      searchLists: searchLists.insert(item, step),
    );
  }
}

class SearchBloc extends Bloc<SearchBlocEvent, SearchBlocState> implements ISearchBloc {
  final ISearchRepository repository;

  SearchBloc({
    required this.repository,
  }) : super(_initialState(repository)) {
    if (repository.firstSearchList == null) {
      add(const SearchBlocEvent.doInitSearch());
    }
  }

  static SearchBlocState _initialState(ISearchRepository repository) {
    final firstSearchList = repository.firstSearchList;

    if (firstSearchList == null) {
      return const SearchBlocState.loading();
    }

    return SearchBlocState.data(
      searchLists: TDSearchListViewModel.fromSearchLists([firstSearchList]),
    );
  }

  @override
  Stream<SearchBlocState> mapEventToState(SearchBlocEvent event) => event.when<Stream<SearchBlocState>>(
        textInput: _textInput,
        doInitSearch: _doInitSearch,
        doStepSearch: _doStepSearch,
        doFreeSearch: _doFreeSearch,
      );

  @override
  Stream<Transition<SearchBlocEvent, SearchBlocState>> transformEvents(
    Stream<SearchBlocEvent> events,
    // ignore: deprecated_member_use
    TransitionFunction<SearchBlocEvent, SearchBlocState> transitionFn,
  ) {
    final whereTextInput = events
        .where((event) => event.isTextInput)
        .debounceTime(const Duration(milliseconds: 150))
        .throttleTime(const Duration(milliseconds: 350));
    final whereNotTextInput = events.where((event) => event.isNotTextInput);
    final mergedStream = whereTextInput.mergeWith([whereNotTextInput]);
    return mergedStream.asyncExpand(transitionFn);
  }

  Stream<SearchBlocState> _textInput(String text) async* {
    if (text.isEmpty) {
      yield* _doInitSearch();
    } else {
      yield* _doFreeSearch(text);
    }
  }

  Stream<SearchBlocState> _doInitSearch() async* {
    try {
      final searchList = await repository.doInitSearch();
      yield SearchBlocState.data(
        searchLists: TDSearchListViewModel.fromSearchLists([searchList]),
      );
      l.i('Do init search');
    } catch (e, st) {
      l.e('Error when do init search: $e', stackTrace: st);
      yield state.showError();
      await Future.delayed(const Duration(seconds: 2));
      add(const SearchBlocEvent.doInitSearch());
    }
  }

  Stream<SearchBlocState> _doStepSearch(SearchItem searchItem) async* {
    try {
      final nextStepIndex = searchItem.searchStepType.index + 1;
      final nextStep = SearchStepType.values[nextStepIndex];
      final searchList = await repository.doStepSearch(nextStep, searchItem.uuid);
      final searchListViewModel = SearchListViewModel.fromSearchList(searchList);
      yield (state as SearchBlocStateData).insert(searchListViewModel, nextStep);
      l.i('Do step search');
    } catch (e, st) {
      l.e('Error when do step search: $e', stackTrace: st);
      yield state.showError();
      await Future.delayed(const Duration(seconds: 2));
      add(SearchBlocEvent.doStepSearch(searchItem));
    }
  }

  Stream<SearchBlocState> _doFreeSearch(String text) async* {
    try {
      final searchList = await repository.doFreeSearch(text);
      yield SearchBlocState.data(
        searchLists: TDSearchListViewModel.fromSearchLists([searchList]),
      );
      l.i('Do free search');
    } catch (e, st) {
      l.e('Error when do step search: $e', stackTrace: st);
      yield state.showError();
      await Future.delayed(const Duration(seconds: 2));
      add(SearchBlocEvent.doFreeSearch(text));
    }
  }
}
