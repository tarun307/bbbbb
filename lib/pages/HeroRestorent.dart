import 'package:flutter/material.dart';

class RestaurentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F2),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Color(0xFFE23744),
          pinned: true,
          toolbarHeight: 28,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Container(
                  height: size.height / 10,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Food Land ITC",
                                style: TextStyle(
                                    color: Color(0xFF2D2D2D),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text("Biriyani-North Indian-Chinees",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xFF2D2D2D))),
                            Text("Free Delivery for more than 500rs order",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 1, 250, 1)))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height / 22,
                          width: size.width / 9,
                          child: Center(
                            child: Text("4.4",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 250, 249, 249),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                        ),
                      )
                    ],
                  ))),
          elevation: 0.0,
          expandedHeight: 350,
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: 'background',
              child: Image.asset(
                "assets/images/big_2.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        //////////////////offers
        SliverToBoxAdapter(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 1,
                width: size.width / 3,
                color: Color.fromARGB(255, 151, 149, 149)),
            Text(
              'Offers',
              style: TextStyle(
                  color: Color.fromARGB(255, 151, 149, 149), fontSize: 18),
            ),
            Container(
                height: 1,
                width: size.width / 3,
                color: Color.fromARGB(255, 151, 149, 149))
          ],
        )),
        /////////////////offers
        SliverToBoxAdapter(
            child: Container(
          height: size.height / 10,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Free Delivery",
                        style: TextStyle(
                            color: Color(0xFF2D2D2D),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text("Upto 60% off,Flat discounts,",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF2D2D2D))),
                    Text("and other great offers",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF2D2D2D))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    height: size.height / 10,
                    width: size.width / 5,
                    child: Image.network(
                      "https://tse4.mm.bing.net/th?id=OIP.thFr12FChyW7zvjUxlAwUAHaH0&pid=Api&P=0",
                      fit: BoxFit.fill,
                    )),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
        )),
        ////////////////////veh ninveg bestseller rating 4+
        SliverPadding(
          padding:
              const EdgeInsets.only(left: 2.0, right: 2, top: 9, bottom: 9),
          sliver: SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                      Text("Veg",
                          style: TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  height: size.height / 26,
                  width: size.width / 4.8,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 250, 248),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 155, 154, 154),
                          spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height / 26,
                  width: size.width / 4.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Color.fromARGB(255, 182, 49, 1),
                      ),
                      Text("NonVeg",
                          style: TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 250, 248),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 155, 154, 154),
                          spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height / 26,
                  width: size.width / 4.8,
                  child: Center(
                    child: Text("Best Seller",
                        style: TextStyle(
                            color: Color(0xFF2D2D2D),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 250, 248),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 155, 154, 154),
                          spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height / 26,
                  width: size.width / 4.8,
                  child: Center(
                    child: Text("Rating 4.0+",
                        style: TextStyle(
                            color: Color(0xFF2D2D2D),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 250, 248),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 155, 154, 154),
                          spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
            ],
          )),
        ),
        ////////////Recomended
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverToBoxAdapter(
              child: Container(
            height: size.height / 17,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Recomended",
                  style: TextStyle(
                      color: Color(0xFF2D2D2D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            decoration: BoxDecoration(color: Colors.white),
          )),
        ),
        ////////////////items
        SliverToBoxAdapter(
            child: Container(
          height: size.height / 4.5,
          width: size.width,
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height / 40,
                    width: size.width / 8,
                    child: Center(
                      child: Text("BestSeller",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 161, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  Text("Indi Tandoori Paneer",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Text("Pizza",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Container(
                        height: size.height / 45,
                        width: size.width / 5,
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star_border_outlined,
                                color: Colors.amberAccent, size: 15)
                          ],
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.amberAccent),
                            color: Color.fromARGB(255, 245, 231, 189),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("43 ratings"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee, size: 15),
                      Text(
                        "319",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("It is hot.It is Spicy.It is",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("oh-so-Indian.Tanoori paneer with",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("capsicum,red paprika and mint maya.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: size.height / 4.5,
                width: size.width / 2.4,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Container(
                              height: size.height,
                              width: size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12))),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.width / 2,
                                      width: size.width,
                                      color: Colors.transparent,
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: size.width / 4,
                                        width: size.width,
                                        alignment: Alignment.bottomCenter,
                                        child: Center(
                                            child: InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(Icons.cancel,
                                              size: 40,
                                              color: Color.fromARGB(
                                                  255, 189, 187, 187)),
                                        )),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20)),
                                        color: Color(0xFFF4F4F2),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Container(
                                                height: size.height / 3.5,
                                                width: size.width,
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                14)),
                                                    child: Image.network(
                                                        "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                                        fit: BoxFit.cover))),
                                          ),
                                          Text("Indi Tandoori Paneer,Pizza",
                                              style: TextStyle(
                                                  color: Color(0xFF2D2D2D),
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w500)),
                                          Padding(
                                            padding: const EdgeInsets.all(14.0),
                                            child: Container(
                                              height: size.height / 2.7,
                                              width: size.width,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: size.width / 6,
                                                    width: size.width,
                                                    child: Column(
                                                      children: [
                                                        Text("Add ons",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        Text(
                                                            "Select upto 3 options",
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        98,
                                                                        96,
                                                                        96),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                      ],
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        14),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        14))),
                                                  ),
                                                  Column(
                                                    children: [
                                                      ListTile(
                                                        leading: CircleAvatar(
                                                          backgroundColor:
                                                              Color(0xFF2D2D2D),
                                                          radius: 7,
                                                        ),
                                                        title: Text(
                                                            "Spicy Chees Dip",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF2D2D2D))),
                                                        trailing: Text("Rs.30",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF2D2D2D))),
                                                      ),
                                                      ListTile(
                                                        leading: CircleAvatar(
                                                          backgroundColor:
                                                              Color(0xFF2D2D2D),
                                                          radius: 7,
                                                        ),
                                                        title: Text(
                                                            "Spicy Chees Dip",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF2D2D2D))),
                                                        trailing: Text("Rs.30",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF2D2D2D))),
                                                      ),
                                                      ListTile(
                                                        leading: CircleAvatar(
                                                          backgroundColor:
                                                              Color(0xFF2D2D2D),
                                                          radius: 7,
                                                        ),
                                                        title: Text(
                                                            "Spicy Chees Dip",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF2D2D2D))),
                                                        trailing: Text("Rs.30",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF2D2D2D))),
                                                      ),
                                                      ListTile(
                                                        leading: CircleAvatar(
                                                          backgroundColor:
                                                              Color(0xFF2D2D2D),
                                                          radius: 7,
                                                        ),
                                                        title: Text(
                                                            "Spicy Chees Dip",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF2D2D2D))),
                                                        trailing: Text("Rs.30",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF2D2D2D))),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(14))),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(14.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: size.height / 15,
                                                  width: size.width / 3.4,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text("+",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      Text("1",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      Text("-",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  14)),
                                                      color: Color.fromARGB(
                                                          255, 245, 222, 224),
                                                      border: Border.all(
                                                          width: 1,
                                                          color: Color(
                                                              0xFFE23744))),
                                                ),
                                                Container(
                                                  height: size.height / 15,
                                                  width: size.width / 1.7,
                                                  child: Center(
                                                    child: Text("Order Now",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  14)),
                                                      color: Color(0xFFE23744)),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height / 5.5,
                          width: size.width / 2.8,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: Image.network(
                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                  fit: BoxFit.cover)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      Positioned(
                          left: size.width / 18.6,
                          bottom: size.width / 26,
                          child: Container(
                              height: size.height / 19,
                              width: size.width / 3.4,
                              child: Center(
                                  child: Text("ADD",
                                      style: TextStyle(
                                          color: Color(0xFFE23744),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500))),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color.fromARGB(255, 246, 204, 218),
                                  border: Border.all(
                                      width: 1, color: Color(0xFFE23744)))))
                    ],
                  ),
                ))
          ]),
        )),
        SliverToBoxAdapter(
            child: Container(
          height: size.height / 4.5,
          width: size.width,
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height / 40,
                    width: size.width / 8,
                    child: Center(
                      child: Text("BestSeller",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 161, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  Text("Indi Tandoori Paneer",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Text("Pizza",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Container(
                        height: size.height / 45,
                        width: size.width / 5,
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star_border_outlined,
                                color: Colors.amberAccent, size: 15)
                          ],
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.amberAccent),
                            color: Color.fromARGB(255, 245, 231, 189),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("43 ratings"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee, size: 15),
                      Text(
                        "319",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("It is hot.It is Spicy.It is",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("oh-so-Indian.Tanoori paneer with",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("capsicum,red paprika and mint maya.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: size.height / 4.5,
                width: size.width / 2.4,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Color(0xFFF4F4F2),
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                                height: size.height,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12))),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                          height: size.height / 3.5,
                                          width: size.width,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(14)),
                                              child: Image.network(
                                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                                  fit: BoxFit.cover))),
                                    ),
                                    Text("Indi Tandoori Paneer,Pizza",
                                        style: TextStyle(
                                            color: Color(0xFF2D2D2D),
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500)),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                          "In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.",
                                          style: TextStyle(
                                              color: Color(0xFF2D2D2D),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Container(
                                        height: size.height / 2.7,
                                        width: size.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: size.width / 6,
                                              width: size.width,
                                              child: Column(
                                                children: [
                                                  Text("Add ons",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text("Select upto 3 options",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 98, 96, 96),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  14),
                                                          topLeft:
                                                              Radius.circular(
                                                                  14))),
                                            ),
                                            Column(
                                              children: [
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(14))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 3.4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("+",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("1",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("-",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color.fromARGB(
                                                    255, 245, 222, 224),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Color(0xFFE23744))),
                                          ),
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 1.7,
                                            child: Center(
                                              child: Text("Order Now",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color(0xFFE23744)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          );
                        });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height / 5.5,
                          width: size.width / 2.8,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: Image.network(
                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                  fit: BoxFit.cover)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      Positioned(
                          left: size.width / 18.6,
                          bottom: size.width / 26,
                          child: Container(
                              height: size.height / 19,
                              width: size.width / 3.4,
                              child: Center(
                                  child: Text("ADD",
                                      style: TextStyle(
                                          color: Color(0xFFE23744),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500))),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color.fromARGB(255, 246, 204, 218),
                                  border: Border.all(
                                      width: 1, color: Color(0xFFE23744)))))
                    ],
                  ),
                ))
          ]),
        )),
        SliverToBoxAdapter(
            child: Container(
          height: size.height / 4.5,
          width: size.width,
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height / 40,
                    width: size.width / 8,
                    child: Center(
                      child: Text("BestSeller",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 161, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  Text("Indi Tandoori Paneer",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Text("Pizza",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Container(
                        height: size.height / 45,
                        width: size.width / 5,
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star_border_outlined,
                                color: Colors.amberAccent, size: 15)
                          ],
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.amberAccent),
                            color: Color.fromARGB(255, 245, 231, 189),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("43 ratings"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee, size: 15),
                      Text(
                        "319",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("It is hot.It is Spicy.It is",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("oh-so-Indian.Tanoori paneer with",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("capsicum,red paprika and mint maya.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: size.height / 4.5,
                width: size.width / 2.4,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Color(0xFFF4F4F2),
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                                height: size.height,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12))),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                          height: size.height / 3.5,
                                          width: size.width,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(14)),
                                              child: Image.network(
                                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                                  fit: BoxFit.cover))),
                                    ),
                                    Text("Indi Tandoori Paneer,Pizza",
                                        style: TextStyle(
                                            color: Color(0xFF2D2D2D),
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500)),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                          "In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.",
                                          style: TextStyle(
                                              color: Color(0xFF2D2D2D),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Container(
                                        height: size.height / 2.7,
                                        width: size.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: size.width / 6,
                                              width: size.width,
                                              child: Column(
                                                children: [
                                                  Text("Add ons",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text("Select upto 3 options",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 98, 96, 96),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  14),
                                                          topLeft:
                                                              Radius.circular(
                                                                  14))),
                                            ),
                                            Column(
                                              children: [
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(14))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 3.4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("+",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("1",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("-",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color.fromARGB(
                                                    255, 245, 222, 224),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Color(0xFFE23744))),
                                          ),
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 1.7,
                                            child: Center(
                                              child: Text("Order Now",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color(0xFFE23744)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          );
                        });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height / 5.5,
                          width: size.width / 2.8,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: Image.network(
                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                  fit: BoxFit.cover)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      Positioned(
                          left: size.width / 18.6,
                          bottom: size.width / 26,
                          child: Container(
                              height: size.height / 19,
                              width: size.width / 3.4,
                              child: Center(
                                  child: Text("ADD",
                                      style: TextStyle(
                                          color: Color(0xFFE23744),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500))),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color.fromARGB(255, 246, 204, 218),
                                  border: Border.all(
                                      width: 1, color: Color(0xFFE23744)))))
                    ],
                  ),
                ))
          ]),
        )),
        SliverToBoxAdapter(
            child: Container(
          height: size.height / 4.5,
          width: size.width,
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height / 40,
                    width: size.width / 8,
                    child: Center(
                      child: Text("BestSeller",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 161, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  Text("Indi Tandoori Paneer",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Text("Pizza",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Container(
                        height: size.height / 45,
                        width: size.width / 5,
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star_border_outlined,
                                color: Colors.amberAccent, size: 15)
                          ],
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.amberAccent),
                            color: Color.fromARGB(255, 245, 231, 189),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("43 ratings"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee, size: 15),
                      Text(
                        "319",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("It is hot.It is Spicy.It is",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("oh-so-Indian.Tanoori paneer with",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("capsicum,red paprika and mint maya.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: size.height / 4.5,
                width: size.width / 2.4,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Color(0xFFF4F4F2),
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                                height: size.height,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12))),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                          height: size.height / 3.5,
                                          width: size.width,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(14)),
                                              child: Image.network(
                                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                                  fit: BoxFit.cover))),
                                    ),
                                    Text("Indi Tandoori Paneer,Pizza",
                                        style: TextStyle(
                                            color: Color(0xFF2D2D2D),
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500)),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                          "In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.",
                                          style: TextStyle(
                                              color: Color(0xFF2D2D2D),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Container(
                                        height: size.height / 2.7,
                                        width: size.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: size.width / 6,
                                              width: size.width,
                                              child: Column(
                                                children: [
                                                  Text("Add ons",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text("Select upto 3 options",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 98, 96, 96),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  14),
                                                          topLeft:
                                                              Radius.circular(
                                                                  14))),
                                            ),
                                            Column(
                                              children: [
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(14))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 3.4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("+",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("1",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("-",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color.fromARGB(
                                                    255, 245, 222, 224),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Color(0xFFE23744))),
                                          ),
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 1.7,
                                            child: Center(
                                              child: Text("Order Now",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color(0xFFE23744)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          );
                        });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height / 5.5,
                          width: size.width / 2.8,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: Image.network(
                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                  fit: BoxFit.cover)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      Positioned(
                          left: size.width / 18.6,
                          bottom: size.width / 26,
                          child: Container(
                              height: size.height / 19,
                              width: size.width / 3.4,
                              child: Center(
                                  child: Text("ADD",
                                      style: TextStyle(
                                          color: Color(0xFFE23744),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500))),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color.fromARGB(255, 246, 204, 218),
                                  border: Border.all(
                                      width: 1, color: Color(0xFFE23744)))))
                    ],
                  ),
                ))
          ]),
        )),
        SliverToBoxAdapter(
            child: Container(
          height: size.height / 4.5,
          width: size.width,
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height / 40,
                    width: size.width / 8,
                    child: Center(
                      child: Text("BestSeller",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 161, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  Text("Indi Tandoori Paneer",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Text("Pizza",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Container(
                        height: size.height / 45,
                        width: size.width / 5,
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star_border_outlined,
                                color: Colors.amberAccent, size: 15)
                          ],
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.amberAccent),
                            color: Color.fromARGB(255, 245, 231, 189),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("43 ratings"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee, size: 15),
                      Text(
                        "319",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("It is hot.It is Spicy.It is",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("oh-so-Indian.Tanoori paneer with",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("capsicum,red paprika and mint maya.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: size.height / 4.5,
                width: size.width / 2.4,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Color(0xFFF4F4F2),
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                                height: size.height,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12))),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                          height: size.height / 3.5,
                                          width: size.width,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(14)),
                                              child: Image.network(
                                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                                  fit: BoxFit.cover))),
                                    ),
                                    Text("Indi Tandoori Paneer,Pizza",
                                        style: TextStyle(
                                            color: Color(0xFF2D2D2D),
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500)),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                          "In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.",
                                          style: TextStyle(
                                              color: Color(0xFF2D2D2D),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Container(
                                        height: size.height / 2.7,
                                        width: size.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: size.width / 6,
                                              width: size.width,
                                              child: Column(
                                                children: [
                                                  Text("Add ons",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text("Select upto 3 options",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 98, 96, 96),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  14),
                                                          topLeft:
                                                              Radius.circular(
                                                                  14))),
                                            ),
                                            Column(
                                              children: [
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(14))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 3.4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("+",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("1",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("-",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color.fromARGB(
                                                    255, 245, 222, 224),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Color(0xFFE23744))),
                                          ),
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 1.7,
                                            child: Center(
                                              child: Text("Order Now",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color(0xFFE23744)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          );
                        });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height / 5.5,
                          width: size.width / 2.8,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: Image.network(
                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                  fit: BoxFit.cover)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      Positioned(
                          left: size.width / 18.6,
                          bottom: size.width / 26,
                          child: Container(
                              height: size.height / 19,
                              width: size.width / 3.4,
                              child: Center(
                                  child: Text("ADD",
                                      style: TextStyle(
                                          color: Color(0xFFE23744),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500))),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color.fromARGB(255, 246, 204, 218),
                                  border: Border.all(
                                      width: 1, color: Color(0xFFE23744)))))
                    ],
                  ),
                ))
          ]),
        )),
        SliverToBoxAdapter(
            child: Container(
          height: size.height / 4.5,
          width: size.width,
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height / 40,
                    width: size.width / 8,
                    child: Center(
                      child: Text("BestSeller",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 161, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  Text("Indi Tandoori Paneer",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Text("Pizza",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Container(
                        height: size.height / 45,
                        width: size.width / 5,
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star_border_outlined,
                                color: Colors.amberAccent, size: 15)
                          ],
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.amberAccent),
                            color: Color.fromARGB(255, 245, 231, 189),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("43 ratings"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee, size: 15),
                      Text(
                        "319",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("It is hot.It is Spicy.It is",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("oh-so-Indian.Tanoori paneer with",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("capsicum,red paprika and mint maya.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: size.height / 4.5,
                width: size.width / 2.4,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Color(0xFFF4F4F2),
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                                height: size.height,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12))),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                          height: size.height / 3.5,
                                          width: size.width,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(14)),
                                              child: Image.network(
                                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                                  fit: BoxFit.cover))),
                                    ),
                                    Text("Indi Tandoori Paneer,Pizza",
                                        style: TextStyle(
                                            color: Color(0xFF2D2D2D),
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500)),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                          "In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.",
                                          style: TextStyle(
                                              color: Color(0xFF2D2D2D),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Container(
                                        height: size.height / 2.7,
                                        width: size.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: size.width / 6,
                                              width: size.width,
                                              child: Column(
                                                children: [
                                                  Text("Add ons",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text("Select upto 3 options",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 98, 96, 96),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  14),
                                                          topLeft:
                                                              Radius.circular(
                                                                  14))),
                                            ),
                                            Column(
                                              children: [
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(14))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 3.4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("+",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("1",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("-",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color.fromARGB(
                                                    255, 245, 222, 224),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Color(0xFFE23744))),
                                          ),
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 1.7,
                                            child: Center(
                                              child: Text("Order Now",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color(0xFFE23744)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          );
                        });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height / 5.5,
                          width: size.width / 2.8,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: Image.network(
                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                  fit: BoxFit.cover)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      Positioned(
                          left: size.width / 18.6,
                          bottom: size.width / 26,
                          child: Container(
                              height: size.height / 19,
                              width: size.width / 3.4,
                              child: Center(
                                  child: Text("ADD",
                                      style: TextStyle(
                                          color: Color(0xFFE23744),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500))),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color.fromARGB(255, 246, 204, 218),
                                  border: Border.all(
                                      width: 1, color: Color(0xFFE23744)))))
                    ],
                  ),
                ))
          ]),
        )),
        SliverToBoxAdapter(
            child: Container(
          height: size.height / 4.5,
          width: size.width,
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height / 40,
                    width: size.width / 8,
                    child: Center(
                      child: Text("BestSeller",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400)),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 161, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  Text("Indi Tandoori Paneer",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Text("Pizza",
                      style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      Container(
                        height: size.height / 45,
                        width: size.width / 5,
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            Icon(Icons.star_border_outlined,
                                color: Colors.amberAccent, size: 15)
                          ],
                        ),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.amberAccent),
                            color: Color.fromARGB(255, 245, 231, 189),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("43 ratings"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee, size: 15),
                      Text(
                        "319",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("It is hot.It is Spicy.It is",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("oh-so-Indian.Tanoori paneer with",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                      Text("capsicum,red paprika and mint maya.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 126, 126),
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: size.height / 4.5,
                width: size.width / 2.4,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Color(0xFFF4F4F2),
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                                height: size.height,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12))),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                          height: size.height / 3.5,
                                          width: size.width,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(14)),
                                              child: Image.network(
                                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                                  fit: BoxFit.cover))),
                                    ),
                                    Text("Indi Tandoori Paneer,Pizza",
                                        style: TextStyle(
                                            color: Color(0xFF2D2D2D),
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500)),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                          "In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.In casual settings, however, it is cut into wedges to be eaten while held in the hand.",
                                          style: TextStyle(
                                              color: Color(0xFF2D2D2D),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Container(
                                        height: size.height / 2.7,
                                        width: size.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: size.width / 6,
                                              width: size.width,
                                              child: Column(
                                                children: [
                                                  Text("Add ons",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text("Select upto 3 options",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 98, 96, 96),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  14),
                                                          topLeft:
                                                              Radius.circular(
                                                                  14))),
                                            ),
                                            Column(
                                              children: [
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                ),
                                                ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2D2D2D),
                                                    radius: 7,
                                                  ),
                                                  title: Text("Spicy Chees Dip",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                  trailing: Text("Rs.30",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF2D2D2D))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(14))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 3.4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("+",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("1",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("-",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color.fromARGB(
                                                    255, 245, 222, 224),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Color(0xFFE23744))),
                                          ),
                                          Container(
                                            height: size.height / 15,
                                            width: size.width / 1.7,
                                            child: Center(
                                              child: Text("Order Now",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)),
                                                color: Color(0xFFE23744)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          );
                        });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height / 5.5,
                          width: size.width / 2.8,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: Image.network(
                                  "https://tse4.mm.bing.net/th?id=OIP.aJNxkymaTLFYmiptBKkQyQHaFE&pid=Api&P=0",
                                  fit: BoxFit.cover)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      Positioned(
                          left: size.width / 18.6,
                          bottom: size.width / 26,
                          child: Container(
                              height: size.height / 19,
                              width: size.width / 3.4,
                              child: Center(
                                  child: Text("ADD",
                                      style: TextStyle(
                                          color: Color(0xFFE23744),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500))),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color.fromARGB(255, 246, 204, 218),
                                  border: Border.all(
                                      width: 1, color: Color(0xFFE23744)))))
                    ],
                  ),
                ))
          ]),
        ))
      ]),
    );
  }
}
