import 'package:dart_week_app/app/models/product_model.dart';

abstract class ProductsRepository {
  Future<List<ProductModel>> fidAllProducts();
}
