import 'package:bb/SearchPage.dart';
import 'package:bb/pages/HeroRestorent.dart';
import 'package:bb/pages/demodata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            toolbarHeight: 60,
            backgroundColor: Color(0xFFE23744),
            leading: null,
            title: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.location_city_sharp),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('DELIVERD TO',
                              style: GoogleFonts.openSans(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                          Text(
                            "R V College,Banglore",
                            style: GoogleFonts.openSans(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(199, 254, 252, 252),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Icon(
                        Icons.person,
                        size: 35,
                        color: Color(0xFFE23744),
                      ),
                    ),
                    onTap: () {
                      print('pressed');
                    },
                  ),
                ],
              ),
            ),
          ),

          ///////////////////serchbar
          SliverAppBar(
              pinned: true,
              toolbarHeight: 50,
              elevation: 0.0,
              backgroundColor: Color(0xFFE23744),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: InkWell(
                  child: Container(
                    height: Size.height / 19,
                    width: Size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Color(0xFFE23744),
                                ),
                                Text("Restaurent names or a dish....",
                                    style: GoogleFonts.openSans(
                                        fontSize: 18,
                                        color: Color.fromARGB(
                                            255, 108, 106, 106))),
                              ],
                            )),
                        Icon(
                          Icons.mic,
                          size: 30,
                          color: Color(0xFFE23744),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 110, 109, 109),
                            spreadRadius: 0.6,
                            blurRadius: 2.0,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  ////Search page

                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage()));
                  },
                ),
              )),
          SliverToBoxAdapter(
              child: Container(
            height: Size.height / 2.1,
            width: Size.width,
            child: Stack(children: [
              Container(
                height: Size.height / 3.3,
                width: Size.width,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 110, 109, 109),
                        spreadRadius: 2.0,
                        blurRadius: 10.0,
                      )
                    ],
                    color: Color(0xFFE23744),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(130),
                        bottomRight: Radius.circular(130))),
              ),
              Positioned(
                  top: 15,
                  left: 28,
                  right: 28,
                  child: Container(
                      height: Size.height / 2,
                      width: Size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 16.0, top: 8),

                                //Black
                                child: Container(
                                    height: Size.height / 4,
                                    width: Size.width / 2.45,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromARGB(255, 18, 18, 17),
                                            spreadRadius: 0.5,
                                            blurRadius: 3.0,
                                          )
                                        ],
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8, right: 8),
                                          child: Column(children: [
                                            Text(
                                              "Latest offers,",
                                              style: GoogleFonts.openSans(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Just for you",
                                              style: GoogleFonts.openSans(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ]),
                                        ),
                                        Container(
                                          height: Size.width / 4,
                                          width: Size.width / 5,
                                          child: Image.network(
                                            'https://www.digialgo.in/img/special-offer.gif',
                                          ),
                                        ),
                                      ],
                                    )),
                              ),

                              //bogo
                              Container(
                                  height: Size.height / 6,
                                  width: Size.width / 2.45,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(255, 86, 86, 85),
                                          spreadRadius: 0.5,
                                          blurRadius: 3.0,
                                        )
                                      ],
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.yellow,
                                            Color.fromARGB(255, 33, 241, 40)
                                          ],
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Column(children: [
                                          Text(
                                            "By one, Get one",
                                            style: GoogleFonts.openSans(
                                                color: Color.fromARGB(
                                                    255, 1, 85, 11),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "FREE",
                                            style: GoogleFonts.openSans(
                                                color: Color.fromARGB(
                                                    255, 1, 85, 11),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ]),
                                      ),
                                      Container(
                                        height: Size.width / 5,
                                        width: Size.width / 5,
                                        child: Image.network(
                                          'http://1.bp.blogspot.com/-J4cSvUFLqa0/UREIZomcEwI/AAAAAAAAASU/loHRae7Z_8o/s1600/baker-whisk01.gif',
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          ),

                          //gifts
                          Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16.0, top: 8),
                                  child: Container(
                                      height: Size.height / 6,
                                      width: Size.width / 2.45,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 18, 18, 17),
                                              spreadRadius: 0.5,
                                              blurRadius: 3.0,
                                            )
                                          ],
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.red,
                                                Colors.yellow
                                              ],
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Column(children: [
                                              Text(
                                                "Order and Win",
                                                style: GoogleFonts.openSans(
                                                    color: Color.fromARGB(
                                                        255, 88, 6, 0),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            height: Size.width / 4,
                                            width: Size.width / 4,
                                            child: Image.network(
                                              'https://webstockreview.net/images/excited-clipart-surprise-gift-19.gif',
                                            ),
                                          ),
                                        ],
                                      )),
                                ),

                                //free delivery
                                Container(
                                    height: Size.height / 4,
                                    width: Size.width / 2.45,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromARGB(255, 86, 86, 85),
                                            spreadRadius: 0.5,
                                            blurRadius: 3.0,
                                          )
                                        ],
                                        color: Colors.cyanAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Column(children: [
                                            Text(
                                              "1 Month,",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 1, 87, 87),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "FREE DELIVERY",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 1, 87, 87),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ]),
                                        ),
                                        Container(
                                          height: Size.width / 4,
                                          width: Size.width / 4,
                                          child: Image.network(
                                            'http://agribolo.com/Content/images/free-home-delivery.gif',
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          )
                        ],
                      )))
            ]),
          )),

          //popular
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Featured partners",
                        style: GoogleFonts.openSans(
                          color: Color(0xFF2D2D2D),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )),
                    Text(
                      "See all",
                      style: GoogleFonts.openSans(),
                    ),
                  ]),
            ),
          ),
          SliverToBoxAdapter(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              demoMediaCardData.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: RestaurantInfoMediumCard(
                  title: demoMediaCardData[index]['name'],
                  location: demoMediaCardData[index]['location'],
                  rating: demoMediaCardData[index]['ration'],
                  deliveryTime: demoMediaCardData[index]['delivertTime'],
                  image: demoMediaCardData[index]['image'],
                ),
              ),
            )),
          )),

          //////////barrr
          SliverPadding(
            padding: const EdgeInsets.only(
                top: 40.0, bottom: 40.0, left: 30, right: 30),
            sliver: SliverToBoxAdapter(
              child: Container(
                  height: 2,
                  width: Size.width / 0.4,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 151, 149, 149))),
            ),
          ),

          //Deal of the Day

          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text("Deal of the Day",
                    style: GoogleFonts.openSans(
                      color: Color(0xFF2D2D2D),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
            ),
          ),

          //Deal of the Day picture
          SliverPadding(
            padding: const EdgeInsets.all(5.0),
            sliver: SliverToBoxAdapter(
                child: Stack(
              children: [
                Container(
                  height: Size.height / 4,
                  width: Size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.network(
                      "https://foodfinger.in/wp-content/uploads/2021/04/Food-Finger-Special-Shawarma-Roll-scaled.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 110, 109, 109),
                      spreadRadius: 1.0,
                      blurRadius: 6.0,
                    )
                  ], borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Positioned(
                    child: Container(
                        height: Size.height / 7,
                        width: Size.width / 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Roll,s For",
                                  style: GoogleFonts.lobster(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Row(
                                children: [
                                  Icon(Icons.currency_rupee,
                                      size: 22, color: Colors.white),
                                  Text("69 Only",
                                      style: GoogleFonts.lobster(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))
                                ],
                              )
                            ],
                          ),
                        ))),
                Positioned(
                    bottom: 15,
                    right: 15,
                    child: Container(
                        height: Size.width / 12,
                        width: Size.width / 6,
                        child: Center(
                          child: Text("Order now",
                              style: GoogleFonts.lobster(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))))
              ],
            )),
          ),

          ////////////////bar
          SliverPadding(
            padding: const EdgeInsets.only(
                top: 40.0, bottom: 40.0, left: 30, right: 30),
            sliver: SliverToBoxAdapter(
              child: Container(
                  height: 2,
                  width: Size.width / 0.4,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 151, 149, 149))),
            ),
          ),

          //All restaurents
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text("ALL RESTAURENT",
                    style: GoogleFonts.openSans(
                      color: Color(0xFF2D2D2D),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
            ),
          ),
