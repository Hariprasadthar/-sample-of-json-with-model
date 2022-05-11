import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsonapp/user.dart';

class HomePge extends StatefulWidget {
  const HomePge({Key? key}) : super(key: key);

  @override
  State<HomePge> createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  bool isloaded = true;
  late User u;
  String url = "https://jsonguide.brp.com.np/info.json";

  void loadurl() async {
    final response = await http.get(Uri.parse(url));
    var userMap = jsonDecode(response.body);
    u = User.fromJson(userMap);
    setState(() {
      isloaded = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadurl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloaded == true
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
              children: [
                Image.network(u.image),
                Text("Name:${u.name}"),
                Text("address:${u.address}"),
                Text("age:${u.age}"),
                Text("description:${u.description}"),
              ],
            )),
    );
  }
}
