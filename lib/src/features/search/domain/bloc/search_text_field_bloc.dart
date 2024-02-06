// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'search_text_field_bloc.freezed.dart';
//
// @freezed
// abstract class SearchTextFieldBlocEvent with _$SearchTextFieldBlocEvent {
//   const SearchTextFieldBlocEvent._();
//
//   const factory SearchTextFieldBlocEvent.create() = CreateSearchTextFieldBlocEvent;
//
//   const factory SearchTextFieldBlocEvent.read() = ReadSearchTextFieldBlocEvent;
//
//   const factory SearchTextFieldBlocEvent.update() = UpdateSearchTextFieldBlocEvent;
//
//   const factory SearchTextFieldBlocEvent.delete() = DeleteSearchTextFieldBlocEvent;
// }
//
// @freezed
// abstract class SearchTextFieldBlocState with _$SearchTextFieldBlocState {
//   const SearchTextFieldBlocState._();
//
//   const factory SearchTextFieldBlocState.initial() = InitialSearchTextFieldBlocState;
// }
//
// class SearchTextFieldBlocBloc extends Bloc<SearchTextFieldBlocEvent, SearchTextFieldBlocState> {
//   SearchTextFieldBlocBLoc() : super(const InitialSearchTextFieldBlocState());
//
//   @override
//   Stream<SearchTextFieldBlocState> mapEventToState(SearchTextFieldBlocEvent event) =>
//     event.when<Stream<SearchTextFieldBlocState>>(
//       create: _create,
//       read: _read,
//       update: _update,
//       delete: _delete,
//     );
//
//   Stream<SearchTextFieldBlocState> _create() async* {
//     // ...
//   }
//
//   Stream<SearchTextFieldBlocState> _read() async* {
//     // ...
//   }
//
//   Stream<SearchTextFieldBlocState> _update() async* {
//     // ...
//   }
//
//   Stream<SearchTextFieldBlocState> _delete() async* {
//     // ...
//   }
// }
