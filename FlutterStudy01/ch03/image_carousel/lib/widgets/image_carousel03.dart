import "dart:async";
import "package:flutter/material.dart";

// image_carousel02에서 타이머를 활용해 자동으로 캐러셀 되도록 추가
// 타이머를 사용해 자동으로 상태가 변경되도록 구현하기 위해서 StatefulWidget을 사용해야 함
class ImageCarousel03 extends StatefulWidget {
  const ImageCarousel03({super.key});

  @override
  State<ImageCarousel03> createState() => _ImageCarousel03State();
}

class _ImageCarousel03State extends State<ImageCarousel03> {
  PageController pageController = PageController();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    // 타이머를 사용해 3초마다 이미지를 캐러셀 시킨다.
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      int currentPage = pageController.page!.toInt();
      int nextPage = currentPage + 1;
      if (nextPage >= 7) {
        nextPage = 0;
      }
      // Coves는 애니메이션 효과를 어떻게 진행할지를 지정하는 파라미터
      // https://api.flutter.dev/flutter/animation/Curves-class.html
      pageController.animateToPage(
        nextPage,
        duration: Duration(microseconds: 500),
        curve: Curves.linear, // 애니메이션 진행 타입
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1, 2, 3, 4, 5, 6, 7]
            .map(
              (elem) =>
                  Image.asset("asset/images/image$elem.jpg", fit: BoxFit.cover),
            )
            .toList(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    
    // 캐러셀 앱이 종료될 때 타이머와 컨트로러를 종료
    if(timer != null) {
      timer!.cancel();
    }
    pageController.dispose();
  }
}
