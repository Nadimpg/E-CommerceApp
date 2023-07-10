class urls {
  static const String baseurl = 'https://craftybay.teamrabbil.com/api';
  static const String productSliderUrl = '$baseurl/ListProductSlider';
  static const String categoryProductUrl = '$baseurl/CategoryList';
  static String productByRemarksUrls(String remarks) =>
      '$baseurl/CategoryList/ListProductByRemark/$remarks';
}
