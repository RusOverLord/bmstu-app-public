import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/widgets/custom/custom_text_field.dart';
import 'package:bbmstu_app/src/widgets/custom/will_pop_state_mixin.dart';
import 'package:flutter/material.dart';

enum PathDialogResultType {
  save,
  reset,
  cancel,
}

extension PathDialogResultTypeX on PathDialogResultType {
  R when<R>({
    required R Function() save,
    required R Function() reset,
    required R Function() cancel,
  }) {
    switch (this) {
      case PathDialogResultType.save:
        return save();
      case PathDialogResultType.reset:
        return reset();
      case PathDialogResultType.cancel:
        return cancel();
    }
  }

  R mayBeWhen<R>({
    required R Function() orElse,
    R Function()? save,
    R Function()? reset,
    R Function()? cancel,
  }) =>
      when<R>(
        save: save?.call ?? orElse,
        reset: reset?.call ?? orElse,
        cancel: cancel?.call ?? orElse,
      );

  R? whenOrNull<R>({
    R Function()? save,
    R Function()? reset,
    R Function()? cancel,
  }) =>
      mayBeWhen<R?>(
        orElse: () => null,
        save: save,
        reset: reset,
        cancel: cancel,
      );
}

class PathDialogResult {
  final PathDialogResultType action;
  final String value;

  PathDialogResult(this.action, this.value);
}

class PathDialog extends StatefulWidget {
  final String originalText;

  const PathDialog({
    Key? key,
    required this.originalText,
  }) : super(key: key);

  @override
  _PathDialogState createState() => _PathDialogState();
}

class _PathDialogState extends State<PathDialog> with WillPopStateMixin {
  static const double itemSpacing = 8.0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController textEditingController;

  void save() {
    final textFiledText = textEditingController.text;
    Navigator.pop(context, PathDialogResult(PathDialogResultType.save, textFiledText));
  }

  void reset() {
    Navigator.pop(context, PathDialogResult(PathDialogResultType.reset, ''));
  }

  void cancel() {
    Navigator.pop(context, PathDialogResult(PathDialogResultType.cancel, ''));
  }

  @override
  Future<bool> onWillPop() {
    cancel();
    return super.onWillPop();
  }

  @override
  void initState() {
    textEditingController = TextEditingController(text: widget.originalText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Form(
        key: _formKey,
        child: Wrap(
          runSpacing: itemSpacing,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 2.0, bottom: 6.0),
                  child: CustomTextField(
                    textEditingController: textEditingController,
                    contentPadding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
                    onEditingComplete: save,
                    textCapitalization: TextCapitalization.none,
                  ),
                ),
              ],
            ),
            buttonBuilder(
              text: 'Сохранить',
              color: const Color.fromRGBO(33, 118, 108, 1),
              onTap: save,
            ),
            buttonBuilder(
              text: 'Вернуть как было',
              color: const Color.fromRGBO(99, 123, 148, 1),
              onTap: reset,
            ),
            buttonBuilder(
              text: 'Отмена',
              color: const Color.fromRGBO(99, 123, 148, 1),
              onTap: cancel,
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonBuilder({
    required Color color,
    required String text,
    required VoidCallback onTap,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return StandardButton(
      color: color,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          text,
          style: textTheme.headline4?.copyWith(fontSize: 14),
        ),
      ),
      onTap: onTap,
    );
  }
}
