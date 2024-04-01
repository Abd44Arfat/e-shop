import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/admin/dashboard_queires.dart';
import 'package:asroo_store/features/admin/dashboard/data/models/categories_number_response.dart';
import 'package:asroo_store/features/admin/dashboard/data/models/porducts_number_response.dart';
import 'package:asroo_store/features/admin/dashboard/data/models/user_number_response.dart';

class DashBoardDataSource {
  const DashBoardDataSource(this._graphQl);

  final ApiService _graphQl;

//Get Number Of Products
  Future<ProductsNumberResponse> numberOfProducts() async {
    final response = await _graphQl
        .numbersOfProduct(DashBoardQueries().numberOfProductsMapQuery());
    return response;
  }

//Get Number Of Categories
  Future<CategoriesNumberResponse> numberOfCategories() async {
    final response = await _graphQl
        .numbersOfCategories(DashBoardQueries().numberOfCategoriesMapQuery());
    return response;
  }


  //Get Number Of Users
  Future<UsersNumberResponse> numberOfUsers() async {
    final response = await _graphQl
        .numbersofUsers(DashBoardQueries().numberOfUsersMapQuery());
    return response;
  }

}
