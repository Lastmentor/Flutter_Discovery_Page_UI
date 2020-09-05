import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  final heroTag;

  SecondPage({this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: heroTag,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(heroTag),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 5,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, size: 30, color: Colors.black,),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ),
          Positioned(
            bottom: 15,
            left: 15,
            right: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 3.0,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Container(
                            height: 115,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(heroTag),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("THE LOREM", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5),
                            Row(
                              children: <Widget>[
                                Text("Lorem Ipsum", style: TextStyle(fontSize: 16, color: Colors.grey),),
                                SizedBox(width: 10),
                                Container(
                                  height: 14,
                                  width: 14,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/logo1.jpg'),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 160,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 1,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.attach_money, color: Colors.black.withOpacity(0.6),),
                            Text("1234", style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.6)),),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  FloatingActionButton(
                                    child: Center(
                                      child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
                                    ),
                                    backgroundColor: Color(0xFF916144),
                                    onPressed: () {},
                                    elevation: 0.0,
                                    mini: true,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}