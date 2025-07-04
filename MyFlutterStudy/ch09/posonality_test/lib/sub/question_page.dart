import "dart:convert";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:firebase_analytics/firebase_analytics.dart";
import "../detail/detail_page.dart";

class QuestionPage extends StatefulWidget {
  //final String question;
  final Map<String, dynamic> question;
  const QuestionPage({super.key, required this.question});

  @override
  State<StatefulWidget> createState() {
    return _QuestionPage();
  }
}

class _QuestionPage extends State<QuestionPage> {
  String title = "";
  int selectNumber = -1;

  /*
  Future<String> loadAsset(String fileName) async {
    return await rootBundle.loadString("res/api/$fileName.json");
  }
  */
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = List<Widget>.generate(
      (widget.question["selects"] as List<dynamic>).length,
      (int index) => SizedBox(
        height: 100,
        child: Column(
          children: [
            Text(widget.question["selects"][index]),
            Radio(
              value: index,
              groupValue: selectNumber,
              onChanged: (value) {
                setState(() {
                  selectNumber = index;
                });
              },
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Text(widget.question["question"].toString()),
          Expanded(
            child: ListView.builder(
              itemCount: widgets.length,
              itemBuilder: (context, index) {
                final item = widgets[index];
                return item;
              },
            ),
          ),
          selectNumber == -1
              ? Container()
              : ElevatedButton(
              onPressed: () async {
                await FirebaseAnalytics.instance.logEvent(
                  name: "personal_select",
                  parameters: {"test_name": title, "select": selectNumber},
                ).then((result) =>
                {
                  // 상세페이지(결과) 페이지로 이동하기
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return DetailPage(
                      answer: widget.question["answer"][selectNumber],
                      question: widget.question["question"],
                    );
                  }),
                  ),
                });
              },
              child: const Text("성격 보기")
          ),
        ],
      ),
    );
  }
}