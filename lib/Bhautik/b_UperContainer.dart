import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class firstContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [FirstrowOfBody(), SecondRowAndContainer()],
    );
  }
}

class FirstrowOfBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Mediterranean diet",
            style: TextStyle(fontFamily: "FontMain", fontSize: 18),
          ),
          InkWell(
              onTap: () {},
              child: const Row(
                children: [
                  Text(
                    'Details ',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontFamily: 'FontMain'),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class SecondRowAndContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
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
            child: Column(
              children: [
                FirstRowMakeCommon(),
                Divider(
                  indent: 30.0,
                  endIndent: 30.0,
                ),
                SecondRowOfShadow()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FirstRowOfContainer extends StatelessWidget {
  final String mainhead;
  final String imgadress;
  final String subtext;
  final Color bordercolor;

  const FirstRowOfContainer(
      {required this.mainhead,
      required this.subtext,
      required this.bordercolor,
      required this.imgadress});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    border:
                        Border(left: BorderSide(color: bordercolor, width: 3))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        mainhead,
                        style: TextStyle(
                            fontFamily: 'FontMain', color: Colors.grey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          // 'assets/images/eaten.png',
                          imgadress,
                          height: 40,
                          width: 40,
                        ),
                        Text(
                          subtext,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'FontMain'),
                        ),
                        const Align(
                            child: Text(
                          ' kcal',
                          style: TextStyle(
                              fontFamily: 'FontMain',
                              fontSize: 13,
                              color: Colors.grey),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FirstRowMakeCommon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: FirstRowOfContainer(
                mainhead: 'Eaten',
                imgadress: 'assets/images/eaten.png',
                bordercolor: Color.fromRGBO(206, 215, 240, 1),
                subtext: '1127',
              ),
            ),
            FirstRowOfContainer(
              mainhead: 'Burned',
              imgadress: 'assets/images/burned.png',
              bordercolor: Color.fromRGBO(236, 201, 209, 1),
              subtext: '104',
            ),
          ],
        ),
        //  Circular Indicator here
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CircularIndicatorcustom(),
        ),
      ],
    );
  }
}

class SecondRowOfShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // First Widget here
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CommoncarbsProtinefat(
            headText: 'Carbs',
            coolor1: Colors.indigo.shade200,
            coolor2: Colors.indigo.shade700,
            backgroundColor: Colors.indigo.shade100,
            percentage: 0.7,
            subtext: '12'),
        CommoncarbsProtinefat(
            headText: 'Protien',
            coolor1: Colors.pink.shade200,
            coolor2: Colors.pink.shade700,
            backgroundColor: Colors.pink.shade100,
            percentage: 0.5,
            subtext: '30'),
        CommoncarbsProtinefat(
            headText: 'Fats',
            coolor1: Colors.amber.shade200,
            coolor2: Colors.amber.shade700,
            backgroundColor: Colors.amber.shade100,
            percentage: 0.2,
            subtext: '10'),
      ],
    );
  }
}

class CommoncarbsProtinefat extends StatefulWidget {
  final String headText;
  final Color coolor1;
  final Color coolor2;
  final Color backgroundColor;
  final String subtext;
  final double percentage;

  const CommoncarbsProtinefat(
      {required this.headText,
      required this.coolor1,
      required this.coolor2,
      required this.subtext,
      required this.backgroundColor,
      required this.percentage});

  @override
  State<CommoncarbsProtinefat> createState() => _CommoncarbsProtinefatState();
}

class _CommoncarbsProtinefatState extends State<CommoncarbsProtinefat>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 25),
      child: Column(
        children: [
          Text(
            widget.headText,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'FontMain',
                fontSize: 17),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 3),
            child: LinearPercentIndicator(
              width: 90.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 5.0,
              percent: widget.percentage,
              backgroundColor: widget.backgroundColor,
              linearGradient:
                  LinearGradient(colors: [widget.coolor1, widget.coolor2]),
              barRadius: Radius.circular(10),
            ),
          ),
          Row(
            children: [
              Text(widget.subtext),
              const Text('g left'),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CircularIndicatorcustom extends StatefulWidget {
  double per = 0.7;
  @override
  State<CircularIndicatorcustom> createState() =>
      _CircularIndicatorcustomState();
}

class _CircularIndicatorcustomState extends State<CircularIndicatorcustom> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 60.0,
      backgroundWidth: 1,
      curve: Curves.easeIn,
      lineWidth: 12.0,
      animation: true,
      animationDuration: 1000,
      percent: widget.per,
      center: SizedBox(
        height: 50,
        child: Column(
          children: [
            Text(
              '${((widget.per * 1000) * 2 + 104).toInt()}',
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Text(
              'Kcal left',
              style: TextStyle(fontFamily: 'FontMain', fontSize: 12),
            )
          ],
        ),
      ),
      backgroundColor: Colors.indigo.shade500,
      circularStrokeCap: CircularStrokeCap.round,
      linearGradient: LinearGradient(colors: [
        Colors.indigo.shade100,
        Colors.indigo.shade700,
      ]),
    );
  }
}
