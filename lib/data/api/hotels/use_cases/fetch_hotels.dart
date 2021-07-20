import 'package:skillbox_http/presentation/core/constants/api/api.dart';
import 'package:skillbox_http/presentation/core/constants/api/api_path.dart';
import 'package:http/http.dart';

Future<Response> getHotels() async {
  final uri = Api.uri(ApiPath.getHotelsPath);
  return await get(uri);
}
