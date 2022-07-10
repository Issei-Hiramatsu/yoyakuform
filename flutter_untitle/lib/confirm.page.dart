import 'package:flutter/material.dart';

//ここでwidgetを作成
class ConfirmPage extends StatefulWidget {
  @override
  State createState() => _ConfirmPage();
}

//上記で作ったwidgetをstateに入れる
class _ConfirmPage extends State {
  bool isChecked = false; //boolの値が合っているかどうか

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('予約確定ページ'),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                  child: const SizedBox(
                    width: 315,
                    height: 50,
                    child:  Text(
                      '2022年 7月',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                child: SizedBox(
                  width: 320,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'UserID',
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                child: SizedBox(
                  width: 320,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'UserID',
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                child: SizedBox(
                  width: 320,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'UserID',
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                child: SizedBox(
                  width: 320,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'UserID',
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                        unselectedWidgetColor:
                            Colors.orangeAccent), //チェックボックスが押される前の色を決める
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                      child: Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        activeColor: Colors.red,
                        checkColor: Colors.white,
                      ),
                    ),
                  ),
                  const Text('この約束を守れますか？')
                  
                ],
              ),
              
              ElevatedButton(
                onPressed: () {},
                child: const Text('送信')
                )
            ],
          ),
        ));
  }
}
