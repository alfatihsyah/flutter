import 'package:flutter/material.dart';

class ModalWidget {
  showFullModal(context, Widget isi) {
    showGeneralDialog(
      context: context,
      barrierDismissible:
          false, // should dialog be dismissed when tapped outside
      barrierLabel: "Modal", // label for barrier
      transitionDuration: Duration(
          milliseconds:
              500), // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) {
        // your widget implementation
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              title: Text(
                "Modal",
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Overpass',
                    fontSize: 20),
              ),
              elevation: 0.0),
          backgroundColor: Colors.white.withOpacity(0.90),
          body: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: const Color(0xfff8f8f8),
                  width: 1,
                ),
              ),
            ),
            child: isi,
          ),
        );
      },
    );
  }
}