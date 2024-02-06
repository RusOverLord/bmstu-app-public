// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchBlocEventTearOff {
  const _$SearchBlocEventTearOff();

  SearchBlocEventTextInput textInput(String text) {
    return SearchBlocEventTextInput(
      text,
    );
  }

  SearchBlocEventDoInitSearch doInitSearch() {
    return const SearchBlocEventDoInitSearch();
  }

  SearchBlocEventDoStepSearch doStepSearch(SearchItem searchItem) {
    return SearchBlocEventDoStepSearch(
      searchItem,
    );
  }

  SearchBlocEventDoFreeSearch doFreeSearch(String text) {
    return SearchBlocEventDoFreeSearch(
      text,
    );
  }
}

/// @nodoc
const $SearchBlocEvent = _$SearchBlocEventTearOff();

/// @nodoc
mixin _$SearchBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textInput,
    required TResult Function() doInitSearch,
    required TResult Function(SearchItem searchItem) doStepSearch,
    required TResult Function(String text) doFreeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBlocEventTextInput value) textInput,
    required TResult Function(SearchBlocEventDoInitSearch value) doInitSearch,
    required TResult Function(SearchBlocEventDoStepSearch value) doStepSearch,
    required TResult Function(SearchBlocEventDoFreeSearch value) doFreeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocEventCopyWith<$Res> {
  factory $SearchBlocEventCopyWith(
          SearchBlocEvent value, $Res Function(SearchBlocEvent) then) =
      _$SearchBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchBlocEventCopyWithImpl<$Res>
    implements $SearchBlocEventCopyWith<$Res> {
  _$SearchBlocEventCopyWithImpl(this._value, this._then);

  final SearchBlocEvent _value;
  // ignore: unused_field
  final $Res Function(SearchBlocEvent) _then;
}

/// @nodoc
abstract class $SearchBlocEventTextInputCopyWith<$Res> {
  factory $SearchBlocEventTextInputCopyWith(SearchBlocEventTextInput value,
          $Res Function(SearchBlocEventTextInput) then) =
      _$SearchBlocEventTextInputCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$SearchBlocEventTextInputCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res>
    implements $SearchBlocEventTextInputCopyWith<$Res> {
  _$SearchBlocEventTextInputCopyWithImpl(SearchBlocEventTextInput _value,
      $Res Function(SearchBlocEventTextInput) _then)
      : super(_value, (v) => _then(v as SearchBlocEventTextInput));

  @override
  SearchBlocEventTextInput get _value =>
      super._value as SearchBlocEventTextInput;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(SearchBlocEventTextInput(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchBlocEventTextInput extends SearchBlocEventTextInput {
  const _$SearchBlocEventTextInput(this.text) : super._();

  @override
  final String text;

  @override
  String toString() {
    return 'SearchBlocEvent.textInput(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchBlocEventTextInput &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $SearchBlocEventTextInputCopyWith<SearchBlocEventTextInput> get copyWith =>
      _$SearchBlocEventTextInputCopyWithImpl<SearchBlocEventTextInput>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textInput,
    required TResult Function() doInitSearch,
    required TResult Function(SearchItem searchItem) doStepSearch,
    required TResult Function(String text) doFreeSearch,
  }) {
    return textInput(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
  }) {
    return textInput?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
    required TResult orElse(),
  }) {
    if (textInput != null) {
      return textInput(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBlocEventTextInput value) textInput,
    required TResult Function(SearchBlocEventDoInitSearch value) doInitSearch,
    required TResult Function(SearchBlocEventDoStepSearch value) doStepSearch,
    required TResult Function(SearchBlocEventDoFreeSearch value) doFreeSearch,
  }) {
    return textInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
  }) {
    return textInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
    required TResult orElse(),
  }) {
    if (textInput != null) {
      return textInput(this);
    }
    return orElse();
  }
}

abstract class SearchBlocEventTextInput extends SearchBlocEvent {
  const factory SearchBlocEventTextInput(String text) =
      _$SearchBlocEventTextInput;
  const SearchBlocEventTextInput._() : super._();

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchBlocEventTextInputCopyWith<SearchBlocEventTextInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocEventDoInitSearchCopyWith<$Res> {
  factory $SearchBlocEventDoInitSearchCopyWith(
          SearchBlocEventDoInitSearch value,
          $Res Function(SearchBlocEventDoInitSearch) then) =
      _$SearchBlocEventDoInitSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchBlocEventDoInitSearchCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res>
    implements $SearchBlocEventDoInitSearchCopyWith<$Res> {
  _$SearchBlocEventDoInitSearchCopyWithImpl(SearchBlocEventDoInitSearch _value,
      $Res Function(SearchBlocEventDoInitSearch) _then)
      : super(_value, (v) => _then(v as SearchBlocEventDoInitSearch));

  @override
  SearchBlocEventDoInitSearch get _value =>
      super._value as SearchBlocEventDoInitSearch;
}

/// @nodoc

class _$SearchBlocEventDoInitSearch extends SearchBlocEventDoInitSearch {
  const _$SearchBlocEventDoInitSearch() : super._();

  @override
  String toString() {
    return 'SearchBlocEvent.doInitSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchBlocEventDoInitSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textInput,
    required TResult Function() doInitSearch,
    required TResult Function(SearchItem searchItem) doStepSearch,
    required TResult Function(String text) doFreeSearch,
  }) {
    return doInitSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
  }) {
    return doInitSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
    required TResult orElse(),
  }) {
    if (doInitSearch != null) {
      return doInitSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBlocEventTextInput value) textInput,
    required TResult Function(SearchBlocEventDoInitSearch value) doInitSearch,
    required TResult Function(SearchBlocEventDoStepSearch value) doStepSearch,
    required TResult Function(SearchBlocEventDoFreeSearch value) doFreeSearch,
  }) {
    return doInitSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
  }) {
    return doInitSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
    required TResult orElse(),
  }) {
    if (doInitSearch != null) {
      return doInitSearch(this);
    }
    return orElse();
  }
}

