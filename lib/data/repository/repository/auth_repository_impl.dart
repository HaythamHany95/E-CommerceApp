import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/entities/register_response_entity.dart';
import 'package:e_commerce/domain/repository/auth/data_sources/auth_remote_data_source_contract.dart';
import 'package:e_commerce/domain/repository/auth/repository/auth_repository_contract.dart';

class AuthRepositoryImpl implements AuthRepositoryContract {
  AuthRemoteDataSourceContract remoteDataSourceDelegate;

  AuthRepositoryImpl({required this.remoteDataSourceDelegate});

  @override
  Future<Either<Errors, RegisterResponseEntitiy>> register(String? userName,
      String? userPhoneNumber, String? userEmail, String? uesrPassword) {
    return remoteDataSourceDelegate.register(
        userName, userPhoneNumber, userEmail, uesrPassword);
  }
}