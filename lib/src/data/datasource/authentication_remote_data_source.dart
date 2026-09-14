import 'package:clean_architecture/app/common/api.dart';
import 'package:clean_architecture/app/common/exception.dart';
import 'package:clean_architecture/src/data/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class AuthenticationRemoteDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String name, String email, String password);
}

@LazySingleton(as: AuthenticationRemoteDataSource)
class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  AuthenticationRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<UserModel> login(String email, String password) async {
    try {
      final response = await _dio.post(
        API.LOGIN,
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          // If response wraps user/token inside a 'data' object or at root
          final userData = (data['data'] is Map<String, dynamic>)
              ? data['data'] as Map<String, dynamic>
              : data;
          return UserModel.fromJson(userData);
        }
        return UserModel(
          id: 'user_1',
          email: email,
          name: email.split('@').first,
          token: 'token_mock',
        );
      } else {
        throw ServerException(
          response.statusMessage ?? 'Failed to authenticate user',
        );
      }
    } on DioException catch (e) {
      final errorMessage = e.response?.data is Map
          ? (e.response?.data['message']?.toString() ?? e.message)
          : e.message;
      throw ServerException(errorMessage ?? 'Network error occurred');
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> register(String name, String email, String password) async {
    try {
      final response = await _dio.post(
        API.REGISTER,
        data: {
          'name': name,
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          final userData = (data['data'] is Map<String, dynamic>)
              ? data['data'] as Map<String, dynamic>
              : data;
          return UserModel.fromJson(userData);
        }
        return UserModel(
          id: 'user_registered',
          email: email,
          name: name,
        );
      } else {
        throw ServerException(
          response.statusMessage ?? 'Failed to register user',
        );
      }
    } on DioException catch (e) {
      final errorMessage = e.response?.data is Map
          ? (e.response?.data['message']?.toString() ?? e.message)
          : e.message;
      throw ServerException(errorMessage ?? 'Network error occurred');
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(e.toString());
    }
  }
}
