import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBar({context, title, isBackIcon}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    automaticallyImplyLeading: false,
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            isBackIcon == true
                ? GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  )
                : Container(),
            Text(
              title,
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      Spacer(),
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: GestureDetector(
          onTap: () {
            print('cart');
          },
          child: Icon(Icons.shopping_cart),
        ),
      ),
    ],
  );
}
