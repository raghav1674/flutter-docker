import 'dart:convert';
import 'package:docker_app/models/Docker.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart';


class RunOut extends StatefulWidget {
  final String image;
  final String name;

  RunOut({this.image, this.name});

  @override
  RunOutState createState() => RunOutState(image: this.image, name: this.name);
}

class RunOutState extends State<RunOut> {
  final String image;
  final String name;

  RunOutState({this.image, this.name});

  var data = "";

  getData(String image, String name) async {
    var url =
        "http://13.233.244.198/cgi-bin/start?con_name=$name&image_name=$image";

    try {
      print(url);
      var response = await get(url);

      setState(() {
        data = response.body;
      });
    } catch (e) {
      return e;
    }
  }

  @override
  void initState() {
    getData(this.image, this.name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Docker con = Docker(
        name: jsonDecode(data)["name"],
        image: jsonDecode(data)["image"],
        status: jsonDecode(data)["status"]);
    return Scaffold(
      appBar: AppBar(title: Text("Running Container")),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text("Container Name    "),
                    Text(con.name),
                  ],
                ),
                Row(
                  children: [
                     Text("Image Name     "),
                    Text(con.image),
                  ],
                ),
                Row(
                  children: [
                     Text("Status    "),
                    Text(con.status),
                  ],
                ),
              ],
            )).box.gray400.rounded.border(color: Colors.blue, width: 2).make(),
      ),
    );
  }
}
