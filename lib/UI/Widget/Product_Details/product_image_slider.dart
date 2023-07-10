import 'package:ecommerceapp/UI/Utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductImageSlider extends StatelessWidget {
  final CarouselController _carouselController = CarouselController();
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 4,
        ),
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
              height: 220,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                _currentSelectedIndex.value = index;
              }),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/nike-shoes.png'),
                            fit: BoxFit.cover)),
                    alignment: Alignment.center,
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 6,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ValueListenableBuilder(
                    valueListenable: _currentSelectedIndex,
                    builder: ((context, updateValue, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 5; i++)
                            Container(
                              margin: EdgeInsets.all(3),
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: i == _currentSelectedIndex.value
                                      ? AppColors.PrimaryColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(color: Colors.white)),
                            )
                        ],
                      );
                    })),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
