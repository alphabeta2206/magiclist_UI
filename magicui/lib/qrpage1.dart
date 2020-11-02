import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

class QRsc extends StatefulWidget {
  QRsc({Key key}) : super(key: key);

  @override
  _QRscState createState() => _QRscState();
}

class _QRscState extends State<QRsc> {


  void _scan() async {
    List<Barcode> barcodes = List();
    try {
      barcodes = await FlutterMobileVision.scan(
        waitTap: true,
        showText: true,
      );
      if (barcodes.length > 0) {
        for (Barcode barcode in barcodes) {
          print(
              'CODE VALUE IS ${barcode.displayValue}');
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
  @override
  @override
void initState() {
  super.initState();
  FlutterMobileVision.start().then((x) => setState(() {}));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            FloatingActionButton(
                child: Text('scan'),
                onPressed: _scan,
                backgroundColor: Colors.blue)
          ],
        ),
      ),
    );
  }
}
