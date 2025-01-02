// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class MsHomeUI extends StatefulWidget {
  const MsHomeUI({super.key});

  @override
  State<MsHomeUI> createState() => _MsHomeUIState();
}

class _MsHomeUIState extends State<MsHomeUI> {
  //
  _showResultDialog(context, msg) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Container(
            color: Colors.deepOrange,
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'รายระเอียด\nผ่อนรถต่อเดือน',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          content: Text(
            msg,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.deepOrange,
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  child: Text(
                    'ตกลง',
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  //
  _showWarningDialog(context, msg) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Container(
            color: Colors.deepOrange,
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'คำเตือน',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          content: Text(
            msg,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.deepOrange,
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  child: Text(
                    'ตกลง',
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  // Ctrl
  TextEditingController carPriceCtrl = TextEditingController(text: '');
  TextEditingController interesCtrl = TextEditingController(text: '');
  // เก็บค่าที่เลือกจาก radio
  String? _selectDown = '10';
  //ตัวแปรเก็บค่าและรายการต่างๆที่จะใช้ใน DropDownButtom
  String? _selectYearPay = '1';
  List<DropdownMenuItem<String>> get _dropdownItemsYearPay {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        value: "1",
        child: Text("12 งวด (1 ปี)"),
      ),
      DropdownMenuItem(
        value: "2",
        child: Text("24 งวด (2 ปี)"),
      ),
      DropdownMenuItem(
        value: "3",
        child: Text("36 งวด (3 ปี)"),
      ),
      DropdownMenuItem(
        value: "4",
        child: Text("48 งวด (4 ปี)"),
      ),
      DropdownMenuItem(
        value: "5",
        child: Text("60 งวด (5 ปี)"),
      ),
      DropdownMenuItem(
        value: "6",
        child: Text("72 งวด (6 ปี)"),
      ),
      DropdownMenuItem(
        value: "7",
        child: Text("84 งวด (7 ปี)"),
      ),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 180, 132),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 45, 30),
        title: Text(
          'Mototshow 2024',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
              top: 50.0,
              bottom: 100.0,
            ),
            child: Column(
              children: [
                Text(
                  'คำนวนงวดรถ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  radius: MediaQuery.of(context).size.width * 0.21,
                  child: CircleAvatar(
                    backgroundColor: Colors.deepOrange[50],
                    radius: MediaQuery.of(context).size.width * 0.19,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.18,
                      backgroundImage: AssetImage(
                        'assets/images/car.jpg',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ราคารถ (บาท)',
                    style: TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                TextField(
                  controller: carPriceCtrl,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'^[0-9]+.?[0-9]*'),
                    ),
                  ],
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                  decoration: InputDecoration(
                    hintText: '0.00',
                    suffixText: 'บาท',
                    suffixStyle: TextStyle(
                      color: Colors.deepOrange,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'เงินดาวน์ (%)',
                    style: TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      onChanged: (paramValue) {
                        setState(() {
                          _selectDown = paramValue!;
                        });
                      },
                      value: "10",
                      groupValue: _selectDown,
                      activeColor: Colors.deepOrange,
                    ),
                    Text(
                      "10%",
                    ),
                    Radio(
                      onChanged: (paramValue) {
                        setState(() {
                          _selectDown = paramValue!;
                        });
                      },
                      value: "20",
                      groupValue: _selectDown,
                      activeColor: Colors.deepOrange,
                    ),
                    Text(
                      "20%",
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      onChanged: (paramValue) {
                        setState(() {
                          _selectDown = paramValue!;
                        });
                      },
                      value: "25",
                      groupValue: _selectDown,
                      activeColor: Colors.deepOrange,
                    ),
                    Text(
                      "25%",
                    ),
                    Radio(
                      onChanged: (paramValue) {
                        setState(() {
                          _selectDown = paramValue!;
                        });
                      },
                      value: "30",
                      groupValue: _selectDown,
                      activeColor: Colors.deepOrange,
                    ),
                    Text(
                      "30%",
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'จำนวนปีที่ผ่อน',
                    style: TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: _dropdownItemsYearPay,
                    value: _selectYearPay,
                    onChanged: (String? value) {
                      setState(() {
                        _selectYearPay = value;
                      });
                    },
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                    iconEnabledColor: Colors.grey[700],
                    dropdownColor: Colors.deepOrange[50],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ดอกเบี้ย (%) ต่อปี',
                    style: TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                TextField(
                  controller: interesCtrl,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'^[0-9]+.?[0-9]*'),
                    ),
                  ],
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                  decoration: InputDecoration(
                    hintText: '0.00',
                    suffixText: 'บาท',
                    suffixStyle: TextStyle(
                      color: Colors.deepOrange,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                ElevatedButton(
                  onPressed: () {
                    // validate หน้าจอ
                    if (carPriceCtrl.text.isEmpty == true) {
                      _showWarningDialog(context, 'ป้อนราคา');
                      return;
                    } else if (interesCtrl.text.isEmpty == true) {
                      _showWarningDialog(context, 'ป้อนดอกเบี้ย (%)');
                      return;
                    }
                    //คำนวน
                    double carPrice = double.parse(carPriceCtrl.text);
                    double interest = double.parse(interesCtrl.text);
                    int down = int.parse(_selectDown!);
                    int year = int.parse(_selectYearPay!);
                    // คำนวนเงินดาว
                    double downPay = carPrice * down / 100;
                    // คำนวนนอดจัด = ราคารถ - เงินดาว์
                    double yodjud = carPrice - downPay;
                    // ดอกเบี้ย /ยอดจัด * ดอกเบี้ย%ต่อปี /100 *จำนวนปี
                    double interestTotal = (yodjud * interest / 100) * year;
                    // คำนวนเงินที่จะเอามาคิดต่อเดือน
                    double carPriceTotalForPay = yodjud + interestTotal;
                    // เงินที่ต้องผ่อนต่อเดือน
                    double payPerMonth = carPriceTotalForPay / (year * 12);
                    // แสดงผลที่คำนวนได้ต่างๆออกมา  MSG Dialog
                    // 
                    // ----------2
                    String carPriceShow =NumberFormat('#,##0.00','en_US').format(carPrice);
                    String downPayShow =NumberFormat('#,##0.00','en_US').format(downPay);
                    String payPerMonthShow =NumberFormat('#,##0.00','en_US').format(payPerMonth);

                    _showResultDialog(context, 'ราคารถ $carPrice บาท\nเงินดาวน์ $downPay บาท\nสรุปผ่อนต่อเดือน $payPerMonth บาท');
                  
                  },
                  child: Text(
                    'คำนวณค่างวดรถ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.width * 0.15,
                    ),
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