//sort,nearest,great offers,Rating 4+
          //sort(inkwell),nearest,greatoffers,rating 4+,veg,non veg,more(inkwell)
          SliverToBoxAdapter(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.sort),
                        Text("sort",
                            style: GoogleFonts.openSans(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    height: Size.height / 26,
                    width: Size.width / 4.8,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 250, 248),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 155, 154, 154),
                            spreadRadius: 1,
                            blurRadius: 4,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: Size.height / 26,
                    width: Size.width / 4.8,
                    child: Center(
                      child: Text("Nearest",
                          style: GoogleFonts.openSans(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 250, 248),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 155, 154, 154),
                            spreadRadius: 1,
                            blurRadius: 4,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: Size.height / 26,
                    width: Size.width / 4.8,
                    child: Center(
                      child: Text("offers",
                          style: GoogleFonts.openSans(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 250, 248),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 155, 154, 154),
                            spreadRadius: 1,
                            blurRadius: 4,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: Size.height / 26,
                    width: Size.width / 4.8,
                    child: Center(
                      child: Text("4.0+",
                          style: GoogleFonts.openSans(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 250, 248),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 155, 154, 154),
                            spreadRadius: 1,
                            blurRadius: 4,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: Size.height / 26,
                    width: Size.width / 4.8,
                    child: Center(
                      child: Text("Veg",
                          style: GoogleFonts.openSans(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 250, 248),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 155, 154, 154),
                            spreadRadius: 1,
                            blurRadius: 4,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: Size.height / 26,
                    width: Size.width / 4.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("more",
                            style: GoogleFonts.openSans(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        Icon(Icons.sort)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 250, 248),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 155, 154, 154),
                            spreadRadius: 1,
                            blurRadius: 4,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ),
              ],
            ),
          )),
