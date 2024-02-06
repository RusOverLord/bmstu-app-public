class ContactIRDList {
  final String bottomLinkText;
  final List<ContactIRDSublist> contactLists;

  ContactIRDList({
    required this.bottomLinkText,
    required this.contactLists,
  });

  ContactIRDSublist operator [](int index) {
    return contactLists[index];
  }
}

class ContactIRDSublist {
  final String title;
  final List<ContactIRD> contacts;

  ContactIRDSublist({
    required this.title,
    required this.contacts,
  });

  ContactIRD operator [](int index) {
    return contacts[index];
  }
}

class ContactIRD {
  final String? name;
  final String? phone;
  final String? email;

  ContactIRD({
    this.name,
    this.phone,
    this.email,
  });
}
