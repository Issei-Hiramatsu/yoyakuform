import 'package:flutter/material.dart';
import 'package:flutter_untitle/third_page.dart';
import 'package:table_calendar/table_calendar.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.text, {Key? key}) : super(key: key);
  final String text;

  final DateTime _focusedDay = DateTime.now();

//種類　日時選択のトップページ
//（予定) ドコモせんたくしてなかったらアラートモーダリ

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('予約フォーム入力'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //各自習室選択の種類選択の部分
                //3つボタン
                children: [
                  SizedBox(
                    width: 100,
                    height: 45,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.yellow, //背景色
                      ),
                      child: const Text('一時的に遷都'),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 45,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('調理'),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 45,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('菓子'),
                    ),
                  ),
                ],
              ),
            ),
            //年月表示
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '2022年 7月',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            //カレンダー表示
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 30.0),
              child: TableCalendar(
                firstDay: DateTime.utc(2022, 6, 1),
                lastDay: DateTime.utc(2022, 8, 31),
                //headerVisible: false, //カレンダーのヘッダー部分を消した
                locale: 'ja_JP',
                focusedDay: DateTime.now(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 30.0),
                  child: Text(
                    '注意事項',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
