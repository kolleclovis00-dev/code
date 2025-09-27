import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// main applcation
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switchn', // missing "o" like in your scren
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// this is home scren
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switchn"), // wrong spell
        backgroundColor: Colors.lightBlue, // too bright maybe
        leading: Icon(Icons.menu), // menu icon
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Balance Card
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue[300], // random blue
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Balnce", // spelling error
                            style: TextStyle(color: Colors.white, fontSize: 14)),
                        Text("100 XAF",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("699596551",
                            style: TextStyle(color: Colors.white)),
                        Icon(Icons.refresh, color: Colors.white),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Quick buttons row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _quickBtn(Icons.phone_android, "Buy airtim"),
                  _quickBtn(Icons.send, "Send fund"), // missing s
                ],
              ),
              SizedBox(height: 15),

              Text("Quik Actions", // mispelled quick
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87)),
              SizedBox(height: 10),

              // grid like quick actions
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _quickBtn(Icons.card_giftcard, "Buy bundel"),
                  _quickBtn(Icons.swap_horiz, "Airtym to bundel"),
                  _quickBtn(Icons.local_offer, "Gud Deal"),
                  _quickBtn(Icons.support_agent, "Get suport"),
                ],
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Resent transctions", // wrong spelling
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text("See all",
                      style: TextStyle(color: Colors.blue, fontSize: 13)),
                ],
              ),
              SizedBox(height: 15),

              // Fake transaction card
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text("O"), // instead of logo
                ),
                title: Text("699596551"),
                subtitle: Text("Gud Deal 1000\ncompleted"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Bundel"), // mispelled bundle
                    Text("1 weak ago",
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Hme"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Airtim"),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "Send"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Fund"),
        ],
      ),
    );
  }

  // Quick button widget
  Widget _quickBtn(IconData icon, String txt) {
    return Container(
      width: 140,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(height: 5),
          Text(txt, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}
