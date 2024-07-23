// ignore_for_file: avoid_print

// ignore: unused_import
import 'package:flutter_dart_3/extensions_string.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('pet options', () {
    test('deserialize', () {
      final result = PetOptions.fromJson(data);
      print(result.toString());
    });
  });
}

final data = {
  "petTypes": [
    {
      "addPetSemanticLabel": "Ajouter un chien tenu en laisse et muselé",
      "code": "BIG_PET",
      "label": "Chien tenu en laisse et muselé",
      "removePetSemanticLabel": "Retirer un chien tenu en laisse et muselé"
    },
    {
      "addPetSemanticLabel": "Ajouter un petit animal dans un contenant",
      "code": "SMALL_PET",
      "label": "Petit animal dans un contenant",
      "removePetSemanticLabel": "Retirer un petit animal dans un contenant"
    }
  ],
  "faq": {
    "semanticsTitle": "Comment voyager avec son animal dans un train ?",
    "title": "Comment voyager avec son animal dans un train ?",
    "url": "https://www.sncf-connect.com/aide/voyager-avec-un-animal"
  }
};

class PetOptions {
  List<PetTypes>? petTypes;
  Faq? faq;

  PetOptions({this.petTypes, this.faq});

  PetOptions.fromJson(Map<String, dynamic> json) {
    if (json['petTypes'] != null) {
      petTypes = <PetTypes>[];
      json['petTypes'].forEach((v) {
        petTypes!.add(PetTypes.fromJson(v));
      });
    }
    faq = json['faq'] != null ? Faq.fromJson(json['faq']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (petTypes != null) {
      data['petTypes'] = petTypes!.map((v) => v.toJson()).toList();
    }
    if (faq != null) {
      data['faq'] = faq!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'PetOptions{petTypes: ${petTypes?.length} faq: ${faq?.title}}';
  }
}

class PetTypes {
  String? addPetSemanticLabel;
  String? code;
  String? label;
  String? removePetSemanticLabel;

  PetTypes({this.addPetSemanticLabel, this.code, this.label, this.removePetSemanticLabel});

  PetTypes.fromJson(Map<String, dynamic> json) {
    addPetSemanticLabel = json['addPetSemanticLabel'];
    code = json['code'];
    label = json['label'];
    removePetSemanticLabel = json['removePetSemanticLabel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['addPetSemanticLabel'] = addPetSemanticLabel;
    data['code'] = code;
    data['label'] = label;
    data['removePetSemanticLabel'] = removePetSemanticLabel;
    return data;
  }
}

class Faq {
  String? semanticsTitle;
  String? title;
  String? url;

  Faq({this.semanticsTitle, this.title, this.url});

  Faq.fromJson(Map<String, dynamic> json) {
    semanticsTitle = json['semanticsTitle'];
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['semanticsTitle'] = semanticsTitle;
    data['title'] = title;
    data['url'] = url;
    return data;
  }
}
