import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:technical_test_sofia/domain/user_info_response.dart';
import 'package:technical_test_sofia/infraestructure/user_info_repository.dart';

part 'user_info_provider.g.dart';

@riverpod
Future<UserInfoResponse> fetchUserInfo(FetchUserInfoRef ref,
    {required int userId}) {
  return ref.watch(userInfoRepositoryProvider).getUserInfo(userId: userId);
}

@riverpod
Future<void> updateSteps(UpdateStepsRef ref,
    {required int userId, required int steps}) async {
  final post = await ref
      .read(userInfoRepositoryProvider)
      .postSteps(userId: userId, steps: steps);
  ref.invalidate(fetchUserInfoProvider);
  return post;
}
