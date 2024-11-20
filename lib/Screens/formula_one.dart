import 'package:alignment/Screens/formula_two.dart';
import 'package:flutter/material.dart';

class FormulaOneScreen extends StatefulWidget {
  const FormulaOneScreen({super.key});

  @override
  State<FormulaOneScreen> createState() => _FormulaOneScreenState();
}

class _FormulaOneScreenState extends State<FormulaOneScreen> {
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

  late final controllerDistance1 = TextEditingController();
  late final controllerDistance2 = TextEditingController();

  double hasil = 0;

  //A1
  double valueFieldTA1 = 0;
  double valueFieldRA1 = 0;
  double valueFeildBA1 = 0;
  double valueFieldLA1 = 0;

  //R
  double valueFieldAR = 0;
  double valueFieldCR = 0;
  double valueFeildBR = 0;
  double valueFieldDR = 0;

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

  double distance1 = 0;
  double distance2 = 0;

  double simPlateHorizontalB3 = 0;
  double simPlateVerticalB3 = 0;
  double simPlateHorizontalB4 = 0;
  double simPlateVerticalB4 = 0;
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
      simPlateHorizontalB3 = ((totalAxialR - totalAxialL) / 2) * distance1;
      simPlateVerticalB3 = ((totalAxialT - totalAxialB) / 2) * distance1;
      simPlateHorizontalB4 = ((totalAxialR - totalAxialL) / 2) * distance2;
      simPlateVerticalB4 = ((totalAxialT - totalAxialB) / 2) * distance2;
      simPlateHorizontalRadial = (valueFieldAR - valueFieldCR) / 2;
      simPlateVerticalRadial = (valueFeildBR - valueFieldDR) / 2;
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
    controllerDistance1.clear();
    controllerDistance2.clear();
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
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 198,
                    child: Stack(
                      fit: StackFit.loose,
                      children: [
                        Positioned(left: 100, top: 0, child: const Text("A1")),
                        Positioned(top: 60, left: 20, child: Text("(50)")),
                        Positioned(
                          top: 35,
                          left: 70,
                          child: SizedBox(
                            width: 75,
                            height: 50,
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
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
                                  valueFeildBA1 = double.parse(value);
                                });
                              },
                              textAlign: TextAlign.center,
                              controller: controllerBA1,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  hintText: "B",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
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
                                  valueFieldLA1 = double.parse(value);
                                });
                              },
                              textAlign: TextAlign.center,
                              controller: controllerLA1,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  hintText: "L",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                            ),
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
                  Container(
                    width: 270,
                    height: 198,
                    child: Stack(
                      children: [
                        Positioned(left: 135, child: const Text("R")),
                        Positioned(left: 130, top: 15, child: Text("(0)")),
                        Positioned(
                          top: 35,
                          left: 100,
                          child: SizedBox(
                            width: 75,
                            height: 50,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  valueFieldAR = double.parse(value);
                                });
                              },
                              textAlign: TextAlign.center,
                              controller: controllerTR,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  hintText: "A",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 95,
                          left: 35,
                          child: SizedBox(
                            width: 75,
                            height: 50,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  valueFeildBR = double.parse(value);
                                });
                              },
                              textAlign: TextAlign.center,
                              controller: controllerRR,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  hintText: "B",
                                  hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 148,
                          left: 100,
                          child: SizedBox(
                            width: 75,
                            height: 50,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  valueFieldCR = double.parse(value);
                                });
                              },
                              textAlign: TextAlign.center,
                              controller: controllerBR,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  hintText: "C",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 95,
                          left: 160,
                          child: SizedBox(
                            width: 75,
                            height: 50,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  valueFieldDR = double.parse(value);
                                });
                              },
                              textAlign: TextAlign.center,
                              controller: controllerLR,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  hintText: "D",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///
                  ////
                  ///
                  ///A2
                  ///
                  ///
                  Container(
                    width: 230,
                    height: 195,
                    child: Stack(
                      children: [
                        Positioned(left: 100, child: const Text("A2")),
                        Positioned(left: 180, top: 60, child: Text("(50)")),
                        Positioned(
                          top: 35,
                          left: 70,
                          child: SizedBox(
                            width: 75,
                            height: 50,
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 10,
                          child: SizedBox(
                            width: 75,
                            height: 50,
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
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
                                  valueFeildBA2 = double.parse(value);
                                });
                              },
                              textAlign: TextAlign.center,
                              controller: controllerBA2,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  hintText: "B",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 140,
                          child: SizedBox(
                            width: 75,
                            height: 50,
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 130,
                    height: 80,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          distance1 = double.parse(value);
                        });
                      },
                      textAlign: TextAlign.center,
                      controller: controllerDistance1,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: "Bearing 3",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        totalAxial();
                        simPLateAxial();
                      },
                      child: const Text("Total")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FormulaTwoScreen(),
                        ));
                      },
                      child: const Text("Go to Formula Two")),
                  ElevatedButton(
                      onPressed: _onTapClear, child: const Text("Clear")),
                  SizedBox(
                    width: 130,
                    height: 80,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          distance2 = double.parse(value);
                        });
                      },
                      textAlign: TextAlign.center,
                      controller: controllerDistance2,
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
                      simPlateHorizontalB3 == 0
                          ? const Text("")
                          : Text(
                              "Simplate Horizontal B3 : ${simPlateHorizontalB3.toString()}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                      simPlateVerticalB3 == 0
                          ? const Text("")
                          : Text(
                              "Simplate Vertical B3 : ${simPlateVerticalB3.toString()}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                      simPlateHorizontalB4 == 0
                          ? const Text("")
                          : Text(
                              "Simplate Horizontal B4 : ${simPlateHorizontalB4.toString()}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                    ],
                  ),
                  Column(
                    children: [
                      simPlateVerticalB4 == 0
                          ? const Text("")
                          : Text(
                              "Simplate Vertical B4 : ${simPlateVerticalB4.toString()}",
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
                ],
              ),
              const SizedBox(height: 20),

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
          )
        ],
      ),
    );
  }
}
