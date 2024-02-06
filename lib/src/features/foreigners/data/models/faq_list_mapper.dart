import 'package:bbmstu_app/src/features/foreigners/domain/entities/faq_list.dart';

class FAQListMapper {
  static FAQList fromJSON(Map<String, dynamic> json) {
    final items = (json['faq'] as List<dynamic>)
        .map((e) => _FAQItemMapper.fromJSON(e))
        .toList();
    return FAQList(
      title: json['title'],
      items: items,
    );
  }
}

class _FAQItemMapper {
  static FAQItem fromJSON(Map<String, dynamic> json) {
    return FAQItem(
      answer: json['answer'].replaceAll('\\n', '\n'),
      question: json['question'],
    );
  }
}
