import 'package:flutter/material.dart';

class mealsToday extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => mealsTodayState();
}

class mealsTodayState extends State<mealsToday> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
                 
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    height: 190,
                    width: 125,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.deepOrange.shade100,
                            Colors.deepOrange.shade500
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(70),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, left: 15),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Breakfast",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'FontMainBold',
                                  fontSize: 17),
                            ),
                            Text(
                              "Bread, Peanut Butter, Apple,Banana",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'FontMain',
                                  fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: '525 ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'FontMain',
                                      fontSize: 25),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Kcal',
                                        style: TextStyle(fontSize: 13)),
                                  ],
                                ),
                              ),
                            )
                            //////
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -2,
                    top: -30,
                    child: Container(
                      child: Image.asset("assets/images/breakfast.png"),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(79, 255, 255, 255),
                          borderRadius: BorderRadius.circular(50)),
                      width: 75,
                      height: 70,
                    ),
                  ),
                ],
              ),
              //-----------------------2nd Box for LUNCH ----------------------//
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      height: 190,
                      width: 125,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.blueAccent.shade100,
                              Colors.blueAccent.shade700
                            ],
                          ),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(70),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 15),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lunch",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'FontMainBold',
                                    fontSize: 17),
                              ),
                              Text(
                                "Salad, Mixed Veggies, Avocado",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'FontMain',
                                    fontSize: 12),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: RichText(
                                  text: TextSpan(
                                    text: '602 ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'FontMain',
                                        fontSize: 25),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Kcal',
                                          style: TextStyle(fontSize: 13)),
                                    ],
                                  ),
                                ),
                              )
                              //////
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -2,
                      top: -30,
                      child: Container(
                        child: Image.asset("assets/images/lunch.png"),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(79, 255, 255, 255),
                            borderRadius: BorderRadius.circular(50)),
                        width: 75,
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),
              //-------------------3rd Box for Snack ----------------------//
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      height: 190,
                      width: 125,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.pinkAccent.shade100,
                              Colors.pinkAccent.shade700
                            ],
                          ),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(70),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 15),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Snack",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'FontMainBold',
                                    fontSize: 17),
                              ),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  "Recommended 800 Kcal",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'FontMain',
                                      fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.pinkAccent,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),

                              //////
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -2,
                      top: -30,
                      child: Container(
                        child: Image.asset("assets/images/snack.png"),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(79, 255, 255, 255),
                            borderRadius: BorderRadius.circular(50)),
                        width: 75,
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),

              //--------------------------4th box for Dinner --------------//
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      height: 190,
                      width: 125,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.deepPurple.shade100,
                              Colors.deepPurple.shade700
                            ],
                          ),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(70),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 15),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dinner",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'FontMainBold',
                                    fontSize: 17),
                              ),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  "Recommended 703 Kcal",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'FontMain',
                                      fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.deepPurple,
                                    ),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            scrollable: true,
                                            title: Text('Add Product'),
                                            content: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Form(
                                                child: Container(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [Meal_Items()],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text("Cancel"),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Text("Add Product"),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),

                              //////
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -2,
                      top: -30,
                      child: Container(
                        child: Image.asset("assets/images/dinner.png"),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(79, 255, 255, 255),
                            borderRadius: BorderRadius.circular(50)),
                        width: 75,
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class cont_meals extends StatefulWidget {
  @override
  String mealType = "";
  String meal = "";

  State<StatefulWidget> createState() =>
      cont_mealsState(this.mealType, this.meal);
}

class cont_mealsState extends State<cont_meals> {
  cont_mealsState(mealType, String meal);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 125,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepOrange.shade100, Colors.deepOrange.shade500],
          ),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(70),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'FontMainBold',
                    fontSize: 17),
              ),
              Text(
                "Bread, Peanut Butter, Apple,Banana",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'FontMain', fontSize: 12),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: RichText(
                  text: TextSpan(
                    text: '525 ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'FontMain',
                        fontSize: 25),
                    children: <TextSpan>[
                      TextSpan(text: 'Kcal', style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              )
              //////
            ],
          ),
        ),
      ),
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    super.key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text(
              label,
              style: TextStyle(fontSize: 18, fontFamily: 'FontMain'),
            )),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Meal_Items extends StatefulWidget {
  const Meal_Items({Key? key}) : super(key: key);

  @override
  State<Meal_Items> createState() => _Meal_ItemsState();
}

class _Meal_ItemsState extends State<Meal_Items> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  bool _isSelected6 = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          LabeledCheckbox(
            label: 'This is Dinner Item 1',
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelected1,
            onChanged: (bool newValue) {
              setState(() {
                _isSelected1 = newValue;
              });
            },
          ),
          LabeledCheckbox(
            label: 'This is Dinner Item 2',
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelected2,
            onChanged: (bool newValue) {
              setState(() {
                _isSelected2 = newValue;
              });
            },
          ),
          LabeledCheckbox(
            label: 'This is Dinner Item 3',
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelected3,
            onChanged: (bool newValue) {
              setState(() {
                _isSelected3 = newValue;
              });
            },
          ),
          LabeledCheckbox(
            label: 'This is Dinner Item 4',
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelected4,
            onChanged: (bool newValue) {
              setState(() {
                _isSelected4 = newValue;
                print("item 4 selected");
              });
            },
          ),
          LabeledCheckbox(
            label: 'This is Dinner Item 5',
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelected5,
            onChanged: (bool newValue) {
              setState(() {
                _isSelected5 = newValue;
              });
            },
          ),
          LabeledCheckbox(
            label: 'This is Dinner Item 6',
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelected6,
            onChanged: (bool newValue) {
              setState(() {
                _isSelected6 = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}

            // Stack(
            //   clipBehavior: Clip.none,
            //   children: <Widget>[
            //     Container(
            //       width: 100,
            //       height: 100,
            //       color: Colors.red,
            //     ),
            //     Positioned(
            //       left: 20,
            //       bottom: 60,
            //       child: Container(
            //         width: 60,
            //         height: 60,
            //         color: Colors.green,
            //       ),
            //     ),
            //   ],
            // )