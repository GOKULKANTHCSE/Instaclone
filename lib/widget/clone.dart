import 'dart:ui';

import 'package:flutter/material.dart';

class Clone extends StatelessWidget {
  const Clone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Asta',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        // color: Colors.pink,
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  // width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 170,
                              // color: Colors.pink,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIxABSF0lqhTNMoYUHeYCAlOdarZ9-u1F2Gg&s"),
                                  ),
                                  Text(
                                    'Asta. G',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Wizard king',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.pinkAccent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    profileColumn('1000', 'Posts'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    profileColumn('10M', 'Followers'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    profileColumn('10k', 'Following'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 45,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Follow',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        size: 25,
                                        color: Colors.blue,
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blue, width: 2),
                                          shape: BoxShape.circle),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // color: Colors.green,
                ),
                Container(
                  // width: MediaQuery.of(context).size.width,
                  height: 120,
                  // color: Colors.blue,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://s1.zerochan.net/Yuno.%28Black.Clover%29.600.2697723.jpg')),
                              shape: BoxShape.circle,
                              // color: Colors.blue,
                            ),
                          ),
                          Text('Bro'),
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  // width: MediaQuery.of(context).size.width,
                  height: 75,
                  // color: Colors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.grid_on_outlined,
                        size: 50,
                      ),
                      Divider(),
                      Icon(
                        Icons.video_collection,
                        size: 50,
                      ),
                      Divider(),
                      Icon(
                        Icons.contacts,
                        size: 50,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    // color: Colors.yellow,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMUf5CWMCygVQ-cArMjMej_EynoGRaT32Y0Q&s')),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.all(5),
                          height: 150,
                          width: 150,
                          // color: Colors.red,
                        );
                      },
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  Widget profileColumn(String text1, text2) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(text2, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
