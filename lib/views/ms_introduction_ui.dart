// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motorshow_project/views/ms_home_ui.dart';

class MsIntroductionUI extends StatefulWidget {
  const MsIntroductionUI({super.key});

  @override
  State<MsIntroductionUI> createState() => _MsIntroductionUIState();
}

class _MsIntroductionUIState extends State<MsIntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.orangeAccent,
        scrollPhysics: BouncingScrollPhysics(),
        skipOrBackFlex: 0,
        pages: [
          PageViewModel(
            titleWidget: Text(
              'Toyota',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.04,
                color: Colors.red,
              ),
            ),
            bodyWidget: Text(
              'Consectetur dolor fugiat do duis aliqua do duis nostrud\n\n⚜ consequat.Anim id veniam nostrud labore duis incididunt ea ad.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            image: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/car1.jpg',
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.22,
                  fit: BoxFit.cover,
                )),
          ),
          PageViewModel(
            titleWidget: Text(
              'GWM',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.04,
                color: Colors.red,
              ),
            ),
            bodyWidget: Text(
              'Consectetur dolor fugiat do duis aliqua do duis nostrud\n\n⚜ consequat.Anim id veniam nostrud labore duis incididunt ea ad.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            image: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/car2.jpg',
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.22,
                  fit: BoxFit.cover,
                )),
          ),
          PageViewModel(
            titleWidget: Text(
              'Honda',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.04,
                color: Colors.red,
              ),
            ),
            bodyWidget: Text(
              'Consectetur dolor fugiat do duis aliqua do duis nostrud\n\n⚜ consequat.Anim id veniam nostrud labore duis incididunt ea ad.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            image: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/car3.jpg',
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.22,
                  fit: BoxFit.cover,
                )),
          ),
          PageViewModel(
            titleWidget: Text(
              'Jeep',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.04,
                color: Colors.red,
              ),
            ),
            bodyWidget: Text(
              'Consectetur dolor fugiat do duis aliqua do duis nostrud\n\n⚜ consequat.Anim id veniam nostrud labore duis incididunt ea ad.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            image: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/car4.jpg',
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.22,
                  fit: BoxFit.cover,
                )),
          ),
          PageViewModel(
            titleWidget: Text(
              'BMW',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.04,
                color: Colors.red,
              ),
            ),
            bodyWidget: Text(
              'Consectetur dolor fugiat do duis aliqua do duis nostrud\n\n⚜ consequat.Anim id veniam nostrud labore duis incididunt ea ad.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            image: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/car5.jpg',
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.22,
                  fit: BoxFit.cover,
                )),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'Skip/ข้าม',
          style: TextStyle(color: Colors.deepOrange),
        ),
        onSkip: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MsHomeUI(),
            ),
          );
        },
        done: Text(
          'Start/เริ่ม',
          style: TextStyle(color: Colors.deepOrange),
        ),
        onDone: () {
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MsHomeUI(),
            ),
          );
        },
        next: Icon(
          Icons.arrow_forward,
          color: Colors.deepOrange,
        ),
        nextFlex: 0,
        dotsDecorator: DotsDecorator(
          activeColor: Colors.deepOrange,
        ),
      ),
    );
  }
}