//5 restaurents are available
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text("5 restaurents are available",
                    style: GoogleFonts.openSans(
                      color: Color.fromARGB(136, 92, 91, 91),
                      fontSize: 17,
                    )),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text("FEATURED",
                    style: GoogleFonts.openSans(
                      color: Color.fromARGB(136, 92, 91, 91),
                      fontSize: 17,
                    )),
              ),
            ),
          ),

          //5 restaurents are available
          SliverPadding(
            padding: const EdgeInsets.only(
                top: 16.0, left: 8.0, right: 8.0, bottom: 16),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  //////////////////1111111111111111111
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8, top: 16, bottom: 16),
                    child: Container(
                      height: Size.height / 3,
                      width: Size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 110, 109, 109),
                              spreadRadius: 1.0,
                              blurRadius: 10.0,
                            )
                          ]),
                      child: Column(
                        children: [
                          Stack(alignment: Alignment.bottomRight, children: [
                            Container(
                              height: Size.height / 4.5,
                              width: Size.width,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RestaurentPage()));
                                },
                                child: ClipRRect(
                                  child: Hero(
                                    tag: 'background',
                                    child: Image.asset(
                                        "assets/images/big_2.png",
                                        fit: BoxFit.cover),
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16)),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16))),
                            ),
                            Positioned(
                              top: 10,
                              right: 5,
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                  Icon(Icons.share,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 8,
                                left: 5,
                                child: Container(
                                    height: Size.width / 11,
                                    width: Size.width / 2.2,
                                    child: Center(
                                      child: Text('50% OFF up to Rs.200',
                                          style: GoogleFonts.openSans(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)))))
                          ]),
                          Container(
                            height: Size.height / 9.5,
                            width: Size.width,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Food Land ITC",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        Text("Biriyani-North Indian-Chinees",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.alarm, size: 12),
                                            Text(
                                              "25-30 min",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "1KM",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "FREE DELIVERY",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 254, 4, 4),
                                                  fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: Size.height / 24,
                                      width: Size.width / 10,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12))),
                                      child: Center(
                                          child: Text(
                                        "4.4",
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  )
                                ]),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16)),
                                color: Colors.white),
                            //////////////////////////////////////////////////////////////////////////////////////////////
                          )
                        ],
                      ),
                    ),
                  ),

