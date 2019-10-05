import 'package:flutter/material.dart';

class User_info extends StatefulWidget {
  User_info({Key key}) : super(key: key);

  _User_infoState createState() => _User_infoState();
}

class _User_infoState extends State<User_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 100.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "\nUser Profile",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
              backgroundColor: Colors.black,
              elevation: 0,
            ),
          ];
        },
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.grey[500],
            Colors.white70,
            Colors.grey[500],
            // Colors.blue[500],
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars0.githubusercontent.com/u/42274566?s=460&v=4"),
                    radius: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Table(
                    children: _tableBuilder(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _tableBuilder() {
    return [
      _tableRowBuilder("Name", "Mayank Bazari"),
      _tableRowBuilder("Gender", "Male"),
      _tableRowBuilder("Age", "20"),
      _tableRowBuilder("E-Mail", "abc5@xyz.com"),
      _tableRowBuilder("Phone Number", "98******10"),
      _tableRowBuilder("Address", " Sabar Institute of Technology,Beawar"),
    ];
  }

  TableRow _tableRowBuilder(String parameter, String value) {
    return TableRow(
      children: [
        _tableCellBuilderBold("$parameter \t :"),
        _tableCellBuilder("$value"),
      ],
    );
  }

  Widget _tableCellBuilder(String value) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Text(
          value,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18,
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
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      verticalAlignment: TableCellVerticalAlignment.middle,
    );
  }
}
