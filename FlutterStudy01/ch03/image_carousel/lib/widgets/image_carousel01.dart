import "package:flutter/material.dart";

class ImageCarousel01 extends StatelessWidget {
  const ImageCarousel01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Image.asset("asset/images/image1.jpeg"),
          Image.asset("asset/images/image2.jpeg"),
          Image.asset("asset/images/image3.jpeg"),
          Image.asset("asset/images/image4.jpeg"),
          Image.asset("asset/images/image5.jpeg"),
          Image.asset("asset/images/image6.jpeg"),
          Image.asset("asset/images/image7.jpeg"),
        ],
      ),
    );
  }
}

