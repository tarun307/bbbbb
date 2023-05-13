import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F2),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            pinned: true,
            toolbarHeight: 60,
            leading: InkWell(
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFFE23774),
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            title: Container(
              height: Size.height / 20,
              width: Size.width / 0.3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF2D2D2D),
                      spreadRadius: 0.2,
                      blurRadius: 2,
                    )
                  ],
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 131, 129, 129)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 126, 125, 125),
                  ),
                  suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.clear,
                        color: Color.fromARGB(255, 126, 125, 125),
                      ),
                      onPressed: () {}),
                  hintText: "Restaurent names or a dish....",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          /////////////Expanded
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Search...",
                        style: TextStyle(
                          color: Color(0xFF2D2D2D),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    Text("See all",
                        style: TextStyle(
                          color: Color(0xFF2D2D2D),
                        )),
                  ]),
            ),
          ),

          ///////circular images
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                  height: Size.height / 3,
                  width: Size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),

                        ///////////////////////////////////////secont row
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://tse4.mm.bing.net/th?id=OIP.yhkrL81Wo6wxvfZnNjcCcAHaG1&pid=Api&P=0"),
                                    radius: 45,
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF2D2D2D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ),

          /////////////////////////ListTiles
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Center(
              child: Text("....Ongoing orders....",
                  style: TextStyle(
                      color: Color.fromARGB(255, 120, 118, 118),
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ),
          )),

          /////////////////////////////Listview ListTilw
          SliverToBoxAdapter(
              child: Container(
            height: Size.height,
            width: Size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: Size.height / 10,
                      width: Size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 110, 109, 109),
                                spreadRadius: 0.2,
                                blurRadius: 7)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: Size.height / 10,
                                  width: Size.width / 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12)),
                                  ),
                                  child: Image.network(
                                      "https://tse2.mm.bing.net/th?id=OIP.INbs1HhG9l3Vttn7d_wB5QHaEz&pid=Api&P=0",
                                      fit: BoxFit.cover)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rocking Rock Combo",
                                        style: TextStyle(
                                            color: Color(0xFF2D2D2D),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    Text("Rockings, MCC B.Block",
                                        style: TextStyle(
                                          color: Color(0xFF2D2D2D),
                                          fontSize: 15,
                                        )),
                                    Text("Number of orders: 4",
                                        style: TextStyle(
                                          color: Color(0xFF2D2D2D),
                                          fontSize: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 30,
                              ),
                              Text("300",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500))
                            ]),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: Size.height / 10,
                      width: Size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 110, 109, 109),
                                spreadRadius: 0.2,
                                blurRadius: 7)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: Size.height / 10,
                                  width: Size.width / 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12)),
                                  ),
                                  child: Image.network(
                                      "https://tse2.mm.bing.net/th?id=OIP.INbs1HhG9l3Vttn7d_wB5QHaEz&pid=Api&P=0",
                                      fit: BoxFit.cover)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rocking Rock Combo",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    Text("Rockings, MCC B.Block",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Text("Number of orders: 4",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 30,
                              ),
                              Text("300",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500))
                            ]),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: Size.height / 10,
                      width: Size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 110, 109, 109),
                                spreadRadius: 0.2,
                                blurRadius: 7)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: Size.height / 10,
                                  width: Size.width / 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12)),
                                  ),
                                  child: Image.network(
                                      "https://tse2.mm.bing.net/th?id=OIP.INbs1HhG9l3Vttn7d_wB5QHaEz&pid=Api&P=0",
                                      fit: BoxFit.cover)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rocking Rock Combo",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    Text("Rockings, MCC B.Block",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Text("Number of orders: 4",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 30,
                              ),
                              Text("300",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500))
                            ]),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: Size.height / 10,
                      width: Size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 110, 109, 109),
                                spreadRadius: 0.2,
                                blurRadius: 7)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: Size.height / 10,
                                  width: Size.width / 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12)),
                                  ),
                                  child: Image.network(
                                      "https://tse2.mm.bing.net/th?id=OIP.INbs1HhG9l3Vttn7d_wB5QHaEz&pid=Api&P=0",
                                      fit: BoxFit.cover)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rocking Rock Combo",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    Text("Rockings, MCC B.Block",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Text("Number of orders: 4",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 30,
                              ),
                              Text("300",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500))
                            ]),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: Size.height / 10,
                      width: Size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 110, 109, 109),
                                spreadRadius: 0.2,
                                blurRadius: 7)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: Size.height / 10,
                                  width: Size.width / 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12)),
                                  ),
                                  child: Image.network(
                                      "https://tse2.mm.bing.net/th?id=OIP.INbs1HhG9l3Vttn7d_wB5QHaEz&pid=Api&P=0",
                                      fit: BoxFit.cover)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rocking Rock Combo",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    Text("Rockings, MCC B.Block",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Text("Number of orders: 4",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 30,
                              ),
                              Text("300",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500))
                            ]),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: Size.height / 10,
                      width: Size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 110, 109, 109),
                                spreadRadius: 0.2,
                                blurRadius: 7)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: Size.height / 10,
                                  width: Size.width / 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12)),
                                  ),
                                  child: Image.network(
                                      "https://tse2.mm.bing.net/th?id=OIP.INbs1HhG9l3Vttn7d_wB5QHaEz&pid=Api&P=0",
                                      fit: BoxFit.cover)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rocking Rock Combo",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    Text("Rockings, MCC B.Block",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Text("Number of orders: 4",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 30,
                              ),
                              Text("300",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500))
                            ]),
                          ),
                        ],
                      )),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
