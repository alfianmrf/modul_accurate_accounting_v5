import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:modul_accurate_accounting_v5/screens/pdf_screen.dart';

class MateriScreen extends StatefulWidget{
  static const String id ="home_screen";
  @override
  _MateriScreenState createState() => _MateriScreenState();
}

class _MateriScreenState extends State<MateriScreen>{
  final List materi = [
    ['Bab I', 'Pendahuluan', 'assets/pdf/materi/materi modul- PENDAHULUAN BAB 1.pdf'],
    ['Bab II', 'Set Up Awal Database', 'assets/pdf/materi/materi modul- SET UP AWAL BAB 2 (1).pdf'],
    ['Bab III', 'Modul Pembelian', 'assets/pdf/materi/materi modul PEMBELIAN  BAB 3.pdf'],
    ['Bab IV', 'Modul Penjualan', 'assets/pdf/materi/materi modul-MODUL PENJUALAN BAB IV.pdf'],
    ['Bab V', 'Warehouse & Inventory', 'assets/pdf/materi/materi modul- WAREHOUSE DAN INVENTORY BAB 5.pdf'],
    ['Bab VI', 'Buku Besar', 'assets/pdf/materi/materi modul- GENERAL LEDGER BAB 6 (1).pdf'],
    ['Bab VII', 'Cash & Bank', 'assets/pdf/materi/materi modul- CASH_BANK BAB 7.pdf'],
    ['Bab VIII', 'Fixed Asset', 'assets/pdf/materi/MODUL MATERI - FIXED ASSET BAB 8.pdf'],
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
        title: Text('Materi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: materi.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                margin: EdgeInsets.only(bottom: 15),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new PDFScreen(materi[index][1], materi[index][2]),
                        ));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: index%2==0?Colors.black:Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            'assets/menu/materi.png',
                            width: 30,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              materi[index][0],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              materi[index][1],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}