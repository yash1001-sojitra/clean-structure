import 'package:clean_architecture/app/common/constant.dart';
import 'package:clean_architecture/src/utilities/shared_pref_helper.dart';
import 'package:injectable/injectable.dart';

abstract class AuthenticationLocalDataSource {
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> clearToken();
  Future<bool> hasToken();
  Future<void> setOnboardingSeen();
  Future<bool> isOnboardingSeen();
}

@LazySingleton(as: AuthenticationLocalDataSource)
class AuthenticationLocalDataSourceImpl implements AuthenticationLocalDataSource {
  @override
  Future<void> saveToken(String token) async {
    await SharedPrefHelper.setString(ACCESS_TOKEN, token);
  }

  @override
  Future<String?> getToken() async {
    return SharedPrefHelper.getString(ACCESS_TOKEN);
  }

  @override
  Future<void> clearToken() async {
    await SharedPrefHelper.setString(ACCESS_TOKEN, '');
  }

  @override
  Future<bool> hasToken() async {
    final token = SharedPrefHelper.getString(ACCESS_TOKEN);
    return token != null && token.isNotEmpty;
  }

  @override
  Future<void> setOnboardingSeen() async {
    await SharedPrefHelper.setString(ONBOARDING, 'true');
  }

  @override
  Future<bool> isOnboardingSeen() async {
    final val = SharedPrefHelper.getString(ONBOARDING);
    return val != null && val.isNotEmpty;
  }
}
