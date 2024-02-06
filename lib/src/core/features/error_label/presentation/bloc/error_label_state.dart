import 'package:equatable/equatable.dart';

class ErrorLabelState extends Equatable {
  final String message;

  bool get show => message.isNotEmpty;

  const ErrorLabelState(this.message);

  const ErrorLabelState.empty() : this('');

  const ErrorLabelState.noConnection() : this('Нет сети');

  @override
  List<Object> get props => [
        message,
      ];
}
