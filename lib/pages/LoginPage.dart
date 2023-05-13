import 'package:bb/BottemNav.dart';
import 'package:bb/pages/Page_View.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool isRememberMe = false;
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE23744),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: Size.height / 3,
            width: Size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: Size.width / 2,
                    width: Size.width / 1.6,
                    child: Center(
                        child: Image.network(
                      "https://img.freepik.com/free-vector/sign-concept-illustration_114360-125.jpg?w=740&t=st=1683884822~exp=1683885422~hmac=d335b20199576ebe22946f92236bbbad3b04cea6989df04cd6be10503670d2ee",
                      fit: BoxFit.cover,
                    ))),
                Container(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.anybody(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFE23744)),
                      ),
                    )),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150),
                    bottomLeft: Radius.circular(150)),
                color: Colors.white),
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                buildEmail(),
                SizedBox(
                  height: 10,
                ),
                buildPassword(),
                Container(
                    alignment: Alignment.centerRight,
                    child: Text("Forget Password?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.white),
                      child: Checkbox(
                        value: isRememberMe,
                        activeColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
                            isRememberMe = true;
                          });
                        },
                        checkColor: Colors.red,
                      ),
                    ),
                    Text('Remember me',
                        style: GoogleFonts.anybody(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    height: Size.width / 8,
                    width: Size.width / 4,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 254, 254),
                        borderRadius: BorderRadius.circular(30)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottemNav()));
                      },
                      child: Center(
                        child: Text("Login",
                            style: GoogleFonts.anybody(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFE23744))),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                      height: Size.width / 8,
                      width: Size.width,
                      child: Center(
                        child: Row(
                          children: [
                            Center(
                              child: Text("Don't have an account?",
                                  style: GoogleFonts.anybody(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white)),
                            ),
                            Text('Sign Up',
                                style: GoogleFonts.anybody(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ))
      ]),
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email',
            style: GoogleFonts.anybody(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 14),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.email, color: Color(0xFFE23744)),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Password',
          style: GoogleFonts.anybody(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 50,
        child: TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 14),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.lock, color: Color(0xFFE23744)),
              hintText: 'Passwors',
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      )
    ],
  );
}
