import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ms_dhoni/modal/tab_list.dart';
import 'package:ms_dhoni/view/tab_view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splashbg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 600,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/dp.png"),
              ),
            ),
            child: Container(
              color: const Color(0xFF880E4F).withOpacity(0.9),
            ),
          ),
          Positioned.fill(
            top: 275,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(color: Colors.white),
            ),
          ),
          Positioned(
            top: 185,
            left: 20,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage("assets/dp.png"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.pinkAccent,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightGreen.withOpacity(0.8),
                      blurRadius: 6,
                      offset: const Offset(
                        2,
                        2,
                      ),
                    ),
                  ]),
            ),
          ),
          const Positioned(
            top: 275,
            right: 20,
            child: Column(
              children: [
                Text(
                  "MS DHONI",
                  style: TextStyle(
                    fontFamily: "Bebas",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF880E4F),
                  ),
                ),
                Text(
                  "Former Captain/Weeket Keeper/Batsman",
                  style: TextStyle(
                    fontFamily: "Bebas",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF880E4F),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 400,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TabView(title: ofNavs[0].name),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ofNavs[0].image),
                              const Gap(10),
                              Text(
                                ofNavs[0].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Bebas"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Gap(10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TabView(title: ofNavs[1].name),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset("assets/quotes.png"),
                              const Gap(10),
                              const Text(
                                "Quotes",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Bebas"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TabView(title: ofNavs[2].name),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset("assets/videos.png"),
                              const Gap(10),
                              const Text(
                                "Videos",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Bebas"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TabView(title: ofNavs[3].name),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset("assets/family.png"),
                              const Gap(10),
                              const Text(
                                "Family",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Bebas"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TabView(title: ofNavs[4].name),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset("assets/autos.png"),
                              const Gap(10),
                              const Text(
                                "Autos",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Bebas"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Gap(10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TabView(title: ofNavs[5].name),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset("assets/news.png"),
                              const Gap(10),
                              const Text(
                                "News",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Bebas"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
