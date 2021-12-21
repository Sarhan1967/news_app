import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/PageView_items.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({Key key}) : super(key: key);

  @override
  _onBoardingState createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  List<PageModel>pages=List<PageModel>();
    void _addPages(){
    pages.add(PageModel("Welcome","assets/plate1.jpg","Congratulation",Icons.ac_unit,));
    pages.add(PageModel("Alarm","assets/plate2.jpg","Get up Early",Icons.access_alarm,));
    pages.add(PageModel("Printer","assets/plate3.jpg","Print the letter",Icons.print,));
    pages.add(PageModel("Map","assets/plate4.jpg","Google Map Indicator",Icons.map,));
  }

  /*
  //Dynamic Lists  Details -----------------
  List<String>images=[
    "assets/plate1.jpg",
    "assets/plate2.jpg",
    "assets/plate3.jpg",
    "assets/plate4.jpg",
  ];

  List<IconData>icons=[
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.print,
    Icons.map,
  ];

  List<String>titles=[
    "Welcome",
    "Alarm",
    "Printer",
    "Map",
  ];

  List<String>descriptions=[
    "Congratulation",
    "Get up Early",
    "Print the letter",
    "Google Map Indicator",
  ];
*/
//-------------------------------
  @override
  Widget build(BuildContext context) {
    _addPages();

    return Scaffold(
      body:Stack(
        children:<Widget> [
          PageView.builder(itemBuilder: (context,index){
            return Stack(
              children:<Widget> [
                Container(
                  decoration: BoxDecoration(
                    image:DecorationImage(image: ExactAssetImage(
                      //Dynamic List 1 -images----------------
                        //"assets/plate1.jpg"
                        //images[index],
                      //Dynamic PageView  -images----------------
                        pages[index].images,
                    ),
                        fit:BoxFit.cover),

                  ),



                ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      Transform.translate(
                        child: Icon(
                          //Icons.access_alarm,
                          //Dynamic List 1 - icons----------------
                          //icons[index],
                          //Dynamic PageView  -icons----------------
                          pages[index].icons,
                          size: 250,color: Colors.blueAccent,
                        ),
                        offset: Offset(0.0,40),
                        ),

                      Text(
                          //"Welcome",
                        //Dynamic List 1 - titles----------------
                          //titles[index],
                          //Dynamic PageView  -titles----------------
                          pages[index].titles,
                          style:TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          )
                          ),

                      Padding(
                        padding: const EdgeInsets.only(left: 50.0,right: 50,bottom: 150,),
                        child: Text(
                            //" typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or another type of compatible computer. Text messages may be sent over a cellular network, or may also be sent via an Internet connection.",
                          //Dynamic List 1 - descriptions----------------
                            //descriptions[index],
                            //Dynamic PageView  -descriptions----------------
                            pages[index].descriptions,
                        style:TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )
                        ),
                      ),
                 ],

                    ),
                  ),

              ],

            );

          },
            //itemCount: 4,
            //Dynamic itemCount - descriptions----------------
            //itemCount: images.length,
            //Dynamic PageView  -itemCount----------------
            itemCount: pages.length,
          ),


          //page Indicators  Align------------
          Transform.translate(
            offset: Offset(0,180),
            child: Align(alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
            /** *  <Widget>[

                  Container(
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                  ),

*/
 /**
            //replace 4 Containers by 4 functions _drawcircle()
                  _drawcircle(Colors.amber),
                  _drawcircle(Colors.grey),
                  _drawcircle(Colors.grey),
                  _drawcircle(Colors.grey),
    */
            //replace 4 functions _drawCircle() by Dynamic Function _drawPageIndicator(),
                  _drawPageIndicator(),
               // ],
              ),

              ),
          ),





       //RaisedButton Align------------
          Align(alignment: Alignment.bottomCenter,
            //color:Colors.amber
            child: Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: SizedBox(
                height: 50,
                width: 380,
                //background: Colors.amber
                child: RaisedButton(
                  color: Colors.amber.shade600,
                  child:Text("GET STARTED",
                  style: TextStyle(color:Colors.pinkAccent,fontSize: 20,letterSpacing: 2.0,),
                  ),

                  onPressed:(){

                  },
                ),
              ),
            ),
          ),



        ],


      )

    );
}


  //replace 4 functions _drawcircle() by Dynamic Iist widges _drawPageIndicator(),
  List<Widget> _drawPageIndicator(){
    List<Widget> _widgets=List<Widget>();
      for(int i=0; i< pages.length;i++){
        _widgets.add(_drawCircle(Colors.amber ));
      }
     return _widgets;
  }

//replace 4 Containers by 4 functions _drawcircle()
      Widget _drawCircle(Color color){
          return Container(
            width: 15,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          );


}

}

