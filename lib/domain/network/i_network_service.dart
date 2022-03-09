import 'package:fpdart/fpdart.dart';
import 'package:weatherapp/domain/network/network_error.dart';

abstract class INetworkService {
  Future<Either<NetworkError, dynamic>> getHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? header,
    Function(int, int)? onReceiveProgress,
  });
}
