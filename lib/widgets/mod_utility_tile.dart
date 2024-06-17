import 'package:chitils/commands_handler/root_commands.dart';
import 'package:flutter/material.dart';

const defaultSpaceBetween = SizedBox(
  width: 15,
);
const double edgePaddingSize = 25;
const leftPadding = EdgeInsetsDirectional.fromSTEB(edgePaddingSize, 0, 0, 0);

Widget tileBuilder({
  required IconData tileIcon,
  required Color? tileColor,
  required String tileName,
  required String tileDescription,
  required String commandCode,
}) {
  const titleStyle = TextStyle(fontWeight: FontWeight.w900, fontSize: 17);
// width, height
  const List<double> tileSize = [175, 220];

  const double tileIconSize = 55;
  const tileIconColor = Colors.white;

  var tileRadius = BorderRadius.circular(25);

  return InkWell(
    onTap: () {
      setCommand(commandCode);
    },
    borderRadius: BorderRadius.circular(10),
    child: Container(
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: tileRadius,
      ),
      padding: const EdgeInsets.all(20),
      width: tileSize[0],
      height: tileSize[1],
      child: Column(
        children: [
          Icon(
            tileIcon,
            color: tileIconColor,
            size: tileIconSize,
          ),
          Text(
            tileName,
            style: titleStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(tileDescription)
        ],
      ),
    ),
  );
}
