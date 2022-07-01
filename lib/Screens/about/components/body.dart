import 'package:flutter/material.dart';
import 'package:mampir_foto/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 25,
              children: [
                Image.asset('assets/images/Logo.png'),
                Center(
                    child: Text(
                  "Mampir Foto merupakan aplikasi yang dapat digunakan sebagai pemesanan jadwal booking foto untuk event wedding atau kegiatan khusus.",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                )),
                Center(
                    child: Text(
                  "Developer:",
                  style: TextStyle(fontSize: 16),
                )),
                Text("Muhamad Amrizal Nahar -  18103019"),
                Image.asset('assets/images/amrizal-min.jpg'),
                Text("Vindy Kusuma Dwinanda - 18103030"),
                Image.asset('assets/images/pindi.jpg'),
                Text("Andaru Liken Anggoro - 18103097"),
                Image.asset('assets/images/andaru.jpg'),
                Text("Naufal Azhar - 18103083"),
                Image.asset('assets/images/naufal.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
