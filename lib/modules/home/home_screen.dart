import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    // main axis alignement: start
    // cross axis alignment: center
    // column
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('First App'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notification_important)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(10),
                    topEnd: Radius.circular(10),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: const NetworkImage(
                        'https://thumbs.dreamstime.com/b/spring-flowers-blue-crocuses-drops-water-backgro-background-tracks-rain-113784722.jpg'
                      ),
                      height: 200.0,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        'Flower',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
      // body: Container(
      //   width: double.infinity,
      //   color: Colors.purpleAccent,
      //   child: Column(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //           color: Colors.red,
      //           child: Text(
      //             'First Text',
      //             style: TextStyle(color: Colors.white, fontSize: 30.0),
      //           ),
      //         ),
      //       // Container(
      //       //   color: Colors.green,
      //       //   child: Text(
      //       //     'Second Text',
      //       //     style: TextStyle(
      //       //       color: Colors.white,
      //       //       fontSize: 30.0,
      //       //     ),
      //       //   ),
      //       // ),
      //       // Container(
      //       //   color: Colors.blue,
      //       //   child: Text(
      //       //     'Third Text',
      //       //     style: TextStyle(
      //       //       color: Colors.white,
      //       //       fontSize: 30.0,
      //       //     ),
      //       //   ),
      //       // ),
      //       // Container(
      //       //   color: Colors.amber,
      //       //   child: Text(
      //       //     'Fourth Text',
      //       //     style: TextStyle(
      //       //       color: Colors.white,
      //       //       fontSize: 30.0,
      //       //     ),
      //       //   ),
      //       // ),
      //     ],
      //   ),
      // ),
    );
  }
}
