import 'package:flutter/material.dart';

class WhichIsBetterScreen extends StatefulWidget {
  const WhichIsBetterScreen({super.key});

  @override
  State<WhichIsBetterScreen> createState() => _WhichIsBetterScreenState();
}

class _WhichIsBetterScreenState extends State<WhichIsBetterScreen> {


String? _selectedValue;

 int _count = 0;

 void _increment(){
   setState(() {
     _count++;
   });
 }

 void _decrement(){
   setState(() {
     if(_count > 0){
       _count--;
     }
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55,left: 36),
            child: Text('Which is Better ?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w600
            ),
            ),
          ),

          SizedBox(height: 15,),

          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Icon(
              Icons.thumb_up,
              color: Colors.blue,
            ),
          ),

          SizedBox(height: 35,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 180,
              width: 385,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7,top: 8),
                    child: Container(
                        height: 165,
                        width: 115,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image(
                            image: NetworkImage('https://img.freepik.com/free-photo/delicious-burger-with-fresh-ingredients_23-2150857908.jpg?t=st=1725809067~exp=1725812667~hmac=3f70065ec9af81aaabefdd009324819586b5ea2d178c7dd878b638b94754fb61&w=360',),
                            fit: BoxFit.cover,
                          ),
                        )
                    ),
                  ),
              
               Column(
               children: [
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 10,left: 8),
                       child: Text('Tripple OG Burger',
                         style: TextStyle(
                             color: Colors.black.withOpacity(0.6),
                             fontWeight: FontWeight.w900,
                             fontSize: 20
                         ) ,),
                     ),

                     SizedBox(width: 5,),

                     Padding(
                       padding: const EdgeInsets.only(left: 9,top: 10),
                       child: Text('\$8.99',
                         style: TextStyle(
                           fontSize: 22,
                           fontWeight: FontWeight.w900,
                           color: Colors.black,

                         ),
                       ),
                     ),
                   ],
                 ),

                 Text('Triple Smashed Patties, Caramelized\n Onions, PickiesBored Sauce.',
                   style: TextStyle(
                     color: Colors.black,
                   ),
                 ),
                 SizedBox(height: 20,),

                 Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                   //crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     GestureDetector(
                       onTap: (){
                         _decrement();
                       },
                       child: Container(
                         height: 35,
                         width: 35,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                           color: Colors.black,
                         ),
                         child: Center(
                           child: Text('-',
                           style: TextStyle(
                             fontSize: 25,
                             color: Colors.white
                           ),
                           ),
                         )
                       ),
                     ),
                     SizedBox(width: 10,),

                     Text('$_count',style: TextStyle(
                       color: Colors.black,
                       fontSize: 25,
                       fontWeight: FontWeight.w600
                     ),),

                     SizedBox(width: 10,),

                     GestureDetector(
                       onTap: (){
                         _increment();
                       },
                       child: Container(
                           height: 35,
                           width: 35,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25),
                             color: Colors.black,
                           ),
                           child: Center(
                             child: Text('+',
                               style: TextStyle(
                                   fontSize: 25,
                                   color: Colors.white
                               ),
                             ),
                           )
                       ),
                     ),

                     SizedBox(width: 50,),

                     Padding(
                       padding: const EdgeInsets.only(left: 32),
                       child: Icon(
                         Icons.delete_outline_outlined,
                         size: 35,
                         color: Colors.red,
                       ),
                     )
                   ],
                 )
               ],
             ),
                ],
              )
            ),
          ),
          SizedBox(height: 50,),


          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Icon(
              Icons.lightbulb,
              color: Colors.orange.shade500,
              // shadows: [
              //   Shadow(
              //     offset: Offset(3.0,3.0),
              //     color: Colors.yellow,
              //     blurRadius: 5.0
              //   )
              // ],
              size: 30,
            ),
          ),

          SizedBox(height: 35,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
                height: 180,
                width: 385,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7,top: 8),
                      child: Container(
                          height: 165,
                          width: 115,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image(
                              image: NetworkImage('https://img.freepik.com/free-photo/delicious-burger-with-fresh-ingredients_23-2150857908.jpg?t=st=1725809067~exp=1725812667~hmac=3f70065ec9af81aaabefdd009324819586b5ea2d178c7dd878b638b94754fb61&w=360',),
                              fit: BoxFit.cover,
                            ),
                          )
                      ),
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 8),
                              child: Text('Tripple OG Burger',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20
                                ) ,),
                            ),

                            SizedBox(width: 5,),

                            Padding(
                              padding: const EdgeInsets.only(left: 9,top: 10),
                              child: Text('\$8.99',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,

                                ),
                              ),
                            ),
                          ],
                        ),

                        Text('Triple Smashed Patties, Caramelized\n Onions, PickiesBored Sauce.',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 40,),

                        Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                height: 27,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: DropdownButton<String>(
                                    iconEnabledColor: Colors.white,
                                   dropdownColor: Colors.pink.shade900,
                                   iconSize: 28,
                                   borderRadius: BorderRadius.circular(12),


                                   // dropdownColor: Colors.yellow,
                                    hint: Text('1',style: TextStyle(
                                      color: Colors.white,
                                      //fontSize: 28
                                    ),),
                                    value: _selectedValue,
                                    items: <String>['1','2','3','4'].map((String value){
                                      return DropdownMenuItem<String>(
                                        value: value,
                                          child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedValue = newValue;

                                      });
                                    },
                                  style: TextStyle(color: Colors.white),

                                  )

                                )
                            ),
                           // SizedBox(width: 10,),



                            SizedBox(width: 20,),



                           // SizedBox(width: 50,),

                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Icon(
                                Icons.delete_outline_outlined,
                                size: 35,
                                color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )
            ),
          ),

        ],
      ),
    );
  }
}
