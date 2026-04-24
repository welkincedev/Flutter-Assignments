import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StudentUI(),
  ));
}

class StudentUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              child: Column(
                children: [
                  Icon(Icons.school, color: Colors.white, size: 40),
                  SizedBox(height: 10),
                  Text(
                    "Student Portal",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Welcome, Alice Johnson",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  width: 150,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Text("8",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("Active Courses"),
                    ],
                  ),
                ),

                Container(
                  width: 150,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Text("3.8",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("CGPA"),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Text("📢 Announcements",
                style: TextStyle(fontWeight: FontWeight.bold)),

            SizedBox(height: 10),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border(left: BorderSide(color: Colors.blue, width: 4)),
              ),
              child: Row(
                children: [
                  Icon(Icons.push_pin, color: Colors.blue),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Exam Schedule Released",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Mid-semester exams start next week."),
                        SizedBox(height: 5),
                        Text("2 hours ago",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border(left: BorderSide(color: Colors.purple, width: 4)),
              ),
              child: Row(
                children: [
                  Icon(Icons.edit, color: Colors.purple),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Assignment 3 Due Tomorrow",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Submit before 11:59 PM."),
                        SizedBox(height: 5),
                        Text("5 hours ago",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border(left: BorderSide(color: Colors.teal, width: 4)),
              ),
              child: Row(
                children: [
                  Icon(Icons.school, color: Colors.teal),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Grades Posted",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Final grades available."),
                        SizedBox(height: 5),
                        Text("1 day ago",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20),

            Text("📚 My Courses",
                style: TextStyle(fontWeight: FontWeight.bold)),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              childAspectRatio: 1.3,
              children: [

                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue.withOpacity(0.7), Colors.blue],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Data Structures",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text("CS 201",
                          style: TextStyle(color: Colors.white70)),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Progress: 75%",
                            style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.pink.withOpacity(0.7), Colors.pink],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Web Development",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text("CS 301",
                          style: TextStyle(color: Colors.white70)),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Progress: 90%",
                            style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.cyan.withOpacity(0.7), Colors.cyan],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Database Design",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text("CS 251",
                          style: TextStyle(color: Colors.white70)),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Progress: 60%",
                            style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.orange.withOpacity(0.7), Colors.orange],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Algorithms",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text("CS 203",
                          style: TextStyle(color: Colors.white70)),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Progress: 85%",
                            style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.indigo.withOpacity(0.7), Colors.indigo],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Machine Learning",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text("CS 401",
                          style: TextStyle(color: Colors.white70)),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Progress: 70%",
                            style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.grey.withOpacity(0.7), Colors.grey],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Mobile Apps",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text("CS 305",
                          style: TextStyle(color: Colors.white70)),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Progress: 80%",
                            style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}