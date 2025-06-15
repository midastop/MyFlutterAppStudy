import "package:flutter/material.dart";

// image_carousel01를 map 함수로 변경
class ImageCarousel02 extends StatelessWidget {
  const ImageCarousel02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [1, 2, 3, 4, 5, 6, 7,]
            .map(
              (elem) => Image.asset(
                "asset/images/image$elem.jpg",
                fit: BoxFit.cover,)
            )
            .toList(),
      ),
    );
  }
}
