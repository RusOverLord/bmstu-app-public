import 'package:bbmstu_app/src/features/foreigners/domain/entities/contact_ird_list.dart';

class ContactIRDListMapper {
  static ContactIRDList fromJSON(Map<String, dynamic> json) {
    final contactLists = (json['contacts_ird'] as List<dynamic>)
        .map((e) => _ContactIRDSublistMapper.fromJSON(e))
        .toList();
    return ContactIRDList(
      bottomLinkText: json['bottom_link'],
      contactLists: contactLists,
    );
  }
}

class _ContactIRDSublistMapper {
  static ContactIRDSublist fromJSON(Map<String, dynamic> json) {
    final contacts = (json['contacts'] as List<dynamic>)
        .map((e) => _ContactIRDMapper.fromJSON(e))
        .toList();
    return ContactIRDSublist(
      contacts: contacts,
      title: json['title'],
    );
  }
}

class _ContactIRDMapper {
  static ContactIRD fromJSON(Map<String, dynamic> json) {
    return ContactIRD(
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
    );
  }
}
