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
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 🔷 HEADER
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Welcome, Alice Johnson",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            /// 📊 STATS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                statCard("8", "Active Courses", Colors.grey[300]!),
                statCard("3.8", "CGPA", Colors.purple[100]!),
              ],
            ),

            SizedBox(height: 20),

            /// 📢 ANNOUNCEMENTS
            Text("📢 Announcements",
                style: TextStyle(fontWeight: FontWeight.bold)),

            SizedBox(height: 10),

            announcementCard(
              "Exam Schedule Released",
              "Mid-semester exams start next week.",
              "2 hours ago",
              Colors.blue,
            ),

            announcementCard(
              "Assignment 3 Due Tomorrow",
              "Submit before 11:59 PM.",
              "5 hours ago",
              Colors.purple,
            ),

            announcementCard(
              "Grades Posted",
              "Final grades available.",
              "1 day ago",
              Colors.teal,
            ),

            SizedBox(height: 20),

            /// 📚 COURSES
            Text("📚 My Courses",
                style: TextStyle(fontWeight: FontWeight.bold)),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              childAspectRatio: 1.4,
              children: [
                courseCard("Data Structures", "CS 201", "75%", Colors.blue),
                courseCard("Web Development", "CS 301", "90%", Colors.pink),
                courseCard("Database Design", "CS 251", "60%", Colors.cyan),
                courseCard("Algorithms", "CS 203", "85%", Colors.orange),
                courseCard("Machine Learning", "CS 401", "70%", Colors.indigo),
                courseCard("Mobile Apps", "CS 305", "80%", Colors.grey),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget statCard(String value, String title, Color color) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(value,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }

  Widget announcementCard(
      String title, String subtitle, String time, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border(left: BorderSide(color: color, width: 4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(subtitle),
          SizedBox(height: 5),
          Text(time, style: TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }

  Widget courseCard(
      String name, String code, String progress, Color color) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7), color],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name,
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Text(code, style: TextStyle(color: Colors.white70)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Progress: $progress",
                style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}