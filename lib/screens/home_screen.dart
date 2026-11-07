
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          leading: Icon( Icons.menu ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("John Doe"),
                    Text("Good Morning!")
                  ],
                ),
              ),
              Text("Dashboard")
            ],
          ),
          actions: [
            Icon( Icons.search ),
            Icon( Icons.add_alert ),
            Icon( Icons.person )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                // Text("Flutter box start"),
                // SizedBox( height: 25,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Container(
                //       height: 100,
                //       width: 100,
                //       color: Colors.red,
                //       child: Center(
                //         child: Text('Red'),
                //       ),
                //     ),
                //     Container(
                //       height: 100,
                //       width: 100,
                //       color: Colors.blue,
                //       child: Center(
                //         child: Text('Blue'),
                //       ),
                //     )
                //   ],
                // ),
                // SizedBox( height: 25,),
                // Container(
                //   color: Colors.green,
                //   padding: EdgeInsets.all( 10),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Container(
                //         height: 100,
                //         width: 100,
                //         color: Colors.yellow,
                //         child: Center(
                //           child: Text('Yellow'),
                //         ),
                //       ),
                //       Container(
                //         height: 100,
                //         width: 100,
                //         color: Colors.orange,
                //         child: Center(
                //           child: Text('Orange'),
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                // SizedBox( height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.purple,
                      child: Center(
                        child: Text('Purple'),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.cyan,
                      child: Center(
                        child: Text('Cyan'),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.pink,
                      child: Center(
                        child: Text('Pink'),
                      ),
                    )
                  ],
                ),
                SizedBox( height: 25,),
                Text("Flutter box end"),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.purple,
                      child: Center(
                        child: Text('Purple'),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 100,
                        color: Colors.yellow,
                        child: Center(
                          child: Text('Yellow'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        color: Colors.cyan,
                        child: Center(
                          child: Text('Cyan'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.pink,
                        child: Center(
                          child: Text('Pink'),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
