import 'package:ecommerceapp/UI/Data/Model/product_slider_model.dart';
import 'package:ecommerceapp/UI/Data/network_utils.dart';
import 'package:ecommerceapp/UI/Data/urls.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ProductSliderModel productSliderModel = ProductSliderModel();
  bool getProductSliderInprogress = false;

  Future<bool> getProductSliderList() async {
    getProductSliderInprogress = true;
    update();
    final result = await NetworkUtils().getMethod(urls.productSliderUrl);
    getProductSliderInprogress = false;
    if (result != null) {
      productSliderModel = ProductSliderModel.fromJson(result);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
