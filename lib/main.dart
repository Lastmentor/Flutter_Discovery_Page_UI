import 'package:flutter/material.dart';
import 'package:flutter_discovery_app/SecondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Discovery", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.grey, size: 28),
            onPressed: null,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10),
              children: <Widget>[
                listItem('images/image2.jpg', 'images/logo2.jpg'),
                SizedBox(width: 25),
                listItem('images/image3.jpg', 'images/logo3.jpg'),
                SizedBox(width: 25),
                listItem('images/image4.jpg', 'images/logo4.jpg'),
                SizedBox(width: 25),
                listItem('images/image1.jpg', 'images/logo1.jpg'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 4.0,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage('images/image2.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width - 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Scarlett", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 2),
                                  Text("17 mins ago", style: TextStyle(fontSize: 12, color: Colors.grey),),
                                ],
                              ),
                              Icon(Icons.more_vert, color: Colors.grey.withOpacity(0.5), size: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondPage(heroTag: 'images/center1.jpg')
                            ));
                          },
                          child: Hero(
                            tag: 'images/center1.jpg',
                            child: Container(
                              height: 200,
                              width: (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: AssetImage('images/center1.jpg'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SecondPage(heroTag: 'images/center2.jpg')
                                ));
                              },
                              child: Hero(
                                tag: 'images/center2.jpg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: DecorationImage(
                                          image: AssetImage('images/center2.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SecondPage(heroTag: 'images/center3.jpg')
                                ));
                              },
                              child: Hero(
                                tag: 'images/center3.jpg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: DecorationImage(
                                          image: AssetImage('images/center3.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xFFF1ECE9)
                          ),
                          child: Center(
                            child: Text("# Lorem Ipsum", style: TextStyle(fontSize: 10, color: Color(0xFF976749)),),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFF1ECE9)
                          ),
                          child: Center(
                            child: Text("Lorem", style: TextStyle(fontSize: 10, color: Color(0xFF976749)),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Icon(Icons.reply, color: Colors.grey.withOpacity(0.5),),
                        SizedBox(width: 5),
                        Text("2.5k", style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 15),
                        Icon(Icons.comment, color: Colors.grey.withOpacity(0.5),),
                        SizedBox(width: 5),
                        Text("625", style: TextStyle(color: Colors.grey),),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(Icons.favorite, color: Colors.red),
                              SizedBox(width: 5),
                              Text("2.1k", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home, color: Colors.black)),
            Tab(icon: Icon(Icons.play_circle_outline, color: Colors.grey)),
            Tab(icon: Icon(Icons.location_on, color: Colors.grey)),
            Tab(icon: Icon(Icons.blur_circular, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget listItem(String imgPath, String logo){
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37.5),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover
                )
              ),
            ),
            Positioned(
              top: 50,
              left: 60,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.5),
                  image: DecorationImage(
                    image: AssetImage(logo),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          margin: EdgeInsets.only(left: 13),
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF976749)
          ),
          child: Center(
            child: Text("Follow", style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),),
          ),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

