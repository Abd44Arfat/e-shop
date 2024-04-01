import 'package:asroo_store/core/service/graphql/api_result.dart';
import 'package:asroo_store/features/admin/dashboard/data/data_source/dashboard_data_source.dart';
import 'package:asroo_store/features/admin/dashboard/data/models/categories_number_response.dart';
import 'package:asroo_store/features/admin/dashboard/data/models/porducts_number_response.dart';
import 'package:asroo_store/features/admin/dashboard/data/models/user_number_response.dart';

class DashBoardRepo {
  DashBoardRepo(this._dataSource);

  final DashBoardDataSource _dataSource;

  //Get Numbers Of Products

  Future<ApiResult<ProductsNumberResponse>> numberOfProducts() async {
    try {
      final response = await _dataSource.numberOfProducts();
      return ApiResult.success(response);
    } catch (e) {

return const ApiResult.failure('Please, try agian we have error');

    }
  }

  //Get Numbers Of Categories
Future<ApiResult<CategoriesNumberResponse>>  numberOfCategories() async {

    try {
      final response = await _dataSource.numberOfCategories();
      return ApiResult.success(response);
    } catch (e) {

return const ApiResult.failure('Please, try agian we have error');

    }
    
  }
  //Get Numbers Of Users
Future<ApiResult<UsersNumberResponse>>  numberOfUsers() async {

    try {
      final response = await _dataSource.numberOfUsers();
      return ApiResult.success(response);
    } catch (e) {

return const ApiResult.failure('Please, try agian we have error');

    }

  }
}
