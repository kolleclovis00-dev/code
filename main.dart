import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// main app widget codemy
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcom Pack', // 
      home: PurchasePassScreen(),
      debugShowCheckedModeBanner: false, // remove the anoying banner
    );
  }
}

// this is screen for purshase pass
class PurchasePassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcom Pack"), // again mistake, not Welcome
        backgroundColor: Colors.orangeAccent, // color little weird
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Purchase Pas", // missing s at end
                style: TextStyle(
                  fontSize: 24, // too big maybe
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blue[200], // random blue, not matching
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "One mounth = one Welcom Pack bonnus!",
                  style: TextStyle(
                    fontSize: 13, // very smal font
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Chose your share form the avilable ofers.", // lots of mistakes here
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCard("Max it Super Bunos", "1Go", "100 u"),
                _buildCard("Bonus Max it", "250Mo", "0 u"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // card for show ofers
  Widget _buildCard(String title, String data, String price) {
    return Container(
      width: 140,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.orange, width: 2), // thick border
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // shadow too dark
            spreadRadius: 2,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          Icon(Icons.card_giftcard, color: Colors.orange, size: 40), // random icon
          SizedBox(height: 5),
          Text(
            "Valdity 24H", // wrong spelling validity
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
          SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13, // too small for title
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            data,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            price,
            style: TextStyle(color: Colors.red, fontSize: 14),
          )
        ],
      ),
    );
  }
}
