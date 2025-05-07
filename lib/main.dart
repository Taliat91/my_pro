
import 'package:flutter/material.dart';

import 'work_page.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
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
  // int _counter = 0;


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        actions: [
          GestureDetector(
            onDoubleTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return WorkPage();
            }));
            },
          child: Text('WORK', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: 25),
        GestureDetector(
          onTap: () {
          
          },
          child: Text('ABOUT', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        )

        ],
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('TALIAT TAO',  style:TextStyle(color:Colors.black,fontSize: 25, fontWeight:FontWeight.bold,  ) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: sort_child_properties_last
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle,
              // ignore: unnecessary_string_escapes
              image: DecorationImage(image: AssetImage('assets/png/Abubakry02.jpg'), fit: BoxFit.cover)),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 250,
              child: Column(
                children: [
                  Text('Snr. Mobile Developer', textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
                  
                  ),
                  SizedBox(height: 10),
                   Text('Currently leading the design & strategy of Crosby`s retail point-of-sale tool called "Encore"', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        
                  ),
                  SizedBox(height: 10),
            Text('In my spare time, i love building side projects and conributing to open source.', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        
                ),
                SizedBox(height: 10),
                  
                ],
              ),
            ),
        
            SizedBox(height: 25),
        
            Container(
              height: 40,
              width: 270,
              decoration: BoxDecoration(color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('adeniyiolalekan@89gmail.com', style: TextStyle(color: Colors.white, fontSize: 15),),
                SizedBox(width: 10),
                Icon(Icons.content_copy_rounded, color: Colors.white, size: 16),
              ],
        
            ),
            
            
            ),
          // Center is a layout widget. It takes a single child and positions it
          // // in the middle of the parent.
          // child: Column(
          //   // Column is also a layout widget. It takes a list of children and
          //   // arranges them vertically. By default, it sizes itself to fit its
          //   // children horizontally, and tries to be as tall as its parent.
          //   //
          //   // Column has various properties to control how it sizes itself and
          //   // how it positions its children. Here we use mainAxisAlignment to
          //   // center the children vertically; the main axis here is the vertical
          //   // axis because Columns are vertical (the cross axis would be
          //   // horizontal).
          //   //
          //   // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          //   // action in the IDE, or press "p" in the console), to see the
          //   // wireframe for each widget.
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     const Text('You have pushed the button this many times:'),
          //     Text(
          //       '$_counter',
          //       style: Theme.of(context).textTheme.headlineMedium,
          //     ),
          //   ],
          // ),
          ],
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
            ),
      ),
  );
}
}