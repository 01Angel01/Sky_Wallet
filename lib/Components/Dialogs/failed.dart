import 'package:flutter/material.dart';
import 'package:skywallet/Modules/Helpers/Converter.dart';

class FailedDialog extends StatefulWidget {
  FailedDialog({Key key, this.text}) : super(key: key);
  var text;

  @override
  _FailedDialog createState() => _FailedDialog();
}

class _FailedDialog extends State<FailedDialog> {
  @override
  Widget build(BuildContext context) {
    //double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;

    return AlertDialog(
      contentPadding: const EdgeInsets.all(10),
      title: const Text('Error'),
      content: SizedBox(
        width: fullWidth,
        height: 300,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                child: Image.asset('assets/icons/Sorry.png', width: 200),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(getMessageResponseFromObject(widget.text),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500)))
            ]),
      ),
      actions: <Widget>[
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            )),
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
          ),
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}