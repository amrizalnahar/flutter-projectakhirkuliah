import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class DatabasesServices {
  static Future<void> createUpdateMampirfoto(BuildContext context, String nama,
      String nohp, String alamat, String keterangan, String dateText) async {
    DocumentReference mampirfotoReference =
        FirebaseFirestore.instance.collection('mampirfoto').doc(nama);
    Map<String, dynamic> dataMampirfoto = {
      'nama': nama,
      'nohp': nohp,
      'alamat': alamat,
      'keterangan': keterangan,
      'datetext': dateText
    };
    mampirfotoReference.set(dataMampirfoto).whenComplete(() {
      Navigator.pop(context);
    });
  }

  static Future<void> deleteMampirFoto(String nama) async {
    CollectionReference mampirfotoCollection =
        FirebaseFirestore.instance.collection('mampirfoto');
    return await mampirfotoCollection.doc(nama).delete();
  }
}
