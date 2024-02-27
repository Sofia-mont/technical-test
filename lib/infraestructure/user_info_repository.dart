import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:technical_test_sofia/config/providers/dio/dio_provider.dart';
import 'package:technical_test_sofia/domain/user_info_response.dart';

part 'user_info_repository.g.dart';

@riverpod
UserInfoRepository userInfoRepository(UserInfoRepositoryRef ref) =>
    UserInfoRepository(client: ref.watch(dioProvider));

class UserInfoRepository {
  UserInfoRepository({required this.client});

  final Dio client;

  Future<UserInfoResponse> getUserInfo({required int userId}) async {
    final url = Uri(
      scheme: 'https',
      host: 'fitness-backend-8iy6.onrender.com',
      path: 'api/user-info/$userId',
    ).toString();
    final response = await client.get(url,
        options: Options(headers: {'accept': 'application/json'}));
    return UserInfoResponse.fromJson(response.data);
  }
}
