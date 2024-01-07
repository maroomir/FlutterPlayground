import 'package:flutter/material.dart';
import 'package:padak_starter/main_page.dart';

// main 함수. 프로그램의 시작점.
void main() => runApp(MyApp());

/*
- State: widget 의 현재 상태 변경을 도와주는 개념
- StatelessWidget : 단 한번만 build() 함수 실행
- StatefulWidget : setState() 를 실행할 때마다 build() 함수 실행
참고로 widget 은 기본적으로 불변한다는 특성을 갖고 있음. 따라서 성능적으로 가벼움.
*/
class MyApp extends StatelessWidget {
  // widget 객체를 build 해서 return 함
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
