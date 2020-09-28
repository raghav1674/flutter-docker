import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'run.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Docker Controller",
      home: GradientTab(),
    );
  }
  DefaultTabController GradientTab(){
    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Docker Controller"),
            backgroundColor: Colors.black,
            centerTitle: true,
            elevation: 0,
            bottom: TabBar(
              unselectedLabelColor: Colors.blueAccent,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.lightBlue,Colors.blue[900]]),
                borderRadius: BorderRadius.circular(50),
                color: Colors.blueAccent
              ),
              tabs: [
                Tab(
                  child: Align(child: Icon(Icons.local_shipping)),
                ),
                Tab(
                  child: Align(child: Icon(Icons.image)),
                )
              ],

            ),

          ),
          body:TabBarView(children: [
            // getcontainerbody(context),
            getimagebody(),
          ]),
        ));
  }
 Widget getcontainerbody(BuildContext context){
    var listview=ListView(

      children: [
        ListTile(
          leading: Image.asset("assets/cogwheels.png",height: 40,width: 40,),
          title: Text("Run The Container"),
          subtitle: Text("Require Field Container Name and Image Name"),
         onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Run()));
          },
          //onTap: Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => new Run()));
          ),
        ListTile(
          leading: Image.asset("assets/stop-sign.png",height: 40,width: 40,),
          title: Text("Stop The Container"),
          subtitle: Text("Require Field Container Name"),
        ),ListTile(
          leading: Image.asset("assets/charging-circle.png",height: 40,width: 40,),
          title: Text("Check The Status Of The Container"),
          subtitle: Text("Require Field Container Name"),
        ),

      ],
    );
    return listview;
  }
Widget  getimagebody(){
    var listview = ListView(
      children: [
        ListTile(
          leading: Image.asset("assets/stop-sign.png",height: 40,width: 40,),
          title: Text("List Of Docker Image"),
          subtitle: Text("Require Field Image Name, Tag, DockerFile"),
        ),
        ListTile(
          leading: Image.asset("assets/stop-sign.png",height: 40,width: 40,),
          title: Text("Remove The Docker Image"),
          subtitle: Text("Require Field Image Name, Tag, DockerFile"),
        ),
        ListTile(
          leading: Image.asset("assets/stop-sign.png",height: 40,width: 40,),
          title: Text("Build The Docker Image"),
          subtitle: Text("Require Field Image Name, Tag, DockerFile"),
        ),
      ],
    );
 return listview;
  }



}
