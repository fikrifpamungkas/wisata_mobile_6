import 'package:flutter/material.dart';

class Pertemuan6 extends StatefulWidget {
  const Pertemuan6({super.key});

  @override
  State<Pertemuan6> createState() => _Pertemuan6State();
}

class _Pertemuan6State extends State<Pertemuan6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Pertemuan 6 : Form Screen"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/Kucing.jpg',
                    width: 150,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Image.asset(
                    'images/cat.jpg',
                    width: 150,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    labelText: 'Masukan Nama Anda',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      nama = value;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('Jenis Kelamin :'),
                  Radio(
                      value: 'Laki laki',
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value.toString();
                        });
                      }),
                  Text('Laki laki'),
                  Radio(
                      value: 'Perempuan',
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value.toString();
                        });
                      }),
                  Text('Perempuan'),
                ],
              ),
              SizedBox(height: 20),
              Text('Hobi Anda :'),
              CheckboxListTile(
                  value: olahraga,
                  onChanged: (value) {
                    setState(() {
                      olahraga = value!;
                    });
                  }),
              CheckboxListTile(
                  value: seni,
                  onChanged: (value) {
                    setState(() {
                      seni = value!;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              SwitchListTile(
                title: Text('Lulus'),
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
            ],
          )),
    );
  }
}