abstract class SearchBlocEventDoInitSearch extends SearchBlocEvent {
  const factory SearchBlocEventDoInitSearch() = _$SearchBlocEventDoInitSearch;
  const SearchBlocEventDoInitSearch._() : super._();
}

/// @nodoc
abstract class $SearchBlocEventDoStepSearchCopyWith<$Res> {
  factory $SearchBlocEventDoStepSearchCopyWith(
          SearchBlocEventDoStepSearch value,
          $Res Function(SearchBlocEventDoStepSearch) then) =
      _$SearchBlocEventDoStepSearchCopyWithImpl<$Res>;
  $Res call({SearchItem searchItem});
}

/// @nodoc
class _$SearchBlocEventDoStepSearchCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res>
    implements $SearchBlocEventDoStepSearchCopyWith<$Res> {
  _$SearchBlocEventDoStepSearchCopyWithImpl(SearchBlocEventDoStepSearch _value,
      $Res Function(SearchBlocEventDoStepSearch) _then)
      : super(_value, (v) => _then(v as SearchBlocEventDoStepSearch));

  @override
  SearchBlocEventDoStepSearch get _value =>
      super._value as SearchBlocEventDoStepSearch;

  @override
  $Res call({
    Object? searchItem = freezed,
  }) {
    return _then(SearchBlocEventDoStepSearch(
      searchItem == freezed
          ? _value.searchItem
          : searchItem // ignore: cast_nullable_to_non_nullable
              as SearchItem,
    ));
  }
}

/// @nodoc

class _$SearchBlocEventDoStepSearch extends SearchBlocEventDoStepSearch {
  const _$SearchBlocEventDoStepSearch(this.searchItem) : super._();

  @override
  final SearchItem searchItem;

