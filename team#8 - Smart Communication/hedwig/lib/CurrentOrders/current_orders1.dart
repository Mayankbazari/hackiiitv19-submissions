import 'package:flutter/material.dart';

class Current_order1 extends StatefulWidget {
  @override
  _Current_order1State createState() => _Current_order1State();
}

class _Current_order1State extends State<Current_order1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset("images/envelope.png"),
              Table(
                children: _tableBuilder(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15, right: 250),
                child: Image.asset("images/courier.png",
                    height: 150, width: 150, alignment: Alignment.centerLeft),
              ),
              Table(
                children: _tableBuilder1(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _tableBuilder() {
    return [
      _tableRowBuilder("Order ID", "D653289"),
      _tableRowBuilder("Sender's Name", "Anvay Mishra"),
      _tableRowBuilder("Receiver's Name", "Yash Shah"),
      _tableRowBuilder("Pick-up Location", "E402,Ishan Silver,Ahemdabad"),
      _tableRowBuilder("Drop Location", "G203 Yogeshwar Tenament,Ahemdabad"),
      // _tableRowBuilder(
      //     "Receiver's Address", "Sabar Institute of Technology,Beawar"),
      _tableRowBuilder("Package Type", "Document"),
      _tableRowBuilder("Weight", "120 grams"),
      _tableRowBuilder("Pick-up Time", "9:30"),
      _tableRowBuilder("Pick-up Date", "5 September 2019"),
      _tableRowBuilder("Expected Drop-Time", "15:20"),
      _tableRowBuilder("Estimated Date", "5 September 2019"),
      _tableRowBuilder("Handle with Care", "No"),
      _tableRowBuilder("Grand Total", "Rs. 135"),
    ];
  }

  _tableBuilder1() {
    return [
      _tableRowBuilder("ID", "C623541"),
      _tableRowBuilder("Name", "Nerandra"),
      _tableRowBuilder("Mobile No.", "9654321853"),
    ];
  }

  TableRow _tableRowBuilder(String parameter, String value) {
    return TableRow(
      children: [
        _tableCellBuilderBold("$parameter  :"),
        _tableCellBuilder("$value"),
      ],
    );
  }

  Widget _tableCellBuilder(String value) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Text(
          value,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      verticalAlignment: TableCellVerticalAlignment.middle,
    );
  }

  Widget _tableCellBuilderBold(String value) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Text(
          value,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      verticalAlignment: TableCellVerticalAlignment.middle,
    );
  }
}
