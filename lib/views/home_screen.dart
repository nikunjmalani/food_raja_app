import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_raja_app/components/colors.dart';
import 'package:food_raja_app/components/components.dart';
import 'package:food_raja_app/customized_library/animated_bottom_bar/animatedbottomnavigationbar/home_animated_bottom_bar.widget.dart';
import 'package:food_raja_app/views/latest_offer.dart';
import 'package:food_raja_app/views/menu_screen.dart';
import 'package:food_raja_app/views/more_screen.dart';
import 'package:food_raja_app/views/profile_screen.dart';
import 'package:food_raja_app/widget/appbar.dart';

TextEditingController _searchController = TextEditingController();

class HomeScreenBody extends StatelessWidget {
  final component = Component();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    Widget getPopularRestaurant() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: deviceSize.height * 0.18,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: deviceSize.height * 0.11,
                        width: deviceSize.height * 0.11,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          child: Image(
                            image: AssetImage('assets/burger.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: deviceSize.width * 0.18,
                        child: Text(
                          'Burgerdfbgiabjhvjftyfhvufy',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Restaurant',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Metropolis-ExtraBold',
                  color: Color(0xff4A4B4D),
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                    color: Color(0xff030357),
                    fontSize: 13,
                    fontFamily: 'Metropolis-ExtraBold'),
              ),
            ],
          ),
          SizedBox(
            height: deviceSize.height * 0.027,
          ),
          ListView.builder(
            // padding: EdgeInsets.zero,
            itemCount: 3,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 260,
                width: deviceSize.width,
                margin: EdgeInsets.symmetric(vertical: 7, horizontal: 1),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 10,
                          offset: Offset(2, 2),
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image(
                          image: AssetImage('assets/burger.jpg'),
                          width: deviceSize.width,
                          height: 193,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Minute by tuk tuk',
                              style: TextStyle(
                                  color: titleTextColor,
                                  fontFamily: 'Metropolis-Bold',
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: themeBlueColor,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      color: themeBlueColor, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '(124 rating) Cafe',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 6,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Western Food',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
        ],
      );
    }

    Widget getMostPopular() {
      return Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Most Popular',
              style:
                  TextStyle(fontSize: 20, fontFamily: 'Metropolis-ExtraBold'),
            ),
            Text(
              'View All',
              style: TextStyle(
                  color: Color(0xff030357),
                  fontFamily: 'Metropolis-Medium',
                  fontSize: 13),
            ),
          ],
        ),
        SizedBox(
          height: deviceSize.height * 0.027,
        ),
        Container(
          height: 215,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 12, bottom: 6, top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image(
                        image: AssetImage('assets/burger.jpg'),
                        width: deviceSize.width * 0.65,
                        height: 135,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Café De Bambaa',
                            style: TextStyle(
                                color: titleTextColor,
                                fontFamily: 'Metropolis-Bold',
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Cafe',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.circle,
                                size: 4,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Western Food',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xff030357),
                                size: 12,
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(
                                    color: themeBlueColor, fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]);
    }

    Widget getRecentItem() {
      return Column(
        children: [
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent items',
                style: TextStyle(
                    fontSize: 26,
                    color: titleTextColor,
                    fontFamily: 'Metropolis-ExtraBold'),
              ),
              Text(
                'View All',
                style: TextStyle(
                    color: Color(0xff030357),
                    fontSize: 13,
                    fontFamily: 'Metropolis-Regular'),
              ),
            ],
          ),
          SizedBox(
            height: deviceSize.height * 0.027,
          ),
          ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
            itemCount: 6,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/burger.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mulberry Pizza by Josh',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Metropolis-Bold',
                                fontWeight: FontWeight.bold,
                                color: titleTextColor),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                'Cafe',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'Metropolis-Regular',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black26),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.circle,
                                size: 2,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Western Food',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'Metropolis-Regular',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black26),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: themeBlueColor,
                                size: 16,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(
                                    color: themeBlueColor, fontSize: 11),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '(124 rating)',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black26),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              );
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      );
    }

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: deviceSize.height * 0.032,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Good morning ',
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Metropolis-ExtraBold'),
                      ),
                      Text(
                        'Josef!',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff030A57)),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                'Delivering to',
                style: TextStyle(color: greyTextColor, fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xff030357),
                    size: 16,
                  ),
                  Text(
                    'Current Location',
                    style: TextStyle(
                        fontSize: 16,
                        color: greyTextColor,
                        fontFamily: 'Metropolis-Bold',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: SvgPicture.asset('assets/arrow_down.svg'),
                  ),
                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.03,
              ),
              component.getTextField(
                deviceSize,
                controller: _searchController,
                hintText: 'Search Food',
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.grey,
                  size: deviceSize.height * 0.035,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(children: [
                    getPopularRestaurant(),
                    getMostPopular(),
                    getRecentItem()
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 4;
  PageController _pageViewController =
      PageController(initialPage: 4, keepPage: true);
  List<String> _navigationLabel = ['Menu', 'Offers', 'Profile', 'More', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.greenAccent,
      extendBody: true,
      bottomNavigationBar: _bottomNavigationBar(
          onTap: (index) {
            setState(() {
              pageIndex = index;
              _pageViewController.animateToPage(index,
                  duration: Duration(milliseconds: 400), curve: Curves.ease);
            });
          },
          index: pageIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            pageIndex = 4;
          });
          _pageViewController.animateToPage(
            pageIndex,
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );

          // _pageViewController.jumpToPage(pageIndex);
        },
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
        backgroundColor: pageIndex == 4 ? Color(0xff030357) : Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: pageIndex == 4
          ? PreferredSize(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(),
              ),
              preferredSize: Size.fromHeight(10),
            )
          : appBar(
              context: context,
              title: _navigationLabel[pageIndex],
              isBackIcon: false),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageViewController,
        children: [
          MenuScreen(),
          LatestOffer(),
          ProfileScreen(),
          MoreScreen(),
          HomeScreenBody(),
        ],
      ),
    );
  }

  Widget _bottomNavigationBar({@required Function(int) onTap, int index}) {
    return Stack(
      children: <Widget>[
        AnimatedBottomBar(
          onTap: onTap,
          bottomNavIndex: index,
        ),
      ],
    );
  }
}

class BottomNavigationBar extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0.42, 0)
      // ..quadraticBezierTo(size.width * 0.42, size.height * 0.10,
      //     size.width * 0.44, size.height * 0.10)
      ..quadraticBezierTo(size.width * 0.44, size.height * 0.40,
          size.width * 0.52, size.height * 0.40)
      ..quadraticBezierTo(
          size.width * 0.6, size.height * 0.40, size.width * 0.62, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint..color.green);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