  @override
  String toString() {
    return 'SearchBlocEvent.doStepSearch(searchItem: $searchItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchBlocEventDoStepSearch &&
            (identical(other.searchItem, searchItem) ||
                const DeepCollectionEquality()
                    .equals(other.searchItem, searchItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchItem);

  @JsonKey(ignore: true)
  @override
  $SearchBlocEventDoStepSearchCopyWith<SearchBlocEventDoStepSearch>
      get copyWith => _$SearchBlocEventDoStepSearchCopyWithImpl<
          SearchBlocEventDoStepSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textInput,
    required TResult Function() doInitSearch,
    required TResult Function(SearchItem searchItem) doStepSearch,
    required TResult Function(String text) doFreeSearch,
  }) {
    return doStepSearch(searchItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
  }) {
    return doStepSearch?.call(searchItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
    required TResult orElse(),
  }) {
    if (doStepSearch != null) {
      return doStepSearch(searchItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBlocEventTextInput value) textInput,
    required TResult Function(SearchBlocEventDoInitSearch value) doInitSearch,
    required TResult Function(SearchBlocEventDoStepSearch value) doStepSearch,
    required TResult Function(SearchBlocEventDoFreeSearch value) doFreeSearch,
  }) {
    return doStepSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
  }) {
    return doStepSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
    required TResult orElse(),
  }) {
    if (doStepSearch != null) {
      return doStepSearch(this);
    }
    return orElse();
  }
}

abstract class SearchBlocEventDoStepSearch extends SearchBlocEvent {
  const factory SearchBlocEventDoStepSearch(SearchItem searchItem) =
      _$SearchBlocEventDoStepSearch;
  const SearchBlocEventDoStepSearch._() : super._();

  SearchItem get searchItem => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchBlocEventDoStepSearchCopyWith<SearchBlocEventDoStepSearch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocEventDoFreeSearchCopyWith<$Res> {
  factory $SearchBlocEventDoFreeSearchCopyWith(
          SearchBlocEventDoFreeSearch value,
          $Res Function(SearchBlocEventDoFreeSearch) then) =
      _$SearchBlocEventDoFreeSearchCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$SearchBlocEventDoFreeSearchCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res>
    implements $SearchBlocEventDoFreeSearchCopyWith<$Res> {
  _$SearchBlocEventDoFreeSearchCopyWithImpl(SearchBlocEventDoFreeSearch _value,
      $Res Function(SearchBlocEventDoFreeSearch) _then)
      : super(_value, (v) => _then(v as SearchBlocEventDoFreeSearch));

  @override
  SearchBlocEventDoFreeSearch get _value =>
      super._value as SearchBlocEventDoFreeSearch;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(SearchBlocEventDoFreeSearch(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchBlocEventDoFreeSearch extends SearchBlocEventDoFreeSearch {
  const _$SearchBlocEventDoFreeSearch(this.text) : super._();

  @override
  final String text;

  @override
  String toString() {
    return 'SearchBlocEvent.doFreeSearch(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchBlocEventDoFreeSearch &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $SearchBlocEventDoFreeSearchCopyWith<SearchBlocEventDoFreeSearch>
      get copyWith => _$SearchBlocEventDoFreeSearchCopyWithImpl<
          SearchBlocEventDoFreeSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textInput,
    required TResult Function() doInitSearch,
    required TResult Function(SearchItem searchItem) doStepSearch,
    required TResult Function(String text) doFreeSearch,
  }) {
    return doFreeSearch(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
  }) {
    return doFreeSearch?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textInput,
    TResult Function()? doInitSearch,
    TResult Function(SearchItem searchItem)? doStepSearch,
    TResult Function(String text)? doFreeSearch,
    required TResult orElse(),
  }) {
    if (doFreeSearch != null) {
      return doFreeSearch(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBlocEventTextInput value) textInput,
    required TResult Function(SearchBlocEventDoInitSearch value) doInitSearch,
    required TResult Function(SearchBlocEventDoStepSearch value) doStepSearch,
    required TResult Function(SearchBlocEventDoFreeSearch value) doFreeSearch,
  }) {
    return doFreeSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
  }) {
    return doFreeSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBlocEventTextInput value)? textInput,
    TResult Function(SearchBlocEventDoInitSearch value)? doInitSearch,
    TResult Function(SearchBlocEventDoStepSearch value)? doStepSearch,
    TResult Function(SearchBlocEventDoFreeSearch value)? doFreeSearch,
    required TResult orElse(),
  }) {
    if (doFreeSearch != null) {
      return doFreeSearch(this);
    }
    return orElse();
  }
}

