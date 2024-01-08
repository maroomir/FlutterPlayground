import 'dart:ffi';

import 'package:flutter/material.dart';

// 1-3. 리스트 화면 (임포트)
class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1-3. 리스트 화면 (동적 데이터 추가)

    // 1-3. 리스트 화면 (초기 리스트 구현)
    /*
    - ListView.children: ListView 에 들어가게 될 List (Widget 집합)
    - ListView.seperated
      1) seperatorBuilder: 구분선 생성
      2) itemCount: 리스트 아이템 전체 개수
      3) itemBuilder: 리스트 아이템(Widget)을 생성해주는 함수.
    */
    return ListView.separated(
        separatorBuilder: ((_, index) => Divider(color: Colors.grey)),
        // 1-3. 리스트 화면 (동적 테이터 호출2)
        itemCount: 8,
        itemBuilder: ((context, index) {
          // 1-3. 리스트 화면 (동적 데이터 호출3)
          return _buildDummyItem();
          // 1-5. 상세 화면 연결 (InkWell 사용)
        }));
  }

  // 1-3. 리스트 화면 (고정 더미 데이터) - 1
  /* 
  - Container: 하위 Widget 을 가질 수 있으며, 다양한 작업을 한꺼번에 수행 가능.
  - Row, Column : 하위 Widget 을 수평 또는 수직으로 정렬함.
  - Image : 이미지를 보여주는 Widget
  - NetworkImage : 네트워크(http) 상에서 가져온 이미지를 보여주는 Widget.
  - SizedBox : 고정된 너비(widget), 높이(height)를 가지는 Widget.
  */
  Widget _buildDummyItem() {
    // Container Widget 을 여기로 옮긴다.  - 2
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
                'https://raw.githubusercontent.com/riflockle7/ref/master/1.%20ImageRef/padakpadak/1.jpg',
                height: 120),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('신과함께-죄와벌',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(width: 8),
                        // 1-3. 리스트 화면 (UI 변경 제안 대처)
                        _buildGradeImage(12),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text('평점 : 139'),
                        SizedBox(width: 10),
                        Text('예매순위 : 1'),
                        SizedBox(width: 10),
                        Text('예매율 : 35.5')
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('개봉일 : 2017-12-20')
                  ],
                ))
          ]),
    );
  }

  // 1-3. 리스트 화면 (관람 등급 이미지 버튼 함수 생성)
  Widget _buildGradeImage(int grade) {
    switch (grade) {
      case 12:
        // 주의: pubspec.yaml 에 들어가있는 asset 만 들어갈 수 있음.
        return Image.asset("assets/ic_12.png");
      case 15:
        return Image.asset("assets/ic_15.png");
      case 19:
        return Image.asset("assets/ic_19.png");
      default:
        return Image.asset("assets/ic_allages.png");
    }
  }
}

// 1-3. 리스트 화면 (고정 더미 데이터)

// 1-3. 리스트 화면 (동적 데이터 호출1)

// 1-3. 리스트 화면 (관람 등급 이미지 버튼 함수 생성)
