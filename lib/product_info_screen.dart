import 'package:flutter/material.dart';

class ProductInfoScreen extends StatelessWidget {
  const ProductInfoScreen({
    super.key,
  });
  static const Color cho = Color.fromRGBO(170, 78, 65, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        //back button
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.deepOrange[900]),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product's Img
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image.network(
                "https://imgs.search.brave.com/P3hXOli50VKZj7rVrP8dmMQS24AclyRYu1JCcBmUcis/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzQ0LzYxLzE5/LzM2MF9GXzI0NDYx/MTkyN195cmgwWklZ/d09HVER1clZuQ01B/dDdDcThEUjRzQmtC/MC5qcGc",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // title
            Text(
              "Burger Mix Combo",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: cho,
              ),
            ),
            // Space
            SizedBox(
              height: 5,
            ),

            // rate & amount
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: cho,
                        size: 30,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "4(5)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15,color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange[400],
                  ),
                  child: Row(
                    children: [
                      amoutButton(Colors.orange[100], Icons.remove, cho),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      amoutButton(cho, Icons.add, Colors.orange[100]),
                    ],
                  ),
                ),
              ],
            ),
            // Space
            SizedBox(
              height: 5,
            ),
            // Description
            Text(
              "Description",
              style: TextStyle(
                color: cho,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            
            Text(
              "3 Burger + fries ",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
 // Space
            SizedBox(
              height: 20,
            ),
            // Price
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
              "EGP 160",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),


ElevatedButton(onPressed: (){},
style: ElevatedButton.styleFrom(
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
backgroundColor: Colors.deepOrange[400],
),
 child: Padding(
   padding: const EdgeInsets.symmetric(vertical: 8.0),
   child: Text("ADD TO CART", style: TextStyle(color: Colors.white,
   fontSize: 18,
   fontWeight: FontWeight.w500),),
 )),

],
),
            // Space
            SizedBox(
              height: 10,
            ),
            Divider(height: 10,color: Colors.deepOrange[400],
            ),
            // Space
            SizedBox(
              height: 10,
            ),
            // Reviews
Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(color: Colors.orange[100],),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
children:[
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
       // Description
            Text(
              "Review",
              style: TextStyle(
                color: cho,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
           
            Text(
              "Send Your Feedback Now",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
 // Space
            SizedBox(
              height: 15,
            ),

],),
IconButton(onPressed: (){},icon:Icon(Icons.keyboard_arrow_down, color: Colors.orange,),iconSize: 35),
],
),),
            // Space
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector amoutButton(Color? bcolor, IconData icon, Color? iconColor) =>
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
            backgroundColor: bcolor,
            child: Icon(
              icon,
              color: iconColor,
            )),
      );
}
