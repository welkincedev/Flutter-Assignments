import 'package:flutter/material.dart';

class HotelBookingFullUI extends StatefulWidget {
  @override
  State<HotelBookingFullUI> createState() => _HotelBookingFullUIState();
}

class _HotelBookingFullUIState extends State<HotelBookingFullUI> {

  DateTime checkInDate = DateTime.now();
  DateTime checkOutDate = DateTime.now().add(Duration(days: 1));
  TimeOfDay selectedTime = TimeOfDay.now();

  int selectedRoom = 0;
  int selectedGuestType = 1;

  String guestCount = "5+ Guests";

  bool pool = true;
  bool restaurant = true;
  bool gym = false;
  bool wifi = true;
  bool parking = false;

  double price = 220;

  bool nonSmoking = false;
  bool breakfast = true;
  bool earlyCheckin = true;

  TextEditingController requestController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: <Color>[?Colors.blue[700], Colors.blue],
            ),
          ),
        ),
        title: Column(
          children: [
            Text(
              "🏨 Hotel Booking",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              "Book your perfect stay",
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFFFF7FF),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SEARCH HOTELS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 10),

                  Text("City *"),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "New York",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Text("Check-in Date *"),
                  InkWell(
                    onTap: () async {
                      DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2100),
                      );

                      if (picked != null) {
                        setState(() {
                          checkInDate = picked;
                        });
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Color(0xffe9e2ef),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.deepPurple),
                          SizedBox(width: 10),
                          Text(
                            checkInDate != null
                                ? "${checkInDate.day}/${checkInDate.month}/${checkInDate.year}"
                                : "Select Date",
                            style: TextStyle(color: Colors.deepPurple),
                          )
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 10),

                  Text("Check-out Date *"),InkWell(
                    onTap: () async {
                      DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2100),
                      );

                      if (picked != null) {
                        setState(() {
                          checkOutDate = picked;
                        });
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Color(0xffe9e2ef),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.deepPurple),
                          SizedBox(width: 10),
                          Text(
                            checkOutDate != null
                                ? "${checkOutDate.day}/${checkOutDate.month}/${checkOutDate.year}"
                                : "Select Date",
                            style: TextStyle(color: Colors.deepPurple),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Text("Preferred Check-in Time"),
                  InkWell(
                    onTap: () async {
                      TimeOfDay? picked = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );

                      if (picked != null) {
                        setState(() {
                          selectedTime = picked;
                        });
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Color(0xffe9e2ef),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.deepPurple),
                          SizedBox(width: 10),
                          Text(
                            selectedTime.format(context),
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ROOM TYPE",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  RadioListTile(
                    value: 0,
                    groupValue: selectedRoom,
                    onChanged: (val) {
                      setState(() => selectedRoom = val!);
                    },
                    title: Text("Deluxe Room - \$120/night"),
                  ),
                  RadioListTile(
                    value: 1,
                    groupValue: selectedRoom,
                    onChanged: (val) {
                      setState(() => selectedRoom = val!);
                    },
                    title: Text("Premium Room - \$180/night"),
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: selectedRoom,
                    onChanged: (val) {
                      setState(() => selectedRoom = val!);
                    },
                    title: Text("Suite - \$280/night"),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "GUEST TYPE",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  RadioListTile(
                    value: 0,
                    groupValue: selectedGuestType,
                    onChanged: (val) {
                      setState(() => selectedGuestType = val!);
                    },
                    title: Text("Business"),
                  ),
                  RadioListTile(
                    value: 1,
                    groupValue: selectedGuestType,
                    onChanged: (val) {
                      setState(() => selectedGuestType = val!);
                    },
                    title: Text("Leisure"),
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: selectedGuestType,
                    onChanged: (val) {
                      setState(() => selectedGuestType = val!);
                    },
                    title: Text("Family"),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "NUMBER OF GUESTS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  DropdownButtonFormField(
                    initialValue: guestCount,
                    items:
                        [
                              "1 Guest",
                              "2 Guests",
                              "3 Guests",
                              "4 Guests",
                              "5+ Guests",
                            ]
                            .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)),
                            )
                            .toList(),
                    onChanged: (val) {
                      setState(() => guestCount = val!);
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  CheckboxListTile(
                    value: pool,
                    onChanged: (val) => setState(() => pool = val!),
                    title: Text("🏊 Swimming Pool"),
                  ),
                  CheckboxListTile(
                    value: restaurant,
                    onChanged: (val) => setState(() => restaurant = val!),
                    title: Text("🍽 Restaurant"),
                  ),
                  CheckboxListTile(
                    value: gym,
                    onChanged: (val) => setState(() => gym = val!),
                    title: Text("🏋️ Gym"),
                  ),
                  CheckboxListTile(
                    value: wifi,
                    onChanged: (val) => setState(() => wifi = val!),
                    title: Text("📶 Free WiFi"),
                  ),
                  CheckboxListTile(
                    value: parking,
                    onChanged: (val) => setState(() => parking = val!),
                    title: Text("🚗 Parking"),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PRICE RANGE",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text("Max Price: \$${price.toInt()}"),
                  Slider(
                    value: price,
                    min: 0,
                    max: 500,
                    onChanged: (val) {
                      setState(() => price = val);
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  SwitchListTile(
                    value: nonSmoking,
                    onChanged: (val) => setState(() => nonSmoking = val),
                    title: Text("Non-smoking Room"),
                  ),
                  SwitchListTile(
                    value: breakfast,
                    onChanged: (val) => setState(() => breakfast = val),
                    title: Text("Breakfast Included"),
                  ),
                  SwitchListTile(
                    value: earlyCheckin,
                    onChanged: (val) => setState(() => earlyCheckin = val),
                    title: Text("Early Check-in"),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextField(
                controller: requestController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Let us know any special requirements...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    child: Text("Clear"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    onPressed: () {},
                    child: Text("Search"),
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
