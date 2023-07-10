import 'package:ecommerceapp/UI/Data/Model/category_model.dart';
import 'package:ecommerceapp/UI/Data/network_utils.dart';
import 'package:ecommerceapp/UI/Data/urls.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  CategoryModel categoryModel = CategoryModel();
  bool getCategoryInProgress = false;

  Future<bool> getCategories() async {
    getCategoryInProgress = true;
    update();
    final response = await NetworkUtils().getMethod(urls.categoryProductUrl);
    getCategoryInProgress = false;
    if (response != null) {
      categoryModel = CategoryModel.fromJson(response);
      return true;
    } else {
      update();
      return false;
    }
  }
}
