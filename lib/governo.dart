import 'package:flutter/material.dart';
import 'package:flutter_project2/constant.dart';
import 'package:flutter_project2/governorcategory.dart';

class Governo extends StatelessWidget {
  const Governo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: kDarkBlue.withOpacity(0.3),
          elevation: 0.0,
          leading: BackButton(),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Stack(
                children: const [
                  Image(
                    image: AssetImage('assets/notification.png'),
                    width: 31,
                    height: 31,
                  ),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      radius: 10,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Governor-image.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                left: 0,
                width: MediaQuery.of(context).size.width,
                height: 1000,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(0.99),
                    Colors.black.withOpacity(.25),
                  ])),
                  child: Column(
                    children: <Widget>[],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 15,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return GovernorCategory();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                    color: kDarkPurple,
                    child: Row(
                      children: [
                        Text('Continue'),
                        Icon(Icons.arrow_right_alt_outlined)
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HIS EXCELLENCY',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      'SENATOR',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      'DOUYE DIRI',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
                    ),
                    Text(
                      'THE EXECUTIVE GOVERNOR',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
