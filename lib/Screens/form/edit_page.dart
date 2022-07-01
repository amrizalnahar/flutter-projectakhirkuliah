import 'package:flutter/material.dart';
import 'package:mampir_foto/Screens/events/events_screen.dart';
import 'package:mampir_foto/components/app_bar.dart';
import 'package:mampir_foto/database_services.dart';

// ignore: must_be_immutable
class EditPage extends StatefulWidget {
  String nama = '';
  String nohp = '';
  String alamat = '';
  String judul = '';
  String keterangan = '';
  String dateText = '';

  EditPage(
      {Key key,
      this.nama,
      this.nohp,
      this.alamat,
      this.judul,
      this.keterangan,
      this.dateText});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String nama;
  String nohp;
  String alamat;
  String keterangan;
  String dateText;
  var txtnama = TextEditingController();
  var txtnohp = TextEditingController();
  var txtalamat = TextEditingController();
  var txtketerangan = TextEditingController();

  DateTime dueDate = new DateTime.now();

  Future<Null> _selectDueDate(BuildContext context) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: dueDate,
        firstDate: DateTime(2018),
        lastDate: DateTime(2080));

    if (picked != null) {
      setState(() {
        dueDate = picked;
        dateText = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    txtnama.text = widget.nama;
    txtnohp.text = widget.nohp;
    txtalamat.text = widget.alamat;
    txtketerangan.text = widget.keterangan;
    nama = widget.nama;
    nohp = widget.nohp;
    alamat = widget.alamat;
    keterangan = widget.keterangan;
    dateText = "${dueDate.day}/${dueDate.month}/${dueDate.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: buildAppBar(context, title: widget.judul),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: txtnama,
                decoration: InputDecoration(
                    labelText: "Nama Pemesan",
                    hintText: "Masukkan nama pemesan",
                    border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {
                    nama = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: txtnohp,
                decoration: InputDecoration(
                    labelText: "Nomor Hp",
                    hintText: "Masukkan nomor HP",
                    border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {
                    nohp = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: txtalamat,
                decoration: InputDecoration(
                    labelText: "Alamat Lengkap",
                    hintText: "Masukkan alamat lengkap",
                    border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {
                    alamat = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(Icons.date_range),
                  ),
                  Expanded(
                    child: Text(
                      "Tanggal",
                      style:
                          new TextStyle(fontSize: 18.0, color: Colors.black54),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _selectDueDate(context);
                    },
                    child: Text(
                      dateText,
                      style:
                          new TextStyle(fontSize: 18.0, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: txtketerangan,
                decoration: InputDecoration(
                    labelText: "Nama Paket",
                    hintText: "Masukkan nama paket",
                    border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {
                    keterangan = value;
                  });
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text('Update Data'),
              onPressed: () {
                DatabasesServices.createUpdateMampirfoto(
                    context, nama, nohp, alamat, keterangan, dateText);
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Hapus Data'),
                  content: const Text('Apakah anda yakin?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        DatabasesServices.deleteMampirFoto(widget.nama);
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new EventsScreen()));
                      },
                      child: const Text('Hapus'),
                    ),
                  ],
                ),
              ),
              child: const Text('Hapus Data'),
            ),
          ],
        ));
  }
}
