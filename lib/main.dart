import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 26, 36, 46),
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: const [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Tab(
                  child: Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Tab(
                  child: Text(
                    "TV Shows",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Tab(
                  child: Text(
                    "Movies",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Tab(
                  child: Text(
                    "Kids",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/logo.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight / 4,
                  child: PageView(
                    controller: controller,
                    children: [
                      Container(
                        child: Image.asset(
                          "images/tomorrow_war.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "images/acw.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Amazon Originals and Exclusives",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight / 50,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 9,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/infinite.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/theexpanse.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/without_remorse.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recommended TV",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight / 50,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 9,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/soz.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/grand_tour.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/ftwd.jpg"),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/tomorrow_war.jpeg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Top Movies",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight / 50,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 9,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/dw.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/aokn.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/acw.jpg"),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/tomorrow_war.jpeg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "TV and movies with audio",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight / 50,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 9,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/tomorrow_war.jpeg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/tomorrow_war.jpeg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/tomorrow_war.jpeg"),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/tomorrow_war.jpeg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade800,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(color: Colors.white),
            ),
            iconTheme: MaterialStateProperty.all(
              IconThemeData(color: Colors.white),
            ),
          ),
          child: NavigationBar(
            backgroundColor: Colors.black,
            height: 60,
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              NavigationDestination(icon: Icon(Icons.search), label: "Find"),
              NavigationDestination(
                  icon: Icon(Icons.download), label: "Downloads"),
              NavigationDestination(
                  icon: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Icon(Icons.person),
                  ),
                  label: "My Stuff"),
            ],
          ),
        ),
      ),
    );
  }
}
