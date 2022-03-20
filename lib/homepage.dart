import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List _postJson = [];  //global variable
  
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("1.init state called");

    fetchPosts();
  }
 
 void postDataToTheServer() async{
   final url ="https://jsonplaceholder.typicode.com/users";
   final response = await post(Uri.parse(url));
   
   print(response.body);
   print(response.statusCode);
 }

  void fetchPosts() async{
     final url = "https://jsonplaceholder.typicode.com/users";
     final uri = Uri.parse(url);
     final response = await get(uri);
     //body : actual data sent from server
     //status code : 
     //  200,201,204 - success
     //  300(307) - redirect
     //  400,401,403,404 - user induced errors
     //  500, 503 - server side error

     print(response.body);
     //responseFromServer = response.body;

     final jsonData = jsonDecode(response.body);

     setState(() {
       _postJson = jsonData;  //putting the decoded data into _postJason list
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MaterialButton(
              onPressed: postDataToTheServer,
              color: Colors.blue,
              child: Text("Post Request",
                            style: TextStyle(fontFamily: 'Allura', fontSize: 30),
                            ),
              ),
            Expanded(
              child: ListView.builder(
                              itemCount: _postJson.length,
                              itemBuilder: (context, i) {
                                final post = _postJson[i];
                                return Container(
                                  padding: const EdgeInsets.only(top: 12, left: 10, right: 10),
                                  margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                                  child: Text("$post\n\n", style: TextStyle(color: Colors.black),),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(3,3),
                                      spreadRadius: 5,
                                      blurRadius: 5
                                    )
                                    ]
                                    
                                  ),
                                      );
                              },
                            
                              ),
            ),
          ],
        ),
      )
   
    );
  }
}