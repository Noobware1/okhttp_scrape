import 'package:html/dom.dart';

extension DocumentExtensions on Document {
  Element? selectFirst(String selector) => querySelector(selector);

  List<Element> select(String selector) => querySelectorAll(selector);
}

extension ElementExtensions on Element {
  Element? selectFirst(String selector) => querySelector(selector);

  List<Element> select(String selector) => querySelectorAll(selector);

  String? attr(String name) => attributes[name];
}
