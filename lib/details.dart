import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 39, 79),
      body: DefaultTextStyle(
        style:
            GoogleFonts.roboto(textStyle: const TextStyle(color: Colors.white)),
        child: SingleChildScrollView(
          child: GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! > 0) {
                Navigator.of(context).pop(); // Swipe right, navigate back
              }
            },
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: double.infinity,
                  height: 392,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 244, 196, 101),
                          Color.fromARGB(255, 198, 57, 86)
                        ]),
                  ),
                  child: (Expanded(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.network(
                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1695535224/Ellipse_1_2_bchwzm.png'),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.network(
                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1695494786/Saly-36_sza3jq.png'),
                      )
                    ]),
                  )))),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1695510430/Frame_6_spd8wy.png'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Graphic Design Master",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 117,
                            child: Stack(children: [
                              Image.network(
                                  'https://res.cloudinary.com/dbwwffypj/image/upload/v1695535975/Ellipse_3_g0gvbc.png'),
                              Positioned(
                                  left: 24,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695535976/Ellipse_4_r3cnve.png')),
                              Positioned(
                                  left: 48,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695535975/Ellipse_5_rvc2e0.png')),
                              Positioned(
                                  left: 72,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695535975/Ellipse_6_bup3ew.png'))
                            ]),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '+28K Members',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 54,
                          ),
                          Container(
                            width: 54,
                            height: 47,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 62, 58, 109),
                                borderRadius: BorderRadius.circular(6)),
                            child: const Icon(
                              Icons.thumb_up,
                              size: 24,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              const SizedBox(
                                height: 90,
                                width: 374,
                              ),
                              Positioned(
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            255, 62, 58, 109)),
                                    width: 374,
                                    height: 82,
                                  )),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 99,
                                  height: 82,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          255, 219, 97, 161)),
                                ),
                              ),
                              Positioned(
                                  left: 5,
                                  bottom: 20,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695538576/Saly-20_sjkb5m.png')),
                              const Positioned(
                                  left: 110,
                                  bottom: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Introduction Design Graphic",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "12 Minutes",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          SizedBox(
                                            width: 54,
                                            height: 20,
                                            child: Text(
                                              "Free",
                                              style: TextStyle(fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              const SizedBox(
                                height: 90,
                                width: 374,
                              ),
                              Positioned(
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: 374,
                                    height: 82,
                                  )),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 99,
                                  height: 82,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          255, 244, 196, 101)),
                                ),
                              ),
                              Positioned(
                                  left: -10,
                                  bottom: 10,
                                  child: Image.network(
                                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1695538576/Saly-21_n0ioad.png')),
                              const Positioned(
                                  left: 110,
                                  bottom: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Fundamental of Design",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "16 Minutes",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              const SizedBox(
                                height: 90,
                                width: 374,
                              ),
                              Positioned(
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: 374,
                                    height: 82,
                                  )),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 99,
                                  height: 82,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          255, 50, 106, 165)),
                                ),
                              ),
                              Positioned(
                                  left: -10,
                                  bottom: 10,
                                  child: Image.network(
                                    'https://res.cloudinary.com/dbwwffypj/image/upload/v1695538576/Saly-25_syownh.png',
                                  )),
                              const Positioned(
                                  left: 110,
                                  bottom: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Layout Design",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "10 Minutes",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          )
                        ],
                      )
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
