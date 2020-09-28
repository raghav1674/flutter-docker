import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'runoutput.dart';

class Run extends StatefulWidget {
  @override
  _RunState createState() => _RunState();
}

class _RunState extends State<Run> {
  @override
  Widget build(BuildContext context) {

  TextEditingController imageName = TextEditingController();
  TextEditingController containerName = TextEditingController();
  
    return Scaffold(
      bottomSheet: FlatButton(onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              
                builder: (context) => RunOut(image:imageName.text,name:containerName.text)));
      },
        shape: Vx.withRounded(10),
          child: Text("Run",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
        color: Colors.blue,).wh(context.screenWidth,50).p16(),
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Run The Container"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          
          children: [
            SizedBox(height: 20,),
            TextFormField(
              controller: containerName,
              inputFormatters: [
                LengthLimitingTextInputFormatter(50),
              ],
              showCursor: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                labelText: "Enter The Container Name",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: imageName,
              inputFormatters: [
                LengthLimitingTextInputFormatter(50),
              ],
              showCursor: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Enter The Image Name",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(height: 20,),
            ],
        ),
      ),
    );
  }
}
