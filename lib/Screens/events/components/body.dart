import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mampir_foto/Screens/form/form_page.dart';
import 'package:mampir_foto/Screens/form/edit_page.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormPage(
              judul: "Tambah Data",
            );
          }));
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("mampirfoto")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: snapshot.data.docs.length,
                        itemBuilder: (contex, index) {
                          DocumentSnapshot documentSnapshot =
                              snapshot.data.docs[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return EditPage(
                                    judul: "Ubah Data",
                                    nama: documentSnapshot['nama'],
                                    nohp: documentSnapshot['nohp'],
                                    alamat: documentSnapshot['alamat'],
                                    keterangan: documentSnapshot['keterangan']
                                    // dateText: documentSnapshot['datetext'],
                                    );
                              }));
                            },
                            child: ListTile(
                              leading: Icon(Icons.person, size: 50),
                              title: Text(documentSnapshot['nama']),
                              subtitle: Text(documentSnapshot['alamat']),
                            ),
                          );
                        });
                  } else {
                    return Text("Tidak ada data");
                  }
                })
          ],
        ),
      ),
    );
  }
}
