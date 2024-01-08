import "package:flutter/material.dart";

// 1-2. 탭 화면 (각 화면 import)
import 'grid_page.dart';
import 'list_page.dart';
/////////////////////////////

// 1-2. 탭 화면 (Stateless -> Stateful)
// - Stateless : 내부의 build() 함수를 한번만 호출
// - Stateful : build() 함수를 원할 때 마다 호출
class MainPage extends StatefulWidget {
  // 1-2. 탭 화면 (_selectedTabIndex 변수 옮김)
  //int _selectedTabIndex = 0;

  // 1-2. 탭 화면 (탭 인덱스 설정)

  /*
  - Stateless -> Stateful 로 바꾸게 되면 createState() 함수가 필요해짐.
  - createState()은 Statefulwidget 객체를 실행할 떄 가장 먼저 실행하는 함수이다.
    "반드시 StatefulWidget 내에서 존재해야만 한다."
  */
  // 1-2. 탭 화면 (createState 함수 추가)
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }

  // 1-2. 탭 화면 (build() 함수를 _MainState로 옮김)
  //Widget build(BuildContext context) {...}
}

// 1-2. 탭 화면 (List, Grid Widget 변환)
Widget _buildPage(index) {
  if (index == 0)
    return ListPage();
  else
    return GridPage();
}

/*
State는 build() 함수를 여러번 호출할 수 있도록 도와주는 객체.
실질적인 build() 함수 관리는 State 에서 진행하게 됨.
 */
// 1-2. 탭 화면 (State 구현)
class _MainPageState extends State<MainPage> {
  // 1-2. 탭 화면 (State 클래스로 _selectedTabIndex 변수 옮김)
  int _selectedTabIndex = 0;

  // 1-2. 탭 화면 (State 클래스로 build() 함수 옮김)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: UI 의 상단 화면
      appBar: AppBar(
        // 1-1. 상단화면 (제목 수정)
        title: const Text('Flutter'),
        // 1-1. 상단화면 (좌측 버튼 추가)
        // 단순 Image 만 보여주는 경우 Icon Widget 으로 처리할 수 있음. Menu 모양(=).
        // leading: Icon(Icons.menu), --> 여기선 필요 없음.
        // 1-1. 상단화면 (우측 팝업 버튼 및 이벤트 추가)
        actions: <Widget>[
          /*
          - icon: 버튼 내에 보여줄 icon widget.
          - onPressed: 버튼을 누를 떄 실행하는 로직. lambda 를 넣을 수 있음.
          - onSelected: 팝업 리스트의 아이템을 선택하면 실행할 내용.
          - itemBuilder: 팝업 아이템 widget 을 배열[] 형태로 명시함.
          */
          PopupMenuButton<int>(
              icon: Icon(Icons.sort),
              onSelected: ((value) {
                if (value == 0) {
                  // 디버깅을 위함. 아이콘을 클릭할 시 cmd 에 글씨 출력됨.
                  print("예매율순");
                } else if (value == 1) {
                  print("큐레이션");
                } else {
                  print("최신순");
                }
              }),
              itemBuilder: (value) {
                return [
                  PopupMenuItem(child: Text("예매율순"), value: 0),
                  PopupMenuItem(child: Text("큐레이션"), value: 1),
                  PopupMenuItem(child: Text("최신순"), value: 2)
                ];
              })
        ],
      ),
      // 1-2. 탭 화면 (List, Grid Widget 연동)
      // body: UI 의 main contents
      body: _buildPage(_selectedTabIndex),
      // 1-2. 탭 화면 (bottomNavigationBar 추가)
      // onTap: 탭을 클릭할 시 실행 (setState 를 통해 UI 활성화 변경)
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.view_list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: 'Grid'),
        ],
        currentIndex: _selectedTabIndex,
        onTap: ((index) {
          // 1-2. 탭 화면 (setState() 설정)
          // setState 를 통해 build 를 다시하게 할 수 있음. (updateWidget)
          setState(() {
            _selectedTabIndex = index;
            print("$_selectedTabIndex Tab Clicked");
          });
        }),
      ),
    );
  }
}
