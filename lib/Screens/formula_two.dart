import 'package:flutter/material.dart';

class FormulaTwoScreen extends StatefulWidget {
  const FormulaTwoScreen({super.key});

  @override
  State<FormulaTwoScreen> createState() => _FormulaTwoScreenState();
}

class _FormulaTwoScreenState extends State<FormulaTwoScreen> {
  late final controllerTAxial = TextEditingController();
  late final controllerRAxial = TextEditingController();
  late final controllerBAxial = TextEditingController();
  late final controllerLAxial = TextEditingController();

  late final controllerTRadial = TextEditingController();
  late final controllerRRadial = TextEditingController();
  late final controllerBRadial = TextEditingController();
  late final controllerLRadial = TextEditingController();

  late final controllerBearing3 = TextEditingController();
  late final controllerBearing4 = TextEditingController();
  late final controllerCoupling = TextEditingController();

  double valueBearing3 = 0;
  double valueBearing4 = 0;
  double valueCoupling = 0;

  double valueFieldTAxial = 0;
  double valueFieldRAxial = 0;
  double valueFeildBAxial = 0;
  double valueFieldLAxial = 0;

  double valueFieldTRadial = 0;
  double valueFieldRRadial = 0;
  double valueFeildBRadial = 0;
  double valueFieldLRadial = 0;

  double axialHorizontalB3 = 0;
  double axialVerticalB3 = 0;
  double axialHorizontalB4 = 0;
  double axialVerticalB4 = 0;

  double radialHorizontal = 0;
  double radialVertical = 0;

  void total() {
    setState(() {
      axialHorizontalB3 =
          ((valueFieldRAxial - valueFieldLAxial) * valueBearing3) *
              valueCoupling;
      axialVerticalB3 =
          ((valueFieldTAxial - valueFeildBAxial) * valueBearing3) *
              valueCoupling;
      axialHorizontalB4 =
          ((valueFieldRAxial - valueFieldLAxial) * valueBearing4) *
              valueCoupling;
      axialVerticalB4 =
          ((valueFieldTAxial - valueFeildBAxial) * valueBearing4) *
              valueCoupling;
      radialHorizontal = (valueFieldRRadial - valueFieldLRadial) / 2;
      radialVertical = (valueFieldTRadial - valueFeildBRadial) / 2;
    });
  }

  void clear() {
    controllerTAxial.clear();
    controllerRAxial.clear();
    controllerBAxial.clear();
    controllerLAxial.clear();

    controllerTRadial.clear();
    controllerRRadial.clear();
    controllerBRadial.clear();
    controllerLRadial.clear();

    controllerBearing3.clear();
    controllerBearing4.clear();
    controllerCoupling.clear();
  }

  @override
  void dispose() {
    controllerTAxial.dispose();
    controllerRAxial.dispose();
    controllerBAxial.dispose();
    controllerLAxial.dispose();

    controllerTRadial.dispose();
    controllerRRadial.dispose();
    controllerBRadial.dispose();
    controllerLRadial.dispose();

    controllerBearing3.dispose();
    controllerBearing4.dispose();
    controllerCoupling.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 220,
                  height: 200,
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Positioned(left: 93, child: const Text("Axial")),
                      Positioned(left: 98, top: 15, child: Text("(0)")),
                      Positioned(
                        top: 35,
                        left: 70,
                        child: SizedBox(
                          width: 75,
                          height: 50,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                valueFieldTAxial = double.parse(value);
                              });
                            },
                            textAlign: TextAlign.center,
                            controller: controllerTAxial,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                hintText: "T",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 15,
                        child: SizedBox(
                          width: 75,
                          height: 50,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                valueFieldRAxial = double.parse(value);
                              });
                            },
                            textAlign: TextAlign.center,
                            controller: controllerRAxial,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                hintText: "R",
                                hintStyle: TextStyle(),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 145,
                        left: 70,
                        child: SizedBox(
                          width: 75,
                          height: 50,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                valueFeildBAxial = double.parse(value);
                              });
                            },
                            textAlign: TextAlign.center,
                            controller: controllerBAxial,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                hintText: "B",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 130,
                        child: SizedBox(
                          width: 75,
                          height: 50,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                valueFieldLAxial = double.parse(value);
                              });
                            },
                            textAlign: TextAlign.center,
                            controller: controllerLAxial,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                hintText: "L",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 130,
                  height: 80,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        valueCoupling = double.parse(value);
                      });
                    },
                    textAlign: TextAlign.center,
                    controller: controllerCoupling,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: "Coupling",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                  ),
                ),
                ////
                ///
                ///Radial
                ///
                Container(
                  width: 220,
                  height: 200,
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Positioned(left: 90, child: const Text("Radial")),
                      Positioned(left: 100, top: 15, child: Text("(0)")),
                      Positioned(
                        top: 35,
                        left: 70,
                        child: SizedBox(
                          width: 75,
                          height: 50,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                valueFieldTRadial = double.parse(value);
                              });
                            },
                            textAlign: TextAlign.center,
                            controller: controllerTRadial,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                hintText: "T",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 15,
                        child: SizedBox(
                          width: 75,
                          height: 50,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                valueFieldRRadial = double.parse(value);
                              });
                            },
                            textAlign: TextAlign.center,
                            controller: controllerRRadial,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                hintText: "R",
                                hintStyle: TextStyle(),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 145,
                        left: 70,
                        child: SizedBox(
                          width: 75,
                          height: 50,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                valueFeildBRadial = double.parse(value);
                              });
                            },
                            textAlign: TextAlign.center,
                            controller: controllerBRadial,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                hintText: "B",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 130,
                        child: SizedBox(
                          width: 75,
                          height: 50,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                valueFieldLRadial = double.parse(value);
                              });
                            },
                            textAlign: TextAlign.center,
                            controller: controllerLRadial,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                hintText: "L",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 130,
                  height: 80,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        valueBearing3 = double.parse(value);
                      });
                    },
                    textAlign: TextAlign.center,
                    controller: controllerBearing3,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: "Bearing 3",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                  ),
                ),
                ElevatedButton(onPressed: total, child: Text("Total")),
                ElevatedButton(onPressed: clear, child: Text("Clear")),
                SizedBox(
                  width: 130,
                  height: 80,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        valueBearing4 = double.parse(value);
                      });
                    },
                    textAlign: TextAlign.center,
                    controller: controllerBearing4,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: "Bearing 4",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    axialHorizontalB3 == 0
                        ? const Text("")
                        : Text(
                            "Axial Horizontal B3 : ${axialHorizontalB3.toString()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                    axialVerticalB3 == 0
                        ? const Text("")
                        : Text(
                            "Axial Vertical B3 : ${axialVerticalB3.toString()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                    axialHorizontalB4 == 0
                        ? const Text("")
                        : Text(
                            "Simplate Horizontal B4 : ${axialHorizontalB4.toString()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                  ],
                ),
                Column(
                  children: [
                    axialVerticalB4 == 0
                        ? const Text("")
                        : Text(
                            "Axial Vertical B4 : ${axialVerticalB4.toString()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                    radialHorizontal == 0
                        ? const Text("")
                        : Text(
                            "Radial Horizontal : ${radialHorizontal.toString()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                    radialVertical == 0
                        ? const Text("")
                        : Text(
                            "Radial Vertical : ${radialVertical.toString()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                  ],
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
