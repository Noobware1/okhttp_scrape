import 'package:html/dom.dart';
import 'package:okhttp/response.dart';

extension ResponseExtensions on Response {
  Document get document => Document.html(body.string);
}

 
