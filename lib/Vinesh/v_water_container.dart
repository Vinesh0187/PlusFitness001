import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class waterContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => waterContainerState();
}

class waterContainerState extends State<waterContainer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 30, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text.rich(TextSpan(
                              text: '2500 ',
                              style: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 19, 75, 232)),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'ml',
                                  style: TextStyle(
                                      fontSize: 17, fontFamily: 'FontMain'),
                                )
                              ])),
                          Text(
                            "of daily goal 3.5L",
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Text(
                        "______________________________",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 22,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Last drink 8:26 AM",
                                style: TextStyle(
                                    fontFamily: "FontMain",
                                    fontSize: 13,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/bell.png"),
                                height: 27,
                                width: 23,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 140,
                                child: Text(
                                  "Your bottle is empty refill it!.",
                                  style: TextStyle(
                                      fontFamily: "FontMain",
                                      fontSize: 14,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20, top: 50, bottom: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade600,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: const Offset(4, 7))
                                  ]),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    size: 25,
                                    color: Color.fromARGB(255, 19, 75, 232),
                                  ))),
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade600,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: const Offset(4, 7))
                                  ]),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove,
                                      size: 25,
                                      color:
                                          Color.fromARGB(255, 19, 75, 232)))),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 25, top: 20),
                      child: SizedBox(height: 200, child: waterIndicator()),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class waterIndicator extends StatefulWidget {
  const waterIndicator({super.key});

  @override
  State<waterIndicator> createState() => _waterIndicatorState();
}

class _waterIndicatorState extends State<waterIndicator> {
  @override
  Widget build(BuildContext context) {
    return LiquidLinearProgressIndicator(
      value: 0.25, // Defaults to 0.5.
      valueColor: const AlwaysStoppedAnimation(
          Colors.pink), // Defaults to the current Theme's accentColor.
      backgroundColor: const Color.fromARGB(255, 231, 235,
          237), // Defaults to the current Theme's backgroundColor.
      borderColor: Colors.black12,
      borderWidth: 2.0,
      borderRadius: 50.0,

      direction: Axis.vertical,
      center: const Text("Loading"),
    );

    return Container();
  }
}
