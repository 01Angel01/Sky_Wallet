import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:skywallet/Modules/Helpers/Converter.dart';
import 'package:skywallet/Modules/Variables/Theme.dart';

class PengeluaranTab extends StatefulWidget {
  const PengeluaranTab({Key key}) : super(key: key);

  @override
  _PengeluaranTabState createState() => _PengeluaranTabState();
}

class _PengeluaranTabState extends State<PengeluaranTab> {
  var dateCtrlPengeluaran;
  List<String> category = ["Uang Makan", "Transportasi"];

  @override
  Widget build(BuildContext context) {
    String dropdownValue = category.first;

    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      children: [
        const Text("Kategori"),
        DropdownButton<String>(
          value: dropdownValue,
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          onChanged: (String value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value;
            });
          },
          items: category.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const Text("Jumlah"),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: TextField(
            cursorColor: Colors.white,
            maxLength: 12,
            autofocus: true,
            decoration: InputDecoration(
                hintText: '0',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                ),
                fillColor: Colors.white,
                filled: true),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: TextField(
            minLines: 3,
            maxLines: 3,
            cursorColor: Colors.white,
            maxLength: 255,
            autofocus: true,
            decoration: InputDecoration(
                hintText: 'Catatan',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                ),
                fillColor: Colors.white,
                filled: true),
          ),
        ),
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 16),
                foregroundColor: Colors.black,
                backgroundColor: primaryColor), // <-- TextButton
            onPressed: () {
              final now = DateTime.now();

              DatePicker.showDateTimePicker(context,
                  showTitleActions: true,
                  minTime: DateTime(now.year, now.month, now.day),
                  maxTime: DateTime(now.year + 1, now.month, now.day),
                  onConfirm: (date) {
                setState(() {
                  dateCtrlPengeluaran = date;
                });
              }, currentTime: now, locale: LocaleType.en);
            },
            icon: const Icon(
              Icons.calendar_month,
              size: 24.0,
            ),
            label: Text(getSelectDateButtonTitle(dateCtrlPengeluaran))),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Simpan"),
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: navbarBg),
        )
      ],
    );
  }
}
