import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri url = Uri.parse("https://equran.id/api/surat");

  var res = await http.get(url);
  List data = json.decode(res.body);

  // 1-114 -> index of 1113 = an-nas
  print(data[113]);
}
