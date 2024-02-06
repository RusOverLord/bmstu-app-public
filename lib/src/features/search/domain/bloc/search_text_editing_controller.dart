import 'package:bbmstu_app/src/features/search/domain/bloc/search_bloc.dart';
import 'package:flutter/material.dart';

class SearchTextEditingController extends TextEditingController {
  final ISearchBloc bloc;
  String previousText;

  SearchTextEditingController({
    String text = '',
    required this.bloc,
  }) : previousText = text, super(text: text);

  @override
  set value(TextEditingValue value) {
    super.value = value;
    final text = value.text;
    if (text != previousText) {
      previousText = text;
      bloc.add(SearchBlocEvent.textInput(text));
    }
  }
}
