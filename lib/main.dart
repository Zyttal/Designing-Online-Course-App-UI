import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Course Application',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/details': (context) => const DetailsPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 39, 79),
      body: DefaultTextStyle(
        style:
            GoogleFonts.roboto(textStyle: const TextStyle(color: Colors.white)),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 55),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Online",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Master Class",
                    style: TextStyle(fontSize: 36),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: InkWell(
                    child: Container(
                        width: 246,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 146, 136, 228),
                                Color.fromARGB(255, 83, 78, 167)
                              ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 11),
                              child: SizedBox(
                                height: 39,
                                width: 129,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0)),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color.fromARGB(
                                                    255, 175, 168, 238))),
                                    child: const Text(
                                      'Recommended',
                                    )),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 11),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 26,
                                    ),
                                    Text(
                                      "UI/UX DESIGNER",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "BEGINNER",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695496211/Ellipse_1_iiyes7.png'),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695495147/Saly-10_ugmigu.png'),
                                )
                              ]),
                            ))
                          ],
                        )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsPage()));
                    },
                    child: Container(
                        width: 246,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 244, 196, 101),
                                Color.fromARGB(255, 198, 57, 86)
                              ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 11),
                              child: SizedBox(
                                height: 39,
                                width: 125,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0)),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color.fromARGB(
                                                    255, 244, 198, 122))),
                                    child: const Text(
                                      'NEW CLASS',
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 11),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 26,
                                    ),
                                    Text(
                                      "GRAPHIC DESIGN",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "MASTER",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695496635/Ellipse_1_1_mhanvw.png'),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695494786/Saly-36_sza3jq.png'),
                                )
                              ]),
                            )),
                          ],
                        )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20.0), // Add margin for spacing
                  child: InkWell(
                    child: Container(
                        width: 246,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 146, 136, 228),
                                Color.fromARGB(255, 83, 78, 167)
                              ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 11),
                              child: SizedBox(
                                height: 39,
                                width: 129,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0)),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color.fromARGB(
                                                    255, 175, 168, 238))),
                                    child: const Text(
                                      'Recommended',
                                    )),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 11),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 26,
                                    ),
                                    Text(
                                      "UI/UX DESIGNER",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "BEGINNER",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695496211/Ellipse_1_iiyes7.png'),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695495147/Saly-10_ugmigu.png'),
                                )
                              ]),
                            ))
                          ],
                        )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: InkWell(
                    child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        width: 246,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 244, 196, 101),
                                Color.fromARGB(255, 198, 57, 86)
                              ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 11),
                              child: SizedBox(
                                height: 39,
                                width: 125,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0)),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color.fromARGB(
                                                    255, 244, 198, 122))),
                                    child: const Text(
                                      'NEW CLASS',
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(left: 11),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 26,
                                    ),
                                    Text(
                                      "GRAPHIC DESIGN",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "MASTER",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695496635/Ellipse_1_1_mhanvw.png'),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695494786/Saly-36_sza3jq.png'),
                                )
                              ]),
                            )),
                          ],
                        )),
                  ),
                )
              ]),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Free online class",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "From over 80 Lectures",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Stack(
                    children: [
                      Container(
                        width: 375,
                        height: 134,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        bottom: 10.0,
                        child: Stack(
                          children: [
                            Container(
                              width: 360,
                              height: 92,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 62, 58, 109),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.25), // Color of the shadow
                                      spreadRadius: 0, // Spread radius
                                      blurRadius: 13, // Blur radius
                                      offset: const Offset(0, 4),
                                    ) // Offset of the shadow)
                                  ]),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 150,
                                    bottom: 20,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Flutter Developer",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        const Text(
                                          "8 hours",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Image.network(
                                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1695510430/Frame_6_spd8wy.png')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 42,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: RawMaterialButton(
                              onPressed: () {},
                              fillColor:
                                  const Color.fromARGB(255, 235, 83, 162),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.play_arrow,
                                size: 30,
                              ),
                            ),
                          )),
                      Positioned(
                        left: 24,
                        bottom: 20,
                        child: Container(
                          width: 117,
                          height: 84,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 255, 180, 180)),
                        ),
                      ),
                      Positioned(
                          left: 24,
                          bottom: 20,
                          child: Image.network(
                              'https://res.cloudinary.com/dbwwffypj/image/upload/v1695508143/Saly-24_dpwa3q.png')),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Stack(
                    children: [
                      Container(
                        width: 375,
                        height: 134,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        bottom: 10.0,
                        child: Stack(
                          children: [
                            Container(
                              width: 360,
                              height: 92,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 62, 58, 109),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.25), // Color of the shadow
                                      spreadRadius: 0, // Spread radius
                                      blurRadius: 13, // Blur radius
                                      offset: const Offset(0, 4),
                                    ) // Offset of the shadow)
                                  ]),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 150,
                                    bottom: 20,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Full Stack Javascript",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        const Text(
                                          "6 hours",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Image.network(
                                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1695510430/Frame_6_spd8wy.png')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 42,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: RawMaterialButton(
                              onPressed: () {},
                              fillColor:
                                  const Color.fromARGB(255, 235, 83, 162),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.play_arrow,
                                size: 30,
                              ),
                            ),
                          )),
                      Positioned(
                        left: 24,
                        bottom: 20,
                        child: Container(
                          width: 117,
                          height: 84,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 204, 180, 255)),
                        ),
                      ),
                      Positioned(
                          left: 35,
                          bottom: 20,
                          child: Image.network(
                              'https://res.cloudinary.com/dbwwffypj/image/upload/v1695532238/Saly-13_yurlg0.png')),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Stack(
                    children: [
                      Container(
                        width: 375,
                        height: 134,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        bottom: 10.0,
                        child: Stack(
                          children: [
                            Container(
                              width: 360,
                              height: 92,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 62, 58, 109),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.25), // Color of the shadow
                                      spreadRadius: 0, // Spread radius
                                      blurRadius: 13, // Blur radius
                                      offset: const Offset(0, 4),
                                    ) // Offset of the shadow)
                                  ]),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 150,
                                    bottom: 20,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Flutter Developer",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        const Text(
                                          "8 hours",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Image.network(
                                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1695510430/Frame_6_spd8wy.png')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 42,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: RawMaterialButton(
                              onPressed: () {},
                              fillColor:
                                  const Color.fromARGB(255, 235, 83, 162),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.play_arrow,
                                size: 30,
                              ),
                            ),
                          )),
                      Positioned(
                        left: 24,
                        bottom: 20,
                        child: Container(
                          width: 117,
                          height: 84,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 255, 180, 180)),
                        ),
                      ),
                      Positioned(
                          left: 24,
                          bottom: 20,
                          child: Image.network(
                              'https://res.cloudinary.com/dbwwffypj/image/upload/v1695508143/Saly-24_dpwa3q.png')),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Stack(
                    children: [
                      Container(
                        width: 375,
                        height: 134,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        bottom: 10.0,
                        child: Stack(
                          children: [
                            Container(
                              width: 360,
                              height: 92,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 62, 58, 109),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.25), // Color of the shadow
                                      spreadRadius: 0, // Spread radius
                                      blurRadius: 13, // Blur radius
                                      offset: const Offset(0, 4),
                                    ) // Offset of the shadow)
                                  ]),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 150,
                                    bottom: 20,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Full Stack Javascript",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        const Text(
                                          "6 hours",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Image.network(
                                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1695510430/Frame_6_spd8wy.png')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 42,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: RawMaterialButton(
                              onPressed: () {},
                              fillColor:
                                  const Color.fromARGB(255, 235, 83, 162),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.play_arrow,
                                size: 30,
                              ),
                            ),
                          )),
                      Positioned(
                        left: 24,
                        bottom: 20,
                        child: Container(
                          width: 117,
                          height: 84,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 204, 180, 255)),
                        ),
                      ),
                      Positioned(
                          left: 35,
                          bottom: 20,
                          child: Image.network(
                              'https://res.cloudinary.com/dbwwffypj/image/upload/v1695532238/Saly-13_yurlg0.png')),
                    ],
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
