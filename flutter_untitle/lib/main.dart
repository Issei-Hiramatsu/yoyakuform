import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart'; //intlインポートする
import 'login_page.dart';

void main() {
  runApp(const MyApp());
  initializeDateFormatting('ja')
      .then((_) => runApp(const MyApp())); //上の記述をこちらに変更します
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
