import 'package:flutter/material.dart';
import 'package:flutter_untitle/second_page.dart';

class FirstPage extends StatelessWidget {
  String nameText = '';
  //変数を入力

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 150, bottom: 20, right: 30, left: 30),
              child: TextField(
                onChanged: (text) {
                  nameText = text;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'UserID',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 20, right: 30, left: 30),
              child: TextField(
                onChanged: (text) {
                  nameText = text;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 20, right: 30, left: 30),
              child: SizedBox(
                width: 250, //横幅
                height: 50, //高さ
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(nameText),
                      ),
                    );
                  },
                  child: const Text('ログイン'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
