/*import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrCodeResult;
  bool backCamera = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scan using " + (backCamera ? "Front Cam" : "Back Cam"),
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.w100)),
          actions: <Widget>[
            IconButton(
              icon: backCamera
                  ? Icon(
                      Icons.ac_unit,
                      color: Colors.blue,
                    )
                  : Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
              onPressed: () {
                setState(() {
                  backCamera = !backCamera;
                  camera = backCamera ? 1 : -1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.ac_unit_outlined, color: Colors.blue),
              onPressed: () {
                _scan();
              },
            )
          ],
        ),
        body: Center(
          child: Text(
            (qrCodeResult == null) || (qrCodeResult == "")
                ? "Scan QR"
                : "Session ID:" + qrCodeResult,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.blue),
          ),
        ));
  }

  Future<String> _scan() async {
    ScanResult codeSanner = await BarcodeScanner.scan(
      options: ScanOptions(
        useCamera: camera,
      ),
    );
    setState(() {
      qrCodeResult = codeSanner.rawContent;
    });
    return qrCodeResult;
  }
}

int camera = 1;*/
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/services.dart';

class Qrscan extends StatefulWidget {
  @override
  _QrscanState createState() => _QrscanState();
}

class _QrscanState extends State<Qrscan> {
  String result = "Hello World...!";
  Future _scanQR() async {
    try {
      String cameraScanResult = await scanner.scan();
      setState(() {
        result =
            cameraScanResult; // setting string result with cameraScanResult
      });
    } on PlatformException catch (e) {
      print(e);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scanner Example In Flutter"),
      ),
      body: Center(
        child: Text(result), // Here the scanned result will be shown
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.camera_alt),
          onPressed: () {
            _scanQR(); // calling a function when user click on button
          },
          label: Text("Scan")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
