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
              Image.network(
                  "https://nzmaths.co.nz/sites/default/files/images/uploads/users/3/envelope_0.PNG"),
              Table(
                children: _tableBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _tableBuilder() {
    return [
      _tableRowBuilder("Order ID", "OIGS8G449DF"),
      _tableRowBuilder("Sender's Name", "Mayank Bazari"),
      _tableRowBuilder("Receiver's Name", "Mayank Ajmeri"),
      _tableRowBuilder(
          "Pick-up Location", "GEC Gandhinagar, Sector 28, Gandhinagar"),
      _tableRowBuilder("Drop Location", "IIITV Hostel, Prantij"),
      // _tableRowBuilder(
      //     "Receiver's Address", "Sabar Institute of Technology,Beawar"),
      _tableRowBuilder("Package Type", "Parcel"),
      _tableRowBuilder("Weight", "2.5 kg"),
      _tableRowBuilder("Pick-up Time", "12:50"),
      _tableRowBuilder("Pick-up Date", "6 October 2019"),
      _tableRowBuilder("Expected Drop-Time", "15:57"),
      _tableRowBuilder("Estimated Date", "6 October 2019"),
      _tableRowBuilder("Handle with Care", "Yes"),
      _tableRowBuilder("Grand Total", "Rs. 127"),
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