//////////////////////////222222222222222222
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8, top: 16, bottom: 16),
                    child: Container(
                      height: Size.height / 3,
                      width: Size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 110, 109, 109),
                              spreadRadius: 1.0,
                              blurRadius: 10.0,
                            )
                          ]),
                      child: Column(
                        children: [
                          Stack(alignment: Alignment.bottomRight, children: [
                            Container(
                              height: Size.height / 4.5,
                              width: Size.width,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RestaurentPage()));
                                },
                                child: ClipRRect(
                                  child: Hero(
                                    tag: 'background',
                                    child: Image.asset(
                                        "assets/images/big_2.png",
                                        fit: BoxFit.cover),
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16)),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16))),
                            ),
                            Positioned(
                              top: 10,
                              right: 5,
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                  Icon(Icons.share,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 8,
                                left: 5,
                                child: Container(
                                    height: Size.width / 11,
                                    width: Size.width / 2.2,
                                    child: Center(
                                      child: Text('50% OFF up to Rs.200',
                                          style: GoogleFonts.openSans(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)))))
                          ]),
                          Container(
                            height: Size.height / 9.5,
                            width: Size.width,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Food Land ITC",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        Text("Biriyani-North Indian-Chinees",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.alarm, size: 12),
                                            Text(
                                              "25-30 min",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "1KM",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "FREE DELIVERY",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 254, 4, 4),
                                                  fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: Size.height / 24,
                                      width: Size.width / 10,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12))),
                                      child: Center(
                                          child: Text(
                                        "4.4",
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  )
                                ]),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16)),
                                color: Colors.white),
                            //////////////////////////////////////////////////////////////////////////////////////////////
                          )
                        ],
                      ),
                    ),
                  ),

///////////////////////////////////333333333333333333
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8, top: 16, bottom: 16),
                    child: Container(
                      height: Size.height / 3,
                      width: Size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 110, 109, 109),
                              spreadRadius: 1.0,
                              blurRadius: 10.0,
                            )
                          ]),
                      child: Column(
                        children: [
                          Stack(alignment: Alignment.bottomRight, children: [
                            Container(
                              height: Size.height / 4.5,
                              width: Size.width,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RestaurentPage()));
                                },
                                child: ClipRRect(
                                  child: Hero(
                                    tag: 'background',
                                    child: Image.asset(
                                        "assets/images/big_2.png",
                                        fit: BoxFit.cover),
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16)),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16))),
                            ),
                            Positioned(
                              top: 10,
                              right: 5,
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                  Icon(Icons.share,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 8,
                                left: 5,
                                child: Container(
                                    height: Size.width / 11,
                                    width: Size.width / 2.2,
                                    child: Center(
                                      child: Text('50% OFF up to Rs.200',
                                          style: GoogleFonts.openSans(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)))))
                          ]),
                          Container(
                            height: Size.height / 9.5,
                            width: Size.width,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Food Land ITC",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        Text("Biriyani-North Indian-Chinees",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.alarm, size: 12),
                                            Text(
                                              "25-30 min",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "1KM",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "FREE DELIVERY",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 254, 4, 4),
                                                  fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: Size.height / 24,
                                      width: Size.width / 10,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12))),
                                      child: Center(
                                          child: Text(
                                        "4.4",
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  )
                                ]),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16)),
                                color: Colors.white),
                            //////////////////////////////////////////////////////////////////////////////////////////////
                          )
                        ],
                      ),
                    ),
                  ),
///////////////////////////////444444444444444444444
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8, top: 16, bottom: 16),
                    child: Container(
                      height: Size.height / 3,
                      width: Size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 110, 109, 109),
                              spreadRadius: 1.0,
                              blurRadius: 10.0,
                            )
                          ]),
                      child: Column(
                        children: [
                          Stack(alignment: Alignment.bottomRight, children: [
                            Container(
                              height: Size.height / 4.5,
                              width: Size.width,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RestaurentPage()));
                                },
                                child: ClipRRect(
                                  child: Hero(
                                    tag: 'background',
                                    child: Image.asset(
                                        "assets/images/big_2.png",
                                        fit: BoxFit.cover),
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16)),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16))),
                            ),
                            Positioned(
                              top: 10,
                              right: 5,
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                  Icon(Icons.share,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 8,
                                left: 5,
                                child: Container(
                                    height: Size.width / 11,
                                    width: Size.width / 2.2,
                                    child: Center(
                                      child: Text('50% OFF up to Rs.200',
                                          style: GoogleFonts.openSans(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)))))
                          ]),
                          Container(
                            height: Size.height / 9.5,
                            width: Size.width,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Food Land ITC",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        Text("Biriyani-North Indian-Chinees",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.alarm, size: 12),
                                            Text(
                                              "25-30 min",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "1KM",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "FREE DELIVERY",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 254, 4, 4),
                                                  fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: Size.height / 24,
                                      width: Size.width / 10,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12))),
                                      child: Center(
                                          child: Text(
                                        "4.4",
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  )
                                ]),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16)),
                                color: Colors.white),
                            //////////////////////////////////////////////////////////////////////////////////////////////
                          )
                        ],
                      ),
                    ),
                  ),

