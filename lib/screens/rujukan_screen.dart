import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:modul_accurate_accounting_v5/screens/pdf_screen.dart';

class RujukanScreen extends StatefulWidget{
  static const String id ="rujukan_screen";
  @override
  _RujukanScreenState createState() => _RujukanScreenState();
}

class _RujukanScreenState extends State<RujukanScreen>{
  final List rujukan = [
    'Ambarwati, I., 2020. Buku Ajar Berbasis Contextual Teaching and Learning (CTL) Pada Mata Pelajaran Komputer Akuntansi Accurate, [online] 25(3). Available at: <http://ejournal.undiksha.ac.id> [Accessed 30 October 2020].',
    'Dwiyogo, W., 2017.PENGEMBANGAN MODUL ELEKTRONIK MATA PELAJARAN PENDIDIKAN JASMANI, OLAHRAGA, DAN KESEHATAN KELAS XI BERBASIS ONLINE DENGAN PROGRAM EDMODO, [online] 2(1). Available at: <http://journal.um.ac.id> [Accessed 10 November 2020].',
    'Fitriani, Devita Eka. "PENGEMBANGAN MODUL KOMPUTER AKUNTANSI BERBASIS PENDEKATAN SAINTIFIK UNTUK MENINGKATKAN KEMANDIRIAN BELAJAR SISWA KELAS XI AKUNTANSI". Jurnal "Tata Arta" UNS, vol 3, no. 03, 2018, https://jurnal.uns.ac.id/tata.Accessed 8 Nov 2020.',
    'Hamzah, Imron. "Development Of Accounting E-Module To Support The Scientific Approach Of Students Grade X Vocational High School". Journal Of Accounting Dan Bussines Education, vol 2, no. 1, 2017, http://journal.um.ac.id/. Accessed 10 Nov 2020.',
    'Hendri, Nofri, and Ulfia Rahmi. "E-Modul Computer Based Learning Sebagai E-Resource Digital Literacy Bagi Mahasiswa". Jurnal Of Educational Studies, vol 3, no. 01, 2018, https://www.researchgate.net/. Accessed 14 Oct 2020.',
    'Kantun, S., 2016.Pengembangan Accounting Electronic Module Berbantuan Program Aplikasi Accurate Accounting V 5 Untuk Siswa Smk Kelas XI Program Keahlian Akuntansi. [online] Available at: <http://publikasiilmiah.ums.ac.id> [Accessed 2 November 2020].',
    'Lewenussa, R. and Wijiastuti, R., 2019. Pelatihan Fitur Project Dengan Sofware Accurate Pada Mahasiswa Program Studi Manajemen Dalam Rangka Peningkatan Produktifitas Dan Keterampilan Mahasiswa Dalam Dunia Kerja, [online] 01(2). Available at: <http://ejournal.um-sorong.ac.id> [Accessed 8 November 2020].',
    'Pradana, Fengky Adie. "Development Of E-Module Combining Science Process Skills And Dynamics Motion Material To Increasingcritical Thinking Skillsand Improve Student Learning Motivation Senior High Schoo". International Journal Of Science And Applied Science, vol 1, no. 01, 2016, https://jurnal.uns.ac.id/ijsascs/article/view/5112/4574. Accessed 12 Sept 2020.',
    'Santoso, Fitriana Wahyu. "PENGEMBANGAN E-MODUL BERBASIS ANDROID PADA MATA PELAJARAN KOMPUTER AKUNTANSI MATERI POKOK DATA AWAL PERUSAHAAN DAGANG KELAS XI JURUSAN AKUNTANSI DI SMKN 1 JATIREJO – MOJOKERTO". 2021, https://jurnalmahasiswa.unesa.ac.id/.Accessed 13 Nov 2020.',
    'Sari, Riska Mulya. "PENGARUH PENGGUNAAN APLIKASI ACCURATE ACCOUNTING TERHADAP STUDENT ENGAGEMENT DALAM MENCATAT DAN MENGELOLA LAPORAN KEUANGAN DI SEKOLAH MENENGAH KEJURUAN MUHAMMADIYAH 02 PEKANBARU". Vol 01, no. 2, 2017, http://repository.uin-suska.ac.id/. Accessed 11 Oct 2020.',
    'Yuliana, Hana. "Peranan Program Accurate Accounting Terhadap Efektivitas Pencatatan Laporan Penjualan Kredit". Accurate Accounting And Credit Sales, 2013, https://jurnal.stiekesatuan.ac.id/. Accessed 9 Nov 2020.'
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
        title: Text('Rujukan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: rujukan.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  rujukan[index],
                  textAlign: TextAlign.justify,
                ),
              );
            }),
      ),
    );
  }
}