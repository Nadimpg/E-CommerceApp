import 'package:ecommerceapp/UI/Data/Model/product_slider_model.dart';
import 'package:ecommerceapp/UI/Utiles/app_color.dart';
import 'package:ecommerceapp/UI/Widget/Product_Details/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeBannerSlide extends StatelessWidget {
  HomeBannerSlide({Key? key, required this.productSliderModel})
      : super(key: key);
  final CarouselController _carouselController = CarouselController();
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);
  final ProductSliderModel productSliderModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
              hintText: 'search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.grey,
              )),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12, vertical: 8)),
        ),
        const SizedBox(
          height: 16,
        ),
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
              autoPlay: true,
              reverse: false,
              height: 150,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                _currentSelectedIndex.value = index;
              }),
          items: productSliderModel.data?.map((slider) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 1.0),
                  decoration: BoxDecoration(
                    color: AppColors.PrimaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/nike-shoes.png'),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 6,
        ),
        ValueListenableBuilder(
            valueListenable: _currentSelectedIndex,
            builder: ((context, updateValue, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0;
                      i < (productSliderModel.data?.length ?? 0);
                      i++)
                    Container(
                      margin: EdgeInsets.all(3),
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: i == _currentSelectedIndex.value
                              ? AppColors.PrimaryColor
                              : null,
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey)),
                    )
                ],
              );
            }))
      ],
    );
  }
}
