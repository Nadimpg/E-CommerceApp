import 'dart:developer';

import 'package:ecommerceapp/UI/Data/Model/product_model.dart';
import 'package:ecommerceapp/UI/Data/network_utils.dart';
import 'package:ecommerceapp/UI/Data/urls.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  ProductModel popularproductmodel = ProductModel();
  ProductModel specialproductmodel = ProductModel();
  ProductModel newproductmodel = ProductModel();
  bool popularInProgress = false;
  bool specialInProgress = false;
  bool newInProgress = false;

  Future<bool> getPopularProducts() async {
    popularInProgress = true;

    update();
    final response =
        await NetworkUtils().getMethod(urls.productByRemarksUrls('Popular'));
    log(response.runtimeType.toString());

    popularInProgress = false;
    if (response != null && response["msg"] == "success") {
      popularproductmodel = ProductModel.fromJson(response);
      log('popular log=> ${popularproductmodel.data?.length}');
      update();
      return true;
    } else {
      update();
      return false;
    }
  }

  Future<bool> getSpecialProducts() async {
    specialInProgress = true;

    update();
    final response =
        await NetworkUtils().getMethod(urls.productByRemarksUrls('Special'));

    popularInProgress = false;
    if (response != null && response["msg"] == "success") {
      specialproductmodel = ProductModel.fromJson(response);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }

  Future<bool> getNewProducts() async {
    newInProgress = true;

    update();
    final response =
        await NetworkUtils().getMethod(urls.productByRemarksUrls('New'));

    popularInProgress = false;
    if (response != null && response["msg"] == "success") {
      newproductmodel = ProductModel.fromJson(response);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
