import 'package:flutter/material.dart';
// import 'package:project_test/pages/course.dart';
// import 'package:project_test/pages/message.dart';
// import 'package:project_test/pages/profile.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  header(),
                  box(),
                  card(),
                  content(),
                  card2(),
                          ],
                        ),
                      ),
              ),
                ],
                  ),
                );
  }

  Widget card2(){
    return(
        Padding(
                  padding: const EdgeInsets.all(0.12),
                  child: Stack(
                    children: [
                      Container(
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                      ),
                    ],
                  ),
        )
    );
  }

  Widget content(){
    return(
        Padding(
          padding: const EdgeInsets.all(0.8),
          child: Row(
            children: [
          Expanded(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
            'Learning Plan',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
              Text(
                'Learning Plan',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],),),
    ]
          )
        )
        );
  }

  Widget card(){
    return(
        GridView.builder(
            itemCount: 2,
            shrinkWrap: true,
            padding: EdgeInsets.all(16),
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.7,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              return
                Padding(
                  padding: const EdgeInsets.all(0.12),
                  child: Stack(
                    children: [
                      Container(
                        width: 300,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlueAccent,
                        ),
                        child: Image.asset(
                          'assets/images/Illustration_04.jpg',
                          height: 100,
                          width: 100,
                              )
                            ),
                          ],
                        ),
                      );
                  }
              )
                    );
                }

  Widget box(){
    return(
        Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: const Offset(
                  1.0,
                  1.0,
                ), //Offset
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
              ),
              Text(
                'Learned today',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
    );
  }

  Widget header() {
    return
      Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Joko',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Lets start learning',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            backgroundImage:
            AssetImage(
                "assets/images/Avatar_03.jpg"),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 50,
              width: 46,
            ),
          ),
        ],
      ),
    );
  }

  Widget background(){
    return Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
    );
  }
}