import 'package:flutter/material.dart';
import 'package:flutter_application_9/widgets.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    bool _isChecked = true;
     

  @override
  Widget build(BuildContext context) {
   var Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               CustomText(text: "Invoices",fontsize: 18.0,fontweight: FontWeight.bold,),
               Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIcons(icon: Icons.add_circle_outline,color: Colors.white,),
                    SizedBox(width: 10,),
                      CustomText(text: "Invoice",fontsize: 18.0,color: Colors.white,),
                  ],
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.blue,),
                height: 45,width: 130,
               
               )

            ],
          ),
        SizedBox(height: 20,),
          
          Center(
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 230, 228, 228)),  color: Colors.white,),
            
              height: Size.height*0.60,
              width: Size.width*0.56,
              child: Column(
                children: [
                     
                  DataTable(columns: [
            DataColumn(label:  Checkbox(
                          value: _isChecked,
                          onChanged: (val) {
                            setState(() {
                              // _isChecked = ;
                              if (val == true) {
                               
                              }
                            });
                          },
                        )),
            DataColumn(label: Text("Invoice",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
              DataColumn(label: Text("Company",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
              DataColumn(label: Text("Invoice date",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
              DataColumn(label: Text("Due date",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
              DataColumn(label: Text("Status",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
              DataColumn(label: Text("Amount",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            )
                  ], rows: [
            DataRow(cells: [
                 DataCell(  Checkbox(
                          value: _isChecked,
                          onChanged: (val) {
                            setState(() {
                              _isChecked = val!;
                              
                            });
                          },
                        )),
             DataCell(Text("INV - 1001",style: TextStyle(color: Colors.blue,),)),
              DataCell(Text("Openlane")),
               DataCell(Text("05/10/2019")),
                DataCell(Text("05/10/2019")),
                 DataCell(Container(
                  child: Center(child: CustomText(text: "Unpaid",color: Colors.red[300],fontweight: FontWeight.bold,fontsize: 12,)),
                 height: 25,
                 width: 65,
               
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.red[50],),
                 
                 )),
                  DataCell(Text("\$2,350.00")),
            
            ]),
              DataRow(cells: [
                 DataCell(  Checkbox(
                          value: _isChecked,
                          onChanged: (val) {
                            setState(() {
                              _isChecked = val!;
                              
                            });
                          },
                        )),
             DataCell(Text("INV - 1002",style: TextStyle(color: Colors.blue,),)),
              DataCell(Text("Gogozoom")),
               DataCell(Text("05/10/2019")),
                DataCell(Text("05/10/2019")),
                 DataCell(Container(
                  child: Center(child: CustomText(text: "Paid",color: Colors.green[300],fontweight: FontWeight.bold,fontsize: 12,)),
                 height: 25,
                 width: 65,
               
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.green[50],),
                 
                 )),
                  DataCell(Text("\$750.83")),
            
            ]),
             DataRow(cells: [
                 DataCell(  Checkbox(
                          value: _isChecked,
                          onChanged: (val) {
                            setState(() {
                              _isChecked = val!;
                              
                            });
                          },
                        )),
             DataCell(Text("INV - 1003",style: TextStyle(color: Colors.blue,),)),
              DataCell(Text("Nam-zim")),
               DataCell(Text("05/10/2019")),
                DataCell(Text("05/10/2019")),
                 DataCell(Container(
                  child: Center(child: CustomText(text: "Pending",color: Color.fromARGB(255, 240, 228, 124),fontweight: FontWeight.bold,fontsize: 12,)),
                 height: 25,
                 width: 65,
               
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.yellow[50],),
                 
                 )),
                  DataCell(Text("\$1,200.00")),
            
            ]),
            
                  ]),
                  
            
                ],
              ),
            ),
          ),
     
        ],
      ),
    );
  }
}