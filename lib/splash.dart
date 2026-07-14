import 'package:flutter/material.dart';
import 'package:task/homescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "https://mysleepyhead.com/cdn/shop/files/Yolo_3_1_1_Avocado_Green_1.jpg?v=1768929265&width=533",
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black26),

          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),

                Text(
                  "unimaginable",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                Text(
                  "Furniture",
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),

                Spacer(),

                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xff556B57),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "best in town.",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),

                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_forward, color: Colors.black),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Homescreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
