import 'package:flutter/material.dart';

void main()=>runApp(myapp());
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: listview(),
    );
  }
}
class listview extends StatelessWidget {
   listview({Key? key}) : super(key: key);
var MyItems=[
  {"img":"https://www.shutterstock.com/image-photo/gathering-ideas-260nw-460717618.jpg","title":"product 1","price":"price: 100 tk"},
  {"img":"https://www.shutterstock.com/image-photo/gathering-ideas-260nw-460717618.jpg","title":"product 2","price":"price: 200 tk"},
  {"img":"https://www.shutterstock.com/image-photo/gathering-ideas-260nw-460717618.jpg","title":"product 3","price":"price: 300 tk"},
  {"img":"https://www.shutterstock.com/image-photo/gathering-ideas-260nw-460717618.jpg","title":"product 4","price":"price: 400 tk"},
  {"img":"https://www.shutterstock.com/image-photo/gathering-ideas-260nw-460717618.jpg","title":"product 5","price":"price: 500 tk"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list view"),),
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>detailpage(MyItems[index]["title"]!,MyItems[index]["price"]!,)));
            },
            child: Column(
              children: [
                Container(

                  margin: EdgeInsets.all(20),
                  width:double.infinity,
                  height: 200,
                  child: Image.network(MyItems[index]["img"]!,fit: BoxFit.fill,),

                ),
                Container(
                margin: EdgeInsets.all(20),
                  child: Text(MyItems[index]["title"]!),


          )
              ],
            ),


          );
        },
      ),
    );

  }
}

class detailpage extends StatelessWidget {
  var msg1,msg2;
  detailpage(
      this.msg1,
      this.msg2,
      {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail page')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(msg1)),
           Center(child: Text(msg2)),
          ],
        ),
      ),
    );
  }
}
