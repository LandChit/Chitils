import 'package:flutter/material.dart';

class InprogressPage extends StatefulWidget {
  const InprogressPage({super.key});

  @override
  State<InprogressPage> createState() => _InprogressPageState();
}

class _InprogressPageState extends State<InprogressPage> {
  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
      padding: const EdgeInsets.all(25),
      width: pageWidth,

      // ROOT COLUMN
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TITLE TEXTS
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Chitils',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  height: 1),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Text(
                  "--NOT AVAILABLE--",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                ))
          ]),

          // CONTENT
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            width: pageWidth,
            child: const Column(
              children: [
                Text(
                  "IN\nPROGRESS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey),
                ),
                Text(
                  "IN\nPROGRESS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
