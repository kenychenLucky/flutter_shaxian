import 'dart:io';

import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart' as JSON;
import 'cook.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(ct) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light,accentColor: Colors.red,iconTheme: IconThemeData(color: Colors.red)),
      title: "福建沙县小吃",
      home: Home());
  }
}

class Home extends StatefulWidget {
  HState createState() => HState();
}

class HState extends State<Home> {
  List fd;
  Map fi;

  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    //http.Response r = await http.get('https://filipino-cuisine-app.firebaseio.com/data.json');
    //var r=await rootBundle.loadString('assets/'+'data.json');
    //print('r==='+r.toString());
    var r='{"0":{"cn":"120 Gr     85 Kcal     13 Min","ct":"3 minutes","dc":"Calamares is the Filipino version of the Mediterranean breaded fried squid dish, Calamari. ","fn":"Calamares","fv":false,"ig":[{"c":"1/2 lb","n":"Squid","p":"squid.png"},{"c":"3/4 cup","n":"Flour","p":"flour.png"},{"c":"1 pc","n":"Egg","p":"egg.png"},{"c":"1 tsp","n":"Salt","p":"salt.png"},{"c":"1/2 tsp","n":"Black Pepper","p":"black_pepper.png"},{"c":"2 cups","n":"Cooking Oil","p":"oil.png"}],"in":["Combine squid, salt, and ground black pepper then mix well. Let stand for 10 minutes","Heat a cooking pot the pour-in cooking oil","Dredge the squid in flour then dip in beaten egg and roll over","When the oil is hot enough, deep-fry the squid until the color of the coating turns brown","Remove the fried squid from the cooking pot and transfer in a plate lined with paper towels","Serve with sinamak or Asian dipping sauce"],"pf":"calamares.jpg","pt":"10 minutes","sv":"3","tt":"13 MIN"},"1":{"cn":"260 Gr     293 Kcal      1 Hour 42 Min","ct":"1 hour 30 minutes","dc":"Sisig is a popular Filipino dish. It is composed of minced pork, chopped onion, and mayonnaise.","fn":"Pork Sisig","fv":false,"ig":[{"c":"1 1/2 lb","n":"Pork Meat","p":"pork.png"},{"c":"1 pc","n":"Onion","p":"onion.png"},{"c":"3 tsp","n":"Chili","p":"chili.png"},{"c":"1/2 tsp","n":"Garlic","p":"garlic.png"},{"c":"1/4 tsp","n":"Black Pepper","p":"black_pepper.png"},{"c":"1 pc","n":"Lemon","p":"lemon.png"},{"c":"1/2 cup","n":"Butter","p":"butter.png"},{"c":"1/2 tsp","n":"Salt","p":"salt.png"},{"c":"1 pc","n":"Egg","p":"egg.png"}],"in":["Pour the water in a pan and bring to a boil Add salt and pepper","Put-in the pork meat then simmer for 40 minutes to 1 hour (or until tender)","Grill the boiled pork meat until done","Chop the pork meat into fine pieces","In a wide pan, melt the butter. Add the onions. Cook until onions are soft.","Put-in the ginger and cook for 2 minutes","Add the pork meat. Cook for 10 to 12 minutes","Put-in the soy sauce, garlic powder, and chili. Mix well","Add salt and pepper to taste","Put-in the mayonnaise and mix with the other ingredients","Transfer to a serving plate. Top with chopped green onions and raw egg","Add the lemon before eating"],"pf":"pork_sisig.jpg","pt":"12 minutes","sv":"6","tt":"1 hour 42 minutes"},"2":{"cn":"120 Gr     168 Kcal     1 Hour 10 Min","ct":"3 minutes","dc":"Pochero or Puchero is a well-loved Filipino stew. Made with meat, tomatoes, and saba bananas. ","fn":"Pochero","fv":false,"ig":[{"c":"1 large","n":"Banana","p":"banana.png"},{"c":"2 pcs","n":"Tomato","p":"tomato.png"},{"c":"1 lb","n":"Pork Meat","p":"pork.png"},{"c":"1 pc","n":"Onion","p":"onion.png"},{"c":"1 tsp","n":"Garlic","p":"garlic.png"},{"c":"1 tbsp","n":"Peppercorn","p":"black_pepper.png"},{"c":"1 medium","n":"Potato","p":"potato.png"},{"c":"1 small","n":"Cabbage","p":"cabbage.png"},{"c":"1 bunch","n":"Bok Choy","p":"bokchoy.png"},{"c":"1/4 lb","n":"Green Beans","p":"green_beans.png"},{"c":"2 tbsp","n":"Cooking Oil","p":"oil.png"}],"in":["Heat cooking oil in a cooking pot","Sauté garlic, onions, and tomatoes","Add pork and cook until the color turns light brown","Put-in fish sauce, whole pepper corn, and tomato sauce. Stir.","Add water and let boil. Simmer until pork is tender (about 30 to 40 minutes)","Put-in potato, plantain, and chick peas. Cook for 5 to 7 minutes.","Add cabbage and long green beans. Cook for 5 minutes","Stir-in the bok choy. Cover the pot and turn off the heat","Let the residual heat cook the bok choy (about 5 minutes)","Transfer to a serving plate and serve"],"pf":"pochero.jpg","pt":"10 minutes","sv":"3","tt":"13 MIN"},"3":{"cn":"140 Gr     250 Kcal     1 Hour 30 Min","ct":"3 minutes","dc":"A type of Filipino Beef Stew. This dish is cooked in a tomato-based sauce with vegetables such as potato, carrot, and bell pepper.","fn":"Beef Caldereta","fv":false,"ig":[{"c":"1/2 lb","n":"Beef","p":"beef.png"},{"c":"2 medium","n":"Carrot","p":"carrot.png"},{"c":"1 large","n":"Potato","p":"potato.png"},{"c":"1 small","n":"Green Bell Pepper","p":"green_bell.png"},{"c":"1 small","n":"Red Bell Pepper","p":"red_bell.png"},{"c":"2 Cloves","n":"Garlic","p":"garlic.png"},{"c":"1 medium","n":"Yellow Onion","p":"yellow_onion.png"},{"c":"1 tsp","n":"Salt","p":"salt.png"},{"c":"6 tbsp","n":"Cooking oil","p":"oil.png"},{"c":"1 tsp","n":"Peppercorn","p":"black_pepper.png"},{"c":"1 tsp","n":"Red Pepper","p":"chili.png"}],"in":["Heat a pan or wok and then pour 3 tablespoons cooking oil. Stir-fry the bell peppers for 3 minutes. Remove the bell peppers and put in a plate. Set aside","Using the oil in the pan (add more if necessary), pan fry the carrots and potato for 3 to 5 minutes. Put these in a plate and then set aside","Heat the remaining 3 tablespoons of oil in a clean pot","Sauté the garlic and onion","Add the beef. Cook until it turns light brown","Pour –in tomato sauce and water. Let boil","Continue to cook in low heat for 60 minutes or until the beef gets tender. Add more water if needed","Stir-in the liver spread and then add some salt and pepper","Put the pan-fried potato and carrots in the pot. Stir. Add the bell peppers","Cover the pot. Continue to cook for 5 minutes","Add the red pepper flakes. Stir and cook for 3 minutes more","Transfer to a serving plate. Serve"],"pf":"beef_caldereta.jpg","pt":"10 minutes","sv":"3","tt":"13 MIN"},"4":{"cn":"90 Gr     130 Kcal     1 Hour 15 Min","ct":"3 minutes","dc":"Pork Embutido is a Filipino-style meatloaf made with a festive mixture of ground pork, carrots, and raisins wrapped around slices of eggs and sausage.","fn":"Embutido","fv":false,"ig":[{"c":"2 lbs","n":"Ground pork","p":"ground_pork.png"},{"c":"12 pcs","n":"Sausage","p":"sausage.png"},{"c":"3 pcs","n":"Egg","p":"egg.png"},{"c":"2 cups","n":"Cheese","p":"cheese.png"},{"c":"1 cup","n":"Red Bell Pepper","p":"red_bell.png"},{"c":"1 cup","n":"Green Bell Pepper","p":"green_bell.png"},{"c":"1/2 cup","n":"Raisins","p":"raisins.png"},{"c":"1/2 cup","n":"Carrot","p":"carrot.png"},{"c":"1/2 cup","n":"Onion","p":"onion.png"},{"c":"2 tbsp","n":"Salt","p":"salt.png"},{"c":"1 tbsp","n":"Peppercorn","p":"black_pepper.png"}],"in":["Place the ground pork in a large container","Add the bread crumbs then break the raw eggs and add it in. Mix well","Put-in the carrots, bell pepper (red and green), onion, pickle relish, and cheddar cheese. Mix thoroughly","Add the raisins, tomato sauce, salt, and pepper then mix well.","Put in the sliced vienna sausage and sliced boiled eggs alternately on the middle of the flat meat mixture.","Roll the foil to form a cylinder — locking the sausage and egg in the middle if the meat mixture. Once done, lock the edges of the foil.","Place in a steamer and let cook for 1 hour.","Place inside the refrigerator until temperature turns cold","Slice and serve"],"pf":"embutido.jpg","pt":"10 minutes","sv":"3","tt":"13 MIN"},"-M6-NHS2k032b2T5Dx-u":{"amount":"150.00","cardPan":"4111XXXXXXXX1111","currency":"BGN","date":"2019-09-27 13:00:00","operation":"payment","payneticsToken":"gCZ7v3HnoeX5LLlQuASETRb0gDKkANbAF21Xc5__3XM","reference":"65165","status":1,"successfulPayment":true,"transaction":"00000000007"},"-M6-PG01yTAMSepR-GDE":{"amount":"150.00","cardPan":"4111XXXXXXXX1111","currency":"BGN","date":"2019-09-27 13:00:00","operation":"payment","payneticsToken":"gCZ7v3HnoeX5LLlQuASETRb0gDKkANbAF21Xc5__3XM","reference":"65165","status":1,"successfulPayment":true,"transaction":"00000000007"},"-M6-Pf-WdBL9fzBlCmLn":{"amount":"150.00","cardPan":"4111XXXXXXXX1111","currency":"BGN","date":"2019-09-27 13:00:00","operation":"payment","payneticsToken":"gCZ7v3HnoeX5LLlQuASETRb0gDKkANbAF21Xc5__3XM","reference":"65165","status":1,"successfulPayment":true,"transaction":"00000000007"},"-M6-UCy5f43Nc8JUwDWl":{"amount":"150.00","cardPan":"4111XXXXXXXX1111","currency":"BGN","date":"2019-09-27 13:00:00","operation":"payment","payneticsToken":"gCZ7v3HnoeX5LLlQuASETRb0gDKkANbAF21Xc5__3XM","reference":"65165","status":1,"successfulPayment":true,"transaction":"00000000007"},"-M64U95I5C3vXg_kR0ID":{"login":{"auth":{"systemCode":"ZLH4WEtjbwA8vPOAJ5XTwdXcGpr7rxBC00/Q2JX7Dh4USg0mYApAQFd+a6CLcf3C9oStO/gUxlM=","systemId":1050},"password":"Tbi*10011","username":"8033 Таня"}}}';

