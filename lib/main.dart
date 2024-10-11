import 'package:flutter/material.dart';
import 'package:flutter_plant/detial.dart';
import 'package:flutter_plant/text_btn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> items = [
    {
      'image': "second.jpg",
      'title': "HORTOLOGY",
      'price': "400",
      'country': "RUSSIA",
    },
    {
      'image': "first.jpg",
      'title': "WOWOWOW",
      'price': "800",
      'country': "MANDALAY",
    },
    {
      'image': "third.jpg",
      'title': "BLAHBLAH",
      'price': "500",
      'country': "YANGON",
    },
    {
      'image': "fourth.jpg",
      'title': "AYAYAYAY",
      'price': "400",
      'country': "PYINOOLWIN",
    },
    {
      'image': "fiveth.jpg",
      'title': "UWUWUWUWU",
      'price': "400",
      'country': "MAGWAY",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 80, 183, 133),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 80, 183, 133),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Hi Uishopy!",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                            ),
                            child: const Icon(
                              Icons.circle_rounded,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -25,
                    left: 30,
                    right: 30,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Color.fromARGB(255, 80, 183, 133),
                            offset: Offset(1, 1),
                            blurStyle: BlurStyle.outer,
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TextBtn(
                text: 'Recomended',
                underlineWidth: 108,
              ),
              Container(
                height: 280,
                margin: const EdgeInsets.only(
                  left: 15,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detial(
                                      image: '${items[index]['image']}',
                                      title: '${items[index]['title']}',
                                      price: '${items[index]['price']}',
                                      country: '${items[index]['country']}',
                                    )));
                      },
                      child: Container(
                        //color: Colors.amber,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        width: 170,
                        child: Card(
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "images/${items[index]['image']}",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                                height: 200,
                                // width: 170,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("${items[index]['title']}"),
                                        Text(
                                          "\$${items[index]['price']}",
                                          style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 80, 183, 133),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${items[index]['country']}",
                                      style: const TextStyle(
                                        color: Color.fromARGB(
                                            255, 80, 183, 133),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const TextBtn(
                text: 'Featured Plants',
                underlineWidth: 140,
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage(
                              "images/${items[index]['image']}",
                            ),
                            fit: BoxFit.cover),
                      ),
                      //height: 300,
                      width: 250,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 80, 183, 133),
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.star), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
