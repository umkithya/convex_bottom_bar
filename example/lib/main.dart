import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
     
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,

        shadowColor: Colors.red,
        activeColor: Colors.green,
        // top: -30,

        color: Colors.deepPurple,
        cornerRadius: 12,
        backgroundColor: Colors.white,
        height: 60,

        curveSize: 80,

        top: -25,
        items: [
          TabItem(
            icon: Icon(Icons.home),
            activeIcon:  Icon(Icons.home_filled),
          ),
          TabItem(
            icon: Icon(Icons.search),
            activeIcon:  Icon(Icons.search,color: Colors.green,),
          ),
          TabItem(
            icon: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: const Alignment(0.991, -0.253),
                  end: const Alignment(-1.8, 0.6),
                  colors: <Color>[
                    const Color(0xffac065f),
                    const Color(0xff791162),
                    const Color(0xce49004b).withOpacity(.95)
                  ],
                  stops: const <double>[0, 0.316, 1],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Icon(Icons.qr_code_scanner_outlined,color: Colors.white,),
                  const SizedBox(height: 3),
                  Text(
                    "Check in",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          TabItem(
            icon: Icon(Icons.notifications_outlined),
            activeIcon:Icon(Icons.notifications),
          ),
          TabItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings_outlined),),],
        
        onTap: (int i) => print('click index=$i'),)
      
     
    );
  }
}
