import '../network/http_client.dart';

abstract class BaseUseCase {
  BaseUseCase(String applicationKey, {HttpClient? client})
      : client = client ?? HttpClient(applicationKey: applicationKey);

  final HttpClient client;
}