    Map<String, dynamic> fda = json.decode(r.toString());



    setState(() => fi = fda["0"]);
  }

  Widget build(ct) {
    if (fd == null) return Container(color: Colors.white,child: Center(child: CircularProgressIndicator(),));
    var t = Theme.of(ct).textTheme;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 5,
            child: Swiper(
                onIndexChanged: (n) => setState(() => fi = fd[n]),
                itemCount: fd.length,
                itemBuilder: (cx, i) {
                  return Container(margin: EdgeInsets.only(top: 40, bottom: 24),
                      child: ClipRRect( borderRadius: BorderRadius.circular(20),
                        child: Hero(tag: fd[i]['fn'], child: Image.asset('assets/' + fd[i]['pf'],fit: BoxFit.cover)),));
                  },
                viewportFraction: .85,scale: .9)
          ),
          Text(fi['fn'],style:t.bodyText2.copyWith(fontFamily: 'ark', color: Colors.black)),
          Container(
            child: Text(fi['cn'],style: t.subtitle1.apply(color: Colors.red, fontFamily: 'opb')),
            margin: EdgeInsets.only(top: 10, bottom: 30),
          ),
          Container(
              child: Text(fi['dc'],textAlign: TextAlign.center,style: t.subtitle1.copyWith(fontFamily: 'opr')),
              margin: EdgeInsets.only(left: 10, right: 10)),
          Expanded(flex: 2,
            child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: fi['ig'].length,
              itemBuilder: (cx, i) {
                return Row(
                  children: <Widget>[
                    Container(margin: EdgeInsets.only(left: 10),height: 60,
                      child: Image.asset('assets/' + fi['ig'][i]['p'],fit: BoxFit.contain)),
                    Container(margin: EdgeInsets.only(left: 5, right: 10),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(fi['ig'][i]['n'],style: t.subtitle1.copyWith(fontFamily: 'opb')),
                          Text(fi['ig'][i]['c'],style: t.caption.copyWith(fontFamily: 'opr'))]))]);
              }))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.restaurant_menu),
        onPressed: () => Navigator.push(ct, MaterialPageRoute(builder: (cx) => Cook(fi['in'], fi['pf'], fi['fn']))),
      ),
      bottomNavigationBar: BottomAppBar(shape: CircularNotchedRectangle(),notchMargin: 4.0,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(fi['fv'] ? Icons.favorite : Icons.favorite_border),onPressed: () => setState(() => fi['fv'] = !fi['fv'])),
            IconButton(icon: Icon(Icons.share),onPressed: () {})
          ])),
    );
  }
}