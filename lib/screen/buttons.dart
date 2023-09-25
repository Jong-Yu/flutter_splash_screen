import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  // Material State
                  //
                  // hovered - 호버링 상태 (마우스 커서를 올려놓은 상태)
                  // focused - 포커스 됐을떄 (텍스트 필드)
                  // pressed - 눌렸을 때
                  // dragged - 드래그 됐을때
                  // selected - 선택 됐을때 (체크박스, 라디오 버튼)
                  // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을때
                  // disabled - 비활성화 됐을떄
                  // error - 에러상태

                  // 어떠한 상태에서든 같은 style 를 적용하고 싶을 때
                  backgroundColor: MaterialStateProperty.all(
                    Colors.black,
                  ),

                  // 상태에 따라 다른 style 를 적용하고 싶을 때
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }

                    return Colors.red;
                  }),
                ),
                child: Text("ButtonStyle"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // 배경색
                  backgroundColor: Colors.red,
                  // 글자, animation 색상
                  foregroundColor: Colors.black,
                  // 그림자 색상
                  shadowColor: Colors.green,
                  // 3D 입체감의 높이
                  elevation: 10.0,
                  // 글자의 스타일
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  // 버튼 안의 Padding
                  padding: EdgeInsets.all(32.0),
                  // 테두리 스타일
                  side: BorderSide(
                    color: Colors.black,
                    width: 4.0,
                  ),
                ),
                child: Text('ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                ),
                child: Text("OutlinedButton"),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.brown,
                ),
                child: Text("TextButton"),
              ),
            ],
          )),
    );
  }
}