//////////////////////////////////555555555555555555555
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8, top: 16, bottom: 16),
                    child: Container(
                      height: Size.height / 3,
                      width: Size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 110, 109, 109),
                              spreadRadius: 1.0,
                              blurRadius: 10.0,
                            )
                          ]),
                      child: Column(
                        children: [
                          Stack(alignment: Alignment.bottomRight, children: [
                            Container(
                              height: Size.height / 4.5,
                              width: Size.width,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RestaurentPage()));
                                },
                                child: ClipRRect(
                                  child: Hero(
                                    tag: 'background',
                                    child: Image.asset(
                                        "assets/images/big_2.png",
                                        fit: BoxFit.cover),
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16)),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16))),
                            ),
                            Positioned(
                              top: 10,
                              right: 5,
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                  Icon(Icons.share,
                                      size: 32,
                                      color:
                                          Color.fromARGB(255, 149, 149, 148)),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 8,
                                left: 5,
                                child: Container(
                                    height: Size.width / 11,
                                    width: Size.width / 2.2,
                                    child: Center(
                                      child: Text('50% OFF up to Rs.200',
                                          style: GoogleFonts.openSans(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)))))
                          ]),
                          Container(
                            height: Size.height / 9.5,
                            width: Size.width,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Food Land ITC",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        Text("Biriyani-North Indian-Chinees",
                                            style: GoogleFonts.openSans(
                                                color: Colors.black)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.alarm, size: 12),
                                            Text(
                                              "25-30 min",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "1KM",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 88, 87, 87),
                                                  fontSize: 12),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Color.fromARGB(
                                                  255, 88, 87, 87),
                                              radius: 1,
                                            ),
                                            Text(
                                              "FREE DELIVERY",
                                              style: GoogleFonts.openSans(
                                                  color: Color.fromARGB(
                                                      255, 254, 4, 4),
                                                  fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: Size.height / 24,
                                      width: Size.width / 10,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12))),
                                      child: Center(
                                          child: Text(
                                        "4.4",
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  )
                                ]),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16)),
                                color: Colors.white),
                            //////////////////////////////////////////////////////////////////////////////////////////////
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //BUDGET BIRIYANY
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.25,
              child: Text("BUDGET BIRIYANI.....",
                  style: GoogleFonts.pacifico(
                      color: Color(0xFFE23744),
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    super.key,
    required this.title,
    required this.image,
    required this.location,
    required this.rating,
    required this.deliveryTime,
  });
  final String title, image, location;
  final double rating;
  final int deliveryTime;

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Container(
      height: Size.height / 3.6,
      width: Size.width / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 128, 127, 127),
                spreadRadius: 0.2,
                blurRadius: 0.2)
          ]),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RestaurentPage()));
        },
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 253, 246, 246),
              spreadRadius: 2.0,
              blurRadius: 10.0,
            )
          ], borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Container(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                    aspectRatio: 1.45,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12)),
                        child: Image.network(
                            "https://tse3.mm.bing.net/th?id=OIP.er1Gr9IUMiCMtFeZdSHdAAHaE8&pid=Api&P=0",
                            fit: BoxFit.cover))),
                Container(
                  child: Text(title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6),
                ),
                Container(
                  child: Text(location,
                      maxLines: 1,
                      style: GoogleFonts.openSans(
                          color: Color.fromARGB(255, 126, 124, 124))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Container(
                    child: DefaultTextStyle(
                      style: GoogleFonts.openSans(
                          color: Colors.black, fontSize: 12),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 4,
                              ),
                              child: Text(rating.toString(),
                                  style: GoogleFonts.openSans(
                                      color: Colors.white, fontSize: 12)),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                color: Color.fromARGB(255, 5, 154, 10),
                              )),
                          Spacer(),
                          Text("$deliveryTime min"),
                          Spacer(),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          Spacer(),
                          Text("Free Delivery")
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
