import 'package:adote_um_pet/src/app/features/auth/domain/entities/user_entity.dart';
import 'package:adote_um_pet/src/app/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:adote_um_pet/src/core/client_http/app_response.dart';
import 'package:adote_um_pet/src/core/typedefs/types.dart';
import 'package:adote_um_pet/src/core/usecase/usecase_interface.dart';

class SignUpUsecase implements UseCase<AppResponse<UserEntity>, SignUpParams> {
  final IAuthRepository _authRepository;

  SignUpUsecase({
    required IAuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Output<AppResponse<UserEntity>>> call(SignUpParams params) async {
    return await _authRepository.signUp(user: params.user);
  }
}

class SignUpParams {
  final UserEntity user;

  SignUpParams({
    required this.user,
  });
}
