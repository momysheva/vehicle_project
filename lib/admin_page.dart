import 'package:flutter/material.dart';
import 'registration_user.dart';
import 'registration_vehicle.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}
class _AdminPageState extends State<AdminPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        backgroundColor: Color.fromARGB(255, 129, 53, 48),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              ElevatedButton(
                
                onPressed: (){
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistrationPage()),
            );
                },
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 129, 53, 48))), 
                child: const Text(
                  "Register Users",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )
                ),
                ElevatedButton(
                
                onPressed: (){
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistrationVehiclePage()),
            );
                },
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 129, 53, 48))), 
                child: const Text(
                  "Register Vehicles",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )
                ),
                ElevatedButton(
                
                onPressed: (){
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistrationPage()),
            );
                },
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 129, 53, 48))), 
                child: const Text(
                  "Auction",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )
                ),

            ],
          ),
        ),
      ),


    );
  }
}