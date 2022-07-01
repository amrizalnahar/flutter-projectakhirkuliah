import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            showPaket(
              "Paket PreWedding",
              "https://pengantinbaru.net/wp-content/uploads/2020/01/Foto-Prewedding-Hijab-Di-Pantai-1.jpg",
              "Keterangan:",
              "80 foto edit, 2 foto cetak 20R + Pigura, 1 Penyimpanan Flashdisk",
              "Harga: Rp.1.000.000",
            ),
            showPaket(
              "Peket Wedding 1",
              "https://alienco.net/wp-content/uploads/2018/11/IMG_1354-570x320.jpg",
              "Keterangan:",
              "50 foto edit, 40 foto cetak 4R, 1 cetak 16R dan Pigura, 1 Flashdisk penyimpanan.",
              "Harga: Rp.1.400.000",
            ),
            showPaket(
              "Paket Dokumentasi",
              "https://infiaconcept.com/wp-content/uploads/2020/11/IMG_6327-min-1080x675.jpg",
              "Keterangan:",
              "10 foto edit, 5 foto cetak 5R, 1 Penyimpanan Flashdisk",
              "Harga: Rp.500.000",
            )
          ],
        ),
      ),
    );
  }
}

Card showPaket(String namapaket, String img, String keterangan,
    String keteranganpaket, String harga) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(namapaket,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(img),
          ),
          Text(
            keterangan,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Text(
            keteranganpaket,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              // harga
              harga,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
