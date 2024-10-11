import 'package:flutter/material.dart';

class Detial extends StatefulWidget {
  Detial(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.country});

  final String image;
  final String title;
  final String price;
  final String country;
  int index = 0;
  @override
  State<Detial> createState() => _DetialState();
}

class _DetialState extends State<Detial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                size: 30,
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  //color: Colors.amber,
                  height: 550,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: Color.fromARGB(255, 80, 183, 133),
                                offset: Offset(1, 1),
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: const Icon(
                            Icons.wb_sunny_outlined,
                            size: 35,
                            color: Color.fromARGB(255, 80, 183, 133),
                          )),
                      Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: Color.fromARGB(255, 80, 183, 133),
                                offset: Offset(1, 1),
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: const Icon(
                            Icons.dew_point,
                            size: 35,
                            color: Color.fromARGB(255, 80, 183, 133),
                          )),
                      Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: Color.fromARGB(255, 80, 183, 133),
                                offset: Offset(1, 1),
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: const Icon(
                            Icons.thermostat,
                            size: 35,
                            color: Color.fromARGB(255, 80, 183, 133),
                          )),
                      Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: Color.fromARGB(255, 80, 183, 133),
                                offset: Offset(1, 1),
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: const Icon(
                            Icons.air,
                            size: 35,
                            color: Color.fromARGB(255, 80, 183, 133),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/${widget.image}"),
                        fit: BoxFit.cover),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 20,
                        color: Color.fromARGB(255, 80, 183, 133),
                        offset: Offset(1, 1),
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                    borderRadius:
                        const BorderRadius.only(bottomLeft: Radius.circular(50))),
                height: 550,
                width: 280,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style:
                          const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.country,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 80, 183, 133),
                      ),
                    )
                  ],
                ),
                Text(
                  "\$${widget.price}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 80, 183, 133),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: widget.index == 0
                          ? const Color.fromARGB(255, 80, 183, 133)
                          : Colors.white,
                      borderRadius:
                          const BorderRadius.only(topRight: Radius.circular(30))),
                  height: 100,
                  child: TextButton(
                    onPressed: () {
                      widget.index = 0;
                      setState(() {});
                    },
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        fontSize: 17,
                        color: widget.index == 0 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: widget.index == 1
                          ? const Color.fromARGB(255, 80, 183, 133)
                          : Colors.white,
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(30))),
                  height: 100,
                  child: TextButton(
                    onPressed: () {
                      widget.index = 1;
                      setState(() {});
                    },
                    child: Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 17,
                        color: widget.index == 1 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
