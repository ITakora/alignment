import 'package:flutter/material.dart';
import 'package:math_keyboard/math_keyboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final _focusNode = FocusNode();
  //A1
  late final controllerTA1 = TextEditingController();
  late final controllerRA1 = TextEditingController();
  late final controllerBA1 = TextEditingController();
  late final controllerLA1 = TextEditingController();

  //R
  late final controllerTR = TextEditingController();
  late final controllerRR = TextEditingController();
  late final controllerBR = TextEditingController();
  late final controllerLR = TextEditingController();

  //A2
  late final controllerTA2 = TextEditingController();
  late final controllerRA2 = TextEditingController();
  late final controllerBA2 = TextEditingController();
  late final controllerLA2 = TextEditingController();

  late final controllerDistance = TextEditingController();

  double hasil = 0;

  //A1
  double valueFieldTA1 = 0;
  double valueFieldRA1 = 0;
  double valueFeildBA1 = 0;
  double valueFieldLA1 = 0;

  //R
  double valueFieldTR = 0;
  double valueFieldRR = 0;
  double valueFeildBR = 0;
  double valueFieldLR = 0;

  //A2
  double valueFieldTA2 = 0;
  double valueFieldRA2 = 0;
  double valueFeildBA2 = 0;
  double valueFieldLA2 = 0;

  //Axial
  double totalAxialT = 0;
  double totalAxialR = 0;
  double totalAxialB = 0;
  double totalAxialL = 0;

  double distance = 0;

  double simPlateHorizontalAxial = 0;
  double simPlateVerticalAxial = 0;
  double simPlateHorizontalRadial = 0;
  double simPlateVerticalRadial = 0;

  void totalAxial() {
    setState(() {
      totalAxialT = valueFieldTA1 + valueFieldTA2;
      totalAxialR = valueFieldRA1 + valueFieldRA2;
      totalAxialB = valueFeildBA1 + valueFeildBA2;
      totalAxialL = valueFieldLA1 + valueFieldLA2;
    });
  }

  void simPLateAxial() {
    setState(() {
      simPlateHorizontalAxial = ((totalAxialR - totalAxialL) / 2) * distance;
      simPlateVerticalAxial = ((totalAxialT - totalAxialB) / 2) * distance;
      simPlateHorizontalRadial = (valueFieldRR - valueFieldLR) / 2;
      simPlateVerticalRadial = (valueFieldTR - valueFeildBR) / 2;
    });
  }

  void _onTapClear() {
    controllerTA1.clear();
    controllerTA2.clear();
    controllerRA2.clear();
    controllerBA2.clear();
    controllerLA2.clear();
    controllerRA1.clear();
    controllerBA1.clear();
    controllerLA1.clear();
    controllerTR.clear();
    controllerRR.clear();
    controllerBR.clear();
    controllerLR.clear();
    controllerDistance.clear();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    controllerTA1.dispose();
    controllerTA2.dispose();
    controllerRA2.dispose();
    controllerBA2.dispose();
    controllerLA2.dispose();
    controllerRA1.dispose();
    controllerBA1.dispose();
    controllerLA1.dispose();
    controllerTR.dispose();
    controllerRR.dispose();
    controllerBR.dispose();
    controllerLR.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alignment"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text("A1"),
                    Positioned(
                      child: SizedBox(
                        width: 90,
                        height: 90,
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              valueFieldTA1 = double.parse(value);
                            });
                          },
                          textAlign: TextAlign.center,
                          controller: controllerTA1,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              hintText: "T",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFieldRA1 = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerRA1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "R",
                            hintStyle: TextStyle(),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFeildBA1 = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerBA1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "B",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFieldLA1 = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerLA1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "L",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                  ],
                ),
              ),

              ///
              ///
              /// R
              ///
              ///
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text("R"),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFieldTR = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerTR,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "T",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFieldRR = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerRR,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "R",
                            hintStyle: TextStyle(),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFeildBR = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerBR,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "B",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFieldLR = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerLR,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "L",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                  ],
                ),
              ), //
              ///
              ////
              ///
              ///A2
              ///
              ///
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text("A2"),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFieldTA2 = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerTA2,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "T",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFieldRA2 = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerRA2,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "R",
                            hintStyle: TextStyle(),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFeildBA2 = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerBA2,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "B",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueFieldLA2 = double.parse(value);
                          });
                        },
                        textAlign: TextAlign.center,
                        controller: controllerLA2,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "L",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  distance = double.parse(value);
                });
              },
              controller: controllerDistance,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Distance",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    totalAxial();
                    simPLateAxial();
                  },
                  child: const Text("Total")),
              ElevatedButton(
                  onPressed: _onTapClear, child: const Text("Clear")),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              simPlateHorizontalAxial == 0
                  ? const Text("")
                  : Text(
                      "Simplate Horzontal : ${simPlateHorizontalAxial.toString()}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
              simPlateVerticalAxial == 0
                  ? const Text("")
                  : Text(
                      "Simplate Vertical : ${simPlateVerticalAxial.toString()}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
              simPlateHorizontalRadial == 0
                  ? const Text("")
                  : Text(
                      "Simplate Horizontal Radial : ${simPlateHorizontalRadial.toString()}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
              simPlateVerticalRadial == 0
                  ? const Text("")
                  : Text(
                      "Simplate Vertical Radial : ${simPlateVerticalRadial.toString()}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
            ],
          )
          // totalAxialT == 0
          //     ? const Text("")
          //     : Text("Total Axial T : ${totalAxialT.toString()}"),
          // totalAxialB == 0
          //     ? const Text("")
          //     : Text("Total Axial B : ${totalAxialB.toString()}"),
          // totalAxialR == 0
          //     ? const Text("")
          //     : Text("Total Axial R : ${totalAxialR.toString()}"),
          // totalAxialL == 0
          //     ? const Text("")
          //     : Text("Total Axial L : ${totalAxialL.toString()}"),
        ],
      ),
    );
  }
}
