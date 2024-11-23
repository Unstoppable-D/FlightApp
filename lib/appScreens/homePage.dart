import 'package:flight_app/customLibs/styleMedia/appStyle.dart';
import 'package:flight_app/customLibs/styleMedia/media.dart';
import 'package:flight_app/customLibs/widgets/appDoubleText.dart';
import 'package:flight_app/customLibs/widgets/ticketView.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headLineStyle3,),

                        const SizedBox(height: 15,),

                        Text("Book Ticket", style: AppStyles.headLineStyle1,),
                      ],
                    ),

                    Container(
                      width: 80, height: 40,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(AppMedia.logo)
                        )
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: const Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Colors.black,),
                      Text("Search "),
                    ],
                  ),)
              ],
            ),
          ),

          const SizedBox(height: 40,),

          const AppDoubleText(bigText: "Upcoming Flights", smallText: "View All"),

          const SizedBox(height: 20,),

          TicketView()
        ],
      ),
    );
  }
}









/*
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _displayText = "Hit the Button";
  int _displayNumber = 0;

  void _onButtonLongPressed() {
    setState(() {
      _displayText = "You're Pressing so Long!🤏";
    });
  }

  void _onDisplayText() {
    setState(() {
      _displayText = "You Just Hit Me!👊";
    });
  }

  void _addition() {
    setState(() {
      _displayNumber++;
    });
  }

  void _onButtonPressed() {
    setState(() {
      _onDisplayText();
      _addition();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _displayText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
            Text(
              "$_displayNumber",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: _onButtonPressed,
              onLongPress: _onButtonLongPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: const Size(100, 50),
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                //shadowColor: Colors.black
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.touch_app,
                    size: 20,
                    shadows: [
                      Shadow(offset: Offset(2.0, 2.0), color: Colors.black)
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Hit Me",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addition,
        elevation: 6,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        tooltip: "Increment",
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
*/
