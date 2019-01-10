import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Discovery(),
    );
  }
}

class Discovery extends StatefulWidget {
  @override
  _DiscoveryState createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> with SingleTickerProviderStateMixin{

  TabController controller;
  int _selectedIndex = 1;
  
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: new Text('Discovery',style: new TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.camera_alt),
              color: Colors.grey,
              iconSize: 28,
              onPressed: null
          )
        ],
      ),
      body: new ListView(
        padding: new EdgeInsets.only(top: 10, bottom: 10),
        children: <Widget>[
          new Container(
            height: 150,
            width: double.infinity,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              padding: new EdgeInsets.all(10),
              children: <Widget>[
                listItem('images/image2.jpg', 'images/logo2.jpg'),
                new SizedBox(width: 15),
                listItem('images/image3.jpg', 'images/logo3.jpg'),
                new SizedBox(width: 15),
                listItem('images/image4.jpg', 'images/logo4.jpg'),
                new SizedBox(width: 15),
                listItem('images/image1.jpg', 'images/logo1.jpg'),
              ],
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(15),
            child: new Material(
              borderRadius: new BorderRadius.circular(15),
              elevation: 4.0,
              child: new Container(
                width: double.infinity,
                padding: new EdgeInsets.all(15),
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(15),
                    color: Colors.white
                ),
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Container(
                          height: 50,
                          width: 50,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(25),
                            image: new DecorationImage(
                                image: new AssetImage('images/image2.jpg'),
                                fit: BoxFit.cover
                            )
                          ),
                        ),
                        new SizedBox(width: 10),
                        new Container(
                          width: MediaQuery.of(context).size.width - 120,
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Text('Scarlett', style: new TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.bold)),
                                  new SizedBox(height: 2),
                                  new Text('17 mins ago', style: new TextStyle(fontFamily: 'Montserrat', fontSize: 12, color: Colors.grey)),
                                ],
                              ),
                              new Icon(
                                Icons.more_vert,
                                color: Colors.grey.withOpacity(0.5),
                                size: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    new SizedBox(height: 15),
                    new Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: new TextStyle(fontFamily: 'Montserrat', fontSize: 12, color: Colors.grey),
                    ),
                    new SizedBox(height: 10),
                    new Row(
                      children: <Widget>[
                        new InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SecondPage(heroTag: 'images/center1.jpg', selectedIndex: _selectedIndex)
                            ));
                          },
                          child: new Hero(
                              tag: 'images/center1.jpg',
                              child: new Container(
                                height: 200,
                                width: (MediaQuery.of(context).size.width - 50.0) / 2,
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new AssetImage('images/center1.jpg'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              )
                          ),
                        ),
                        new SizedBox(width: 10.0),
                        new Column(
                          children: <Widget>[
                            new InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = 2;
                                });
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SecondPage(heroTag: 'images/center2.jpg', selectedIndex: _selectedIndex)
                                ));
                              },
                              child: new Hero(
                                  tag: 'images/center2.jpg',
                                  child: new Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width - 100.0) / 2,
                                    decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      image: new DecorationImage(
                                          image: new AssetImage('images/center2.jpg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            new SizedBox(height: 10.0),
                            new InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = 3;
                                });
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SecondPage(heroTag: 'images/center3.jpg', selectedIndex: _selectedIndex)
                                ));
                              },
                              child: new Hero(
                                  tag: 'images/center3.jpg',
                                  child: new Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width - 100.0) / 2,
                                    decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      image: new DecorationImage(
                                          image: new AssetImage('images/center3.jpg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    new SizedBox(height: 15),
                    new Row(
                      children: <Widget>[
                        new Container(
                          height: 25,
                          width: 100,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Color(0xFFF1ECE9)
                          ),
                          child: new Center(
                            child: new Text('# Lorem Ipsum',style: new TextStyle(fontFamily: 'Montserrat', fontSize: 10.0, color: Color(0xFF976749))),
                          ),
                        ),
                        new SizedBox(width: 10),
                        new Container(
                          height: 25,
                          width: 75,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Color(0xFFF1ECE9)
                          ),
                          child: new Center(
                            child: new Text('# Lorem',style: new TextStyle(fontFamily: 'Montserrat', fontSize: 10.0, color: Color(0xFF976749))),
                          ),
                        ),
                      ],
                    ),
                    new SizedBox(height: 15),
                    new Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    new SizedBox(height: 15),
                    new Row(
                      children: <Widget>[
                        new Icon(
                            Icons.reply,
                            color: Colors.grey.withOpacity(0.5),
                        ),
                        new SizedBox(width: 5.0),
                        new Text('2.5k', style: new TextStyle(fontFamily: 'Montserrat', color: Colors.grey)),
                        new SizedBox(width: 15),
                        new Icon(
                          Icons.comment,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        new SizedBox(width: 5.0),
                        new Text('625', style: new TextStyle(fontFamily: 'Montserrat', color: Colors.grey)),
                        new Expanded(
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                new SizedBox(width: 5),
                                new Text('2.1k', style: new TextStyle(fontFamily: 'Montserrat', color: Colors.grey)),
                              ],
                            )
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
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            tabs: [
              new Tab(icon: new Icon(Icons.home, color: Colors.black)),
              new Tab(icon: new Icon(Icons.play_circle_outline, color: Colors.grey)),
              new Tab(icon: new Icon(Icons.location_on, color: Colors.grey)),
              new Tab(icon: new Icon(Icons.blur_circular, color: Colors.grey)),
            ]
        ),
      ),
    );
  }

  Widget listItem(String imgPath, String logo){
    return Column(
      children: <Widget>[
        new Stack(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.only(left: 10),
              height: 75,
              width: 75,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(37.5),
                image: new DecorationImage(
                    image: new AssetImage(imgPath),
                    fit: BoxFit.cover
                )
              ),
            ),
            new Positioned(
                top: 50,
                left: 60,
                child: new Container(
                  height: 25,
                  width: 25,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(12.5),
                    image: new DecorationImage(
                        image: new AssetImage(logo),
                        fit: BoxFit.cover
                    )
                  ),
                )
            )
          ],
        ),
        new SizedBox(
          height: 15,
        ),
        new Container(
          margin: new EdgeInsets.only(left: 13),
          height: 30,
          width: 75,
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(15),
            color: Color(0xFF976749)
          ),
          child: new Center(
            child: new Text("Follow", style: new TextStyle(fontFamily: 'Montserrat', fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }

}

class SecondPage extends StatelessWidget {

  final heroTag;
  final selectedIndex;

  SecondPage({this.heroTag, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Hero(
              tag: heroTag,
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(heroTag), fit: BoxFit.cover
                    )
                ),
              )
          ),
          new Positioned(
              top: 40,
              left: MediaQuery.of(context).size.width - 195,
              child: new Text(
                selectedIndex.toString() + ' / 3',
                style: new TextStyle(fontFamily: 'Montserrat', color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
              )
          ),
          new Positioned(
              top: 30,
              left: 5,
              child: new Row(
                children: <Widget>[
                  new IconButton(
                      icon: new Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ],
              )
          ),
          new Positioned(
            bottom: 15.0,
            left: 15.0,
            right: 15.0,
            child: new Material(
              borderRadius: new BorderRadius.circular(10.0),
              elevation: 3.0,
              child: new Container(
                height: 200.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.white
                ),
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.all(15.0),
                          child: new Container(
                            height: 115.0,
                            width: 100.0,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(10.0),
                                image: new DecorationImage(
                                    image: new AssetImage(heroTag),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'THE LOREM',
                              style: new TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(height: 5.0),
                            new Row(
                              children: <Widget>[
                                new Text(
                                  'Lorem Ipsum',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16.0,
                                      color: Colors.grey),
                                ),
                                new SizedBox(width: 10),
                                new Container(
                                  height: 14,
                                  width: 14,
                                  decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                          image: new AssetImage('images/logo1.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                )
                              ],
                            ),
                            new SizedBox(height: 10.0),
                            new Container(
                              height: 30.0,
                              width: MediaQuery.of(context).size.width - 160.0,
                              child: new Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                style: new TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    new Container(
                      width: MediaQuery.of(context).size.width - 60.0,
                      height: 1.0,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    new Padding(
                        padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 5.0),
                        child: Container(
                            width: double.infinity,
                            child: Row(                               
                                children: <Widget>[
                                  new Icon(Icons.attach_money, color: Colors.black.withOpacity(0.6)),
                                  new Text(
                                    '1234',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                      color: Colors.black.withOpacity(0.6)
                                    ),
                                  ),
                                  new Expanded(
                                          child: new Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              new FloatingActionButton(
                                                child: Center(
                                                  child: Icon(Icons.arrow_forward_ios,
                                                      color: Colors.white,
                                                      size: 15.0
                                                  ),
                                                ),
                                                backgroundColor: Color(0xFF916144),
                                                onPressed: () {},
                                                elevation: 0.0,
                                                mini: true,
                                              )
                                              ],
                                          )
                                      )
                                ]
                            )
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
          new Positioned(
            left: 50.0,
            top: MediaQuery.of(context).size.height / 2,
            child: new Container(
              height: 35.0,
              width: 135.0,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(5.0),
                  color: Colors.black.withOpacity(0.7)
              ),
              child: new Center(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Text('THE LOREM',
                        style: new TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      new Icon(Icons.arrow_forward_ios, color: Colors.white, size: 17.0)
                    ],
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}





