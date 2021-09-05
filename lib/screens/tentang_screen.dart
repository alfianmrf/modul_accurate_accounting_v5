import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:modul_accurate_accounting_v5/screens/pdf_screen.dart';

class TentangScreen extends StatefulWidget{
  static const String id ="tentang_screen";
  @override
  _TentangScreenState createState() => _TentangScreenState();
}

class _TentangScreenState extends State<TentangScreen>{
  final List tentang = [
    'Elctronik modul Accurate Accounting ini dibuat untuk menunuhi penelitian skripsi pengembangan yang saya lakukan dengan judul “Pengembangan E-modul Berbasis Android Aplikasi Accurate Accounting V5”. Materi dan simulasi yang dirancang pada E-modul ini diharapkan dapat membantu siswa maupun guru dalam menjalankan program aplikasi Accurate Accounting V5 dalam kegiatan belajar-mengajar.',
    'Pengambangan E-modul ini berbasis android. Android yang selalu kita genggam setiap waktu akan lebih bermanfaat jika dapat digunakan dalam proses belajar mengajar. Karena dapat kita buka kapanpun dan dimanapun. E-modul ini juga berbasis Stand alone, dimana tidak membutuhkan perangkat lain untuk mengakses setiap menu, seperti tugas dan video. Sehingga dapat dimungkinkan siswa belajar tanpa didampingi guru sekalipun.  Materi pada E-modul ini sudah disesuaikan dengan bahasa sehari-hari berdasarkan kaidah bahasa Indonesia yang benar. Setiap langkah demi langkah sudah tersusun dengan rapid an tidak membingungkan pembaca.',
    'Diharapkan E-modul ini dapat dijadikan lompatan untuk pendidikan kedepannya agar dapat memanfaatkan teknologi dan internet. Dengan diterapkannya modul atau bahan ajar elektronik maka penerapan buku manual yang terbuat dari kertas dapat berkurang. Terdapat secerca harapan dalam E-modul ini untuk pendidikan Indonesia yang lebih baik di masa yang akan datang.',
    'Penyusun,',
    'ANGGIT PRATAMA PUTRA'
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: tentang.length,
            itemBuilder: (BuildContext context, int index){
              if(index<3){
                return RichText(
                  text: TextSpan(
                      text: '        ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: tentang[index],
                        ),
                      ]
                  ),
                  textAlign: TextAlign.justify,
                );
              }
              else{
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    tentang[index],
                    textAlign: TextAlign.end,
                  ),
                );
              }
            }),
      ),
    );
  }
}