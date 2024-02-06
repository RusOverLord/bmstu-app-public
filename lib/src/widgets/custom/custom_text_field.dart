import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final EdgeInsets contentPadding;
  final BorderRadius borderRadius;
  final String? hintText;
  final Icon? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final FocusNode? focusNode;
  final Function(String text)? onChanged;
  final VoidCallback? onEditingComplete;
  final String? Function(String? text)? validator;
  final Color? backgroundColor;
  final Color? activeColor;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final TextStyle? textStyle;

  const CustomTextField({
    Key? key,
    this.textEditingController,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.sentences,
    this.contentPadding = const EdgeInsets.all(0),
    this.borderRadius = const BorderRadius.all(Radius.zero),
    this.hintText,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.focusNode,
    this.onChanged,
    this.onEditingComplete,
    this.validator,
    this.backgroundColor,
    this.activeColor,
    this.hintStyle,
    this.errorStyle,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      focusNode: focusNode,
      textAlign: TextAlign.left,
      maxLines: 1,
      autocorrect: false,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      controller: textEditingController,
      cursorColor: activeColor,
      style: textStyle,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      validator: validator,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: backgroundColor,
        contentPadding: contentPadding,
        focusColor: activeColor,
        hintText: hintText,
        hintStyle: hintStyle,
        errorMaxLines: 2,
        errorStyle: errorStyle,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: borderRadius,
        ),
        prefixIconConstraints: prefixIconConstraints,
        prefixIcon: prefixIcon,
      ),
    );
  }
}

class CustomTextFieldSearch extends StatelessWidget {
  final TextEditingController? textEditingController;
  final EdgeInsets contentPadding;
  final BorderRadius borderRadius;
  final String? hintText;
  final Icon? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final Function(String text)? onChanged;
  final VoidCallback? onEditingComplete;
  final Color? backgroundColor;
  final Color? activeColor;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final TextStyle? textStyle;

  const CustomTextFieldSearch({
    Key? key,
    this.textEditingController,
    this.contentPadding = const EdgeInsets.all(0),
    this.borderRadius = const BorderRadius.all(Radius.zero),
    this.hintText,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.onChanged,
    this.onEditingComplete,
    this.backgroundColor,
    this.activeColor,
    this.hintStyle,
    this.errorStyle,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.left,
      maxLines: 1,
      autocorrect: false,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.characters,
      controller: textEditingController,
      cursorColor: activeColor,
      style: textStyle,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: backgroundColor,
        contentPadding: contentPadding,
        focusColor: activeColor,
        hintText: hintText,
        hintStyle: hintStyle,
        errorMaxLines: 2,
        errorStyle: errorStyle,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: borderRadius,
        ),
        prefixIconConstraints: prefixIconConstraints,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
