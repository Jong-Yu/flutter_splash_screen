import 'package:flutter/material.dart';

class MeetDates extends StatefulWidget {
  const MeetDates({super.key});

  @override
  State<MeetDates> createState() => _MeetDatesState();
}

class _MeetDatesState extends State<MeetDates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        bottom: false,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            _TopPart(),
            _BottomPart(),
          ]),
        ),
      ),
    );
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'U&I',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'parisienne',
              fontSize: 80.0,
            ),
          ),
          Column(
            children: [
              Text(
                '우리 처음 만난날',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sonflower',
                  fontSize: 30.0,
                ),
              ),
              Text(
                '2023.09.22',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sonflower',
                  fontSize: 20.0,
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
            color: Colors.red,
            iconSize: 60.0,
          ),
          Text(
            'D+1',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'sonflower',
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'asset/img/middle_image.png',
      ),
    );
  }
}
