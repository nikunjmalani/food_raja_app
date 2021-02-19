import 'package:flutter/material.dart';
import 'package:food_raja_app/components/components.dart';

TextEditingController _searchTextEditingController = TextEditingController();

class DessertsScreen extends StatelessWidget {
  final component = Component();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Desserts',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Metropolis-ExtraBold',
                      color: Colors.black),
                ),
                SizedBox(width: deviceSize.width - deviceSize.width * 0.44),
                Icon(Icons.shopping_cart, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            component.getTextField(deviceSize,
                controller: _searchTextEditingController,
                hintText: 'Search Food',
                icon: Icon(Icons.search_rounded)),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 201,
                              width: deviceSize.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.1,
                                    blurRadius: 5,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Image(
                                      height: 201,
                                      width: deviceSize.width,
                                      image: AssetImage('assets/burger.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'French Apple Pie',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Metropolis-Bold',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 14,
                                                ),
                                                Text(
                                                  '4.9 Minute by tuk tuk Dessertse',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontFamily:
                                                        'Metropolis-Regular',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 17),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
