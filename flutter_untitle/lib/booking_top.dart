import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'confirm.page.dart';

DateTime _focused = DateTime.now();
DateTime? _selected; //

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);
  @override
  State createState() => _BookingPage();
}

class _BookingPage extends State {
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
                          MaterialPageRoute(
                              builder: (context) => ConfirmPage()),
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
            //カレンダー表示
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 30.0),
              child: TableCalendar(
                firstDay: DateTime.utc(2022, 7, 9),
                lastDay: DateTime.utc(2022, 7, 30),
                //headerVisible: false, //カレンダーのヘッダー部分を消した
                locale: 'ja_JP', //日本語化
                headerStyle: const HeaderStyle(
                  titleCentered: true, //年月を中央よせする
                  formatButtonVisible: false, //2weekのボタンをけす
                  titleTextStyle: //タイトルの文字の大きさを変える
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                ),
                selectedDayPredicate: (day) {
                  return isSameDay(_selected, day);
                },
                onDaySelected: (selected, focused) {
                  if (!isSameDay(_selected, selected)) {
                    setState(() {
                      _selected = selected;
                      _focused = focused;
                    });
                  }
                },
                focusedDay: _focused,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 45.0),
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