abstract class SearchBlocEventDoFreeSearch extends SearchBlocEvent {
  const factory SearchBlocEventDoFreeSearch(String text) =
      _$SearchBlocEventDoFreeSearch;
  const SearchBlocEventDoFreeSearch._() : super._();

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchBlocEventDoFreeSearchCopyWith<SearchBlocEventDoFreeSearch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchBlocStateTearOff {
  const _$SearchBlocStateTearOff();

  SearchBlocStateLoading loading({bool showErrorLabel = false}) {
    return SearchBlocStateLoading(
      showErrorLabel: showErrorLabel,
    );
  }

  SearchBlocStateData data(
      {bool showErrorLabel = false,
      required TDSearchListViewModel searchLists}) {
    return SearchBlocStateData(
      showErrorLabel: showErrorLabel,
      searchLists: searchLists,
    );
  }
}

/// @nodoc
const $SearchBlocState = _$SearchBlocStateTearOff();

/// @nodoc
mixin _$SearchBlocState {
  bool get showErrorLabel => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showErrorLabel) loading,
    required TResult Function(
            bool showErrorLabel, TDSearchListViewModel searchLists)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showErrorLabel)? loading,
    TResult Function(bool showErrorLabel, TDSearchListViewModel searchLists)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showErrorLabel)? loading,
    TResult Function(bool showErrorLabel, TDSearchListViewModel searchLists)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBlocStateLoading value) loading,
    required TResult Function(SearchBlocStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchBlocStateLoading value)? loading,
    TResult Function(SearchBlocStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBlocStateLoading value)? loading,
    TResult Function(SearchBlocStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBlocStateCopyWith<SearchBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocStateCopyWith<$Res> {
  factory $SearchBlocStateCopyWith(
          SearchBlocState value, $Res Function(SearchBlocState) then) =
      _$SearchBlocStateCopyWithImpl<$Res>;
  $Res call({bool showErrorLabel});
}

/// @nodoc
class _$SearchBlocStateCopyWithImpl<$Res>
    implements $SearchBlocStateCopyWith<$Res> {
  _$SearchBlocStateCopyWithImpl(this._value, this._then);

  final SearchBlocState _value;
  // ignore: unused_field
  final $Res Function(SearchBlocState) _then;

  @override
  $Res call({
    Object? showErrorLabel = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorLabel: showErrorLabel == freezed
          ? _value.showErrorLabel
          : showErrorLabel // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $SearchBlocStateLoadingCopyWith<$Res>
    implements $SearchBlocStateCopyWith<$Res> {
  factory $SearchBlocStateLoadingCopyWith(SearchBlocStateLoading value,
          $Res Function(SearchBlocStateLoading) then) =
      _$SearchBlocStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({bool showErrorLabel});
}

/// @nodoc
class _$SearchBlocStateLoadingCopyWithImpl<$Res>
    extends _$SearchBlocStateCopyWithImpl<$Res>
    implements $SearchBlocStateLoadingCopyWith<$Res> {
  _$SearchBlocStateLoadingCopyWithImpl(SearchBlocStateLoading _value,
      $Res Function(SearchBlocStateLoading) _then)
      : super(_value, (v) => _then(v as SearchBlocStateLoading));

  @override
  SearchBlocStateLoading get _value => super._value as SearchBlocStateLoading;

  @override
  $Res call({
    Object? showErrorLabel = freezed,
  }) {
    return _then(SearchBlocStateLoading(
      showErrorLabel: showErrorLabel == freezed
          ? _value.showErrorLabel
          : showErrorLabel // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchBlocStateLoading extends SearchBlocStateLoading {
  const _$SearchBlocStateLoading({this.showErrorLabel = false}) : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool showErrorLabel;

  @override
  String toString() {
    return 'SearchBlocState.loading(showErrorLabel: $showErrorLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchBlocStateLoading &&
            (identical(other.showErrorLabel, showErrorLabel) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorLabel, showErrorLabel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorLabel);

  @JsonKey(ignore: true)
  @override
  $SearchBlocStateLoadingCopyWith<SearchBlocStateLoading> get copyWith =>
      _$SearchBlocStateLoadingCopyWithImpl<SearchBlocStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showErrorLabel) loading,
    required TResult Function(
            bool showErrorLabel, TDSearchListViewModel searchLists)
        data,
  }) {
    return loading(showErrorLabel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showErrorLabel)? loading,
    TResult Function(bool showErrorLabel, TDSearchListViewModel searchLists)?
        data,
  }) {
    return loading?.call(showErrorLabel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showErrorLabel)? loading,
    TResult Function(bool showErrorLabel, TDSearchListViewModel searchLists)?
        data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(showErrorLabel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBlocStateLoading value) loading,
    required TResult Function(SearchBlocStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchBlocStateLoading value)? loading,
    TResult Function(SearchBlocStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBlocStateLoading value)? loading,
    TResult Function(SearchBlocStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchBlocStateLoading extends SearchBlocState {
  const factory SearchBlocStateLoading({bool showErrorLabel}) =
      _$SearchBlocStateLoading;
  const SearchBlocStateLoading._() : super._();

  @override
  bool get showErrorLabel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchBlocStateLoadingCopyWith<SearchBlocStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocStateDataCopyWith<$Res>
    implements $SearchBlocStateCopyWith<$Res> {
  factory $SearchBlocStateDataCopyWith(
          SearchBlocStateData value, $Res Function(SearchBlocStateData) then) =
      _$SearchBlocStateDataCopyWithImpl<$Res>;
  @override
  $Res call({bool showErrorLabel, TDSearchListViewModel searchLists});
}

/// @nodoc
class _$SearchBlocStateDataCopyWithImpl<$Res>
    extends _$SearchBlocStateCopyWithImpl<$Res>
    implements $SearchBlocStateDataCopyWith<$Res> {
  _$SearchBlocStateDataCopyWithImpl(
      SearchBlocStateData _value, $Res Function(SearchBlocStateData) _then)
      : super(_value, (v) => _then(v as SearchBlocStateData));

  @override
  SearchBlocStateData get _value => super._value as SearchBlocStateData;

  @override
  $Res call({
    Object? showErrorLabel = freezed,
    Object? searchLists = freezed,
  }) {
    return _then(SearchBlocStateData(
      showErrorLabel: showErrorLabel == freezed
          ? _value.showErrorLabel
          : showErrorLabel // ignore: cast_nullable_to_non_nullable
              as bool,
      searchLists: searchLists == freezed
          ? _value.searchLists
          : searchLists // ignore: cast_nullable_to_non_nullable
              as TDSearchListViewModel,
    ));
  }
}

/// @nodoc

class _$SearchBlocStateData extends SearchBlocStateData {
  const _$SearchBlocStateData(
      {this.showErrorLabel = false, required this.searchLists})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool showErrorLabel;
  @override
  final TDSearchListViewModel searchLists;

  @override
  String toString() {
    return 'SearchBlocState.data(showErrorLabel: $showErrorLabel, searchLists: $searchLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchBlocStateData &&
            (identical(other.showErrorLabel, showErrorLabel) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorLabel, showErrorLabel)) &&
            (identical(other.searchLists, searchLists) ||
                const DeepCollectionEquality()
                    .equals(other.searchLists, searchLists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorLabel) ^
      const DeepCollectionEquality().hash(searchLists);

  @JsonKey(ignore: true)
  @override
  $SearchBlocStateDataCopyWith<SearchBlocStateData> get copyWith =>
      _$SearchBlocStateDataCopyWithImpl<SearchBlocStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showErrorLabel) loading,
    required TResult Function(
            bool showErrorLabel, TDSearchListViewModel searchLists)
        data,
  }) {
    return data(showErrorLabel, searchLists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showErrorLabel)? loading,
    TResult Function(bool showErrorLabel, TDSearchListViewModel searchLists)?
        data,
  }) {
    return data?.call(showErrorLabel, searchLists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showErrorLabel)? loading,
    TResult Function(bool showErrorLabel, TDSearchListViewModel searchLists)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(showErrorLabel, searchLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBlocStateLoading value) loading,
    required TResult Function(SearchBlocStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchBlocStateLoading value)? loading,
    TResult Function(SearchBlocStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBlocStateLoading value)? loading,
    TResult Function(SearchBlocStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SearchBlocStateData extends SearchBlocState {
  const factory SearchBlocStateData(
      {bool showErrorLabel,
      required TDSearchListViewModel searchLists}) = _$SearchBlocStateData;
  const SearchBlocStateData._() : super._();

  @override
  bool get showErrorLabel => throw _privateConstructorUsedError;
  TDSearchListViewModel get searchLists => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchBlocStateDataCopyWith<SearchBlocStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
