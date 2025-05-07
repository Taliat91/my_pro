import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
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
      body: Center(
       child: Padding(
         padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('This is the Workpage', style: TextStyle(color: Colors.black, fontSize: 50,
           fontWeight: FontWeight.bold),),
           Text('(SCROLL TO ABOUTPAGE)', style: TextStyle(color: Colors.black45, fontSize: 18,
           fontWeight: FontWeight.normal),),
           SizedBox(height: 110),
         
           Container(
            height: 410,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(40), 
            image: DecorationImage(image: AssetImage('assets/png/rishabh-malhotra-83ypHTv6J2M-unsplash.jpg'))),
            
           )
          ],
         
         ),
       ),
      ),
    );
  }
}