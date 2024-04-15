import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/entities/errors.dart';
import 'package:e_commerce/domain/entities/get_cart_response_entity.dart';

abstract class CartRepositoryContract {
  Future<Either<Errors, GetCartResponseEntity>> getCartProducts();
}
