import 'package:flutter/material.dart';

class RegistrationVehiclePage extends StatefulWidget {
  @override
  _RegistrationVehiclePageState createState() => _RegistrationVehiclePageState();
}

class _RegistrationVehiclePageState extends State<RegistrationVehiclePage> {
  TextEditingController _modelController = TextEditingController();
  TextEditingController _yearController = TextEditingController();
  TextEditingController _licensePlateController = TextEditingController();
  TextEditingController _sittingCapacityController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Registration Page'),
        backgroundColor: Color.fromARGB(255, 129, 53, 48),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Model'),
              const SizedBox(
                height: 3,
              ),
              TextField(
                controller: _modelController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Model',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 3,
              ),
              const Text('Year'),
              const SizedBox(
                height: 3,
              ),
              TextField(
                controller: _yearController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Year',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 3,
              ),
              const Text('License Plate'),
              const SizedBox(
                height: 3,
              ),
              TextField(
                controller: _licensePlateController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter License Plate',
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text('Sitting Capacity'),
              const SizedBox(
                height: 3,
              ),
              TextField(
                controller: _sittingCapacityController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Sitting Capacity',
                ),
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  
                },
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 129, 53, 48))),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}