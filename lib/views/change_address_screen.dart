import 'package:flutter/material.dart';
import 'package:food_raja_app/components/components.dart';

TextEditingController _searchOnMapController = TextEditingController();

class ChangeAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    final component = Component();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.black)),
        actions: [
          Row(
            children: [
              Text(
                'Change Address',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(width: deviceSize.width * 0.43),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: deviceSize.height * 0.68,
            width: deviceSize.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/google_map.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                component.getTextField(
                  Size(
                    deviceSize.width,
                    deviceSize.height * 0.06,
                  ),
                  controller: _searchOnMapController,
                  hintText: 'Search',
                  icon: Icon(Icons.search),
                ),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.stars_rounded),
                        SizedBox(
                          width: deviceSize.width * 0.014,
                        ),
                        Text('Choose a saved place'),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
