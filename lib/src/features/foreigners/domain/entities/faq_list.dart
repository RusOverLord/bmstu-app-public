class FAQList {
  final String title;
  final List<FAQItem> items;

  FAQList({
    required this.title,
    required this.items,
  });

  FAQItem operator [](int index) {
    return items.elementAt(index);
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({
    required this.question,
    required this.answer,
  });
}
