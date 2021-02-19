import 'package:flutter/material.dart';
import 'package:food_raja_app/components/colors.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/views/product_detail_page.dart';

TextEditingController _searchController = TextEditingController();

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final component = Component();
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            component.getTextField(deviceSize,
                controller: _searchController,
                hintText: 'Search Food',
                icon: Icon(Icons.search_rounded)),
            SizedBox(
              height: deviceSize.height * 0.036,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 70),
                physics: BouncingScrollPhysics(),
                child: Column(
                    children: List.generate(
                        10,
                        (index) => Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 19, bottom: 20, left: 5),
                                    height: 100,
                                    width: deviceSize.width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey[300],
                                            spreadRadius: 1,
                                            blurRadius: 5),
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                            height: deviceSize.height * 0.09,
                                            width: deviceSize.height * 0.09,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey[300],
                                                    blurRadius: 5,
                                                    spreadRadius: 1)
                                              ],
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/burger.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Beverages',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: titleTextColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              '220 items',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 4,
                                  top: 26,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductDetailPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: deviceSize.width * 0.1,
                                      width: deviceSize.width * 0.1,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey[300],
                                              blurRadius: 5,
                                              spreadRadius: 1,
                                              offset: Offset(2, 2),
                                            ),
                                          ]),
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: themeBlueColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
