import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MonthListPage(),
  ));
}

class MonthListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Months List",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),backgroundColor: Colors.blue,
      ),

      body: ListView(
        padding: EdgeInsets.all(10),
        children: [

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("January",style: TextStyle(fontSize: 16)),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Advertisement",
              style: TextStyle(color: Colors.white),
            ),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("February",style: TextStyle(fontSize: 16)),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("March",style: TextStyle(fontSize: 16)),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("April",style: TextStyle(fontSize: 16)),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("May",style: TextStyle(fontSize: 16)),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Advertisement",
              style: TextStyle(color: Colors.white),
            ),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("June",style: TextStyle(fontSize: 16)),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("July",style: TextStyle(fontSize: 16)),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("August",style: TextStyle(fontSize: 16)),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("September",style: TextStyle(fontSize: 16)),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Advertisement",
              style: TextStyle(color: Colors.white),
            ),
          ),

          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("October",style: TextStyle(fontSize: 16)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("November",style: TextStyle(fontSize: 16)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("December",style: TextStyle(fontSize: 16)),
          ),

        ],
      ),
    );
  }
}