import "package:flutter/material.dart";

// 1-2. 탭 화면 (각 화면 import)

// 1-2. 탭 화면 (Stateless -> Stateful)
class MainPage extends StatelessWidget {
  // 1-2. 탭 화면 (_selectedTabIndex 변수 옮김)

  // 1-2. 탭 화면 (탭 인덱스 설정)

  // 1-2. 탭 화면 (createState 함수 추가)

  // 1-2. 탭 화면 (build() 함수를 _MainState로 옮김)
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
              onSelected: (value) {
                if (value == 0) {
                  // 디버깅을 위함. 아이콘을 클릭할 시 cmd 에 글씨 출력됨.
                  print("예매율순");
                } else if (value == 1) {
                  print("큐레이션");
                } else {
                  print("최신순");
                }
              },
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
      body: const Center(child: Text("Hello Flutter")),
      // 1-2. 탭 화면 (bottomNavigationBar 추가)
    );
  }
}

// 1-2. 탭 화면 (State 구현)
