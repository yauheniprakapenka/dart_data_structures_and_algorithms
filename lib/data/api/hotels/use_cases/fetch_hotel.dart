import 'package:skillbox_http/presentation/core/constants/api/api.dart';
import 'package:http/http.dart';

Future<Response> fetchHotel(String uuid) async {
  final uri = Api.uri(uuid);
  return await get(uri);
}
