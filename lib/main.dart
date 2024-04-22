// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  void _showDatePicker (){
showDatePicker(
    context: context,
    initialDate:DateTime.now(),
    firstDate: DateTime(2020),
    lastDate: DateTime(2040));
  }
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Dashboard",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Container(
            margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                )),
          ),
        ),
        body: SingleChildScrollView(
          child:
          Column(children: [
          Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(children: [
            Text(
              "MEOW!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(" Amr Sherif")
          ]),
        ),
        Container(
          child: TabBar(
              controller: tabController,
              indicatorColor: Colors.teal[700],
              labelColor: Colors.teal[700],
              unselectedLabelColor: Colors.grey[400],
              tabs: [
                Tab(
                    child: Text(
                      "Appointments",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    )),
                Tab(
                  child: Text("Work Hours",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 19)),
                )
              ]),
        ),
         Container(
            width: double.maxFinite,
            height: 550,
            child: TabBarView(controller: tabController, children: [
            ListView.builder(
            scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context, i) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 40,
                            backgroundImage:
                            AssetImage('Images/assets/www.jpg')),
                      ),
                      Text(
                        "Amr Sherif",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold),
                      ),
                      Text("10:00 PM",
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                        color: Colors.grey[500],
                      )
                    ],
                  ),
                );
              },
            ),
            Column(
              children:[ ListView.builder(
            scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context, i) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("10:00 PM",
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold)),
                      Text("S S M T W T F ",
                          style: TextStyle(
                              color: Colors.teal[700],
                              fontWeight: FontWeight.bold)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                        color: Colors.grey[500],
                      )
                    ],
                  ),
                );
              },
            ),
           MaterialButton(color:Colors.teal,
            child: Text("New Appointment",style: TextStyle(color: Colors.white),),
            onPressed: _showDatePicker)
        ]),
      ]),
    ),
    ]),
      ),
    ),
    );
  }
}
