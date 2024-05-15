import 'package:okhttp_scrape/okhttp_scrape.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/request.dart';

void main() {
  var client = OkHttpClient();

  client
      .newCall(Request.Builder().url('https://www.google.com').build())
      .execute()
      .then<void>(
    (response) {
      var document = response.document;
      var title = document.selectFirst('title')?.text;
      print(title);
    },
  ).onError((error, stackTrace) => print(error));
}
