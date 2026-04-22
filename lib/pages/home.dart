import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        buidContainer(
            profilephoto:
            'https://static1.purebreak.com.br/articles/9/94/48/9/@/367444-any-gabrielly-e-uma-das-estrelas-do-now-580x0-2.jpg',
            username: 'Any',
            date_time: '21 de Abr, 15:42',
            photos:
            'https://get.pxhere.com/photo/food-dish-shashlik-cuisine-barbecue-souvlaki-Shish-taouk-pincho-grilling-brochette-skewer-yakitori-ingredient-kebab-chicken-meat-chicken-tikka-finger-food-meat-barbecue-chicken-roasting-mixed-grill-cooking-produce-Anticuchos-souvla-recipe-mediterranean-food-greek-food-churrasco-food-satay-street-food-thai-food-kai-yang-grillades-brazilian-food-arrosticini-1632339.jpg',
            caption: 'churrasquinho com os migos'),
        buidContainer(
            profilephoto:
            'https://static1.purebreak.com.br/articles/9/94/48/9/@/367444-any-gabrielly-e-uma-das-estrelas-do-now-580x0-2.jpg',
            username: 'Any',
            date_time: '21 de Abr, 15:42',
            photos:
            'https://get.pxhere.com/photo/food-dish-shashlik-cuisine-barbecue-souvlaki-Shish-taouk-pincho-grilling-brochette-skewer-yakitori-ingredient-kebab-chicken-meat-chicken-tikka-finger-food-meat-barbecue-chicken-roasting-mixed-grill-cooking-produce-Anticuchos-souvla-recipe-mediterranean-food-greek-food-churrasco-food-satay-street-food-thai-food-kai-yang-grillades-brazilian-food-arrosticini-1632339.jpg',
            caption: 'churrasquinho com os migos'),
        buidContainer(
            profilephoto:
            'https://static1.purebreak.com.br/articles/9/94/48/9/@/367444-any-gabrielly-e-uma-das-estrelas-do-now-580x0-2.jpg',
            username: 'Any',
            date_time: '21 de Abr, 15:42',
            photos:
            'https://get.pxhere.com/photo/food-dish-shashlik-cuisine-barbecue-souvlaki-Shish-taouk-pincho-grilling-brochette-skewer-yakitori-ingredient-kebab-chicken-meat-chicken-tikka-finger-food-meat-barbecue-chicken-roasting-mixed-grill-cooking-produce-Anticuchos-souvla-recipe-mediterranean-food-greek-food-churrasco-food-satay-street-food-thai-food-kai-yang-grillades-brazilian-food-arrosticini-1632339.jpg',
            caption: 'churrasquinho com os migos'),
        buidContainer(
            profilephoto:
            'https://static1.purebreak.com.br/articles/9/94/48/9/@/367444-any-gabrielly-e-uma-das-estrelas-do-now-580x0-2.jpg',
            username: 'Any',
            date_time: '21 de Abr, 15:42',
            photos:
            'https://get.pxhere.com/photo/food-dish-shashlik-cuisine-barbecue-souvlaki-Shish-taouk-pincho-grilling-brochette-skewer-yakitori-ingredient-kebab-chicken-meat-chicken-tikka-finger-food-meat-barbecue-chicken-roasting-mixed-grill-cooking-produce-Anticuchos-souvla-recipe-mediterranean-food-greek-food-churrasco-food-satay-street-food-thai-food-kai-yang-grillades-brazilian-food-arrosticini-1632339.jpg',
            caption: 'churrasquinho com os migos')
      ]),
    );
  }

  buidContainer({
    required String profilephoto,
    required String username,
    required String date_time,
    required String photos,
    required String caption,
  }) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              buidcircleAvatar(profilephoto),
              SizedBox(width: 12),
              Text(username,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0000CB))),
              Spacer(flex: 2),
              Text(date_time, style: const TextStyle(fontSize: 12))
            ],
          ),
          SizedBox(height: 8),
          ClipRRect(
            child: Image.network(photos, height: 200, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(8),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 25, color: Color(0xFF0000CB)),
              SizedBox(width: 8),
              Icon(Icons.comment, size: 25, color: Color(0xFF0000CB)),
              SizedBox(width: 8),
              Icon(
                Icons.share,
                size: 25,
                color: Color(0xFF0000CB),
              )
            ],
          ),
          SizedBox(height: 8),
          Text(caption, style: const TextStyle(fontSize: 16)),
          Divider(
              color: Color(0xFF0000CB), thickness: 1, indent: 5, endIndent: 5)
        ],
      ),
    );
  }

  buidcircleAvatar(String profilephoto) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: Color(0xFF0000CB),
      child: CircleAvatar(
        radius: 21,
        backgroundImage: NetworkImage(profilephoto),
      ),
    );
  }
}
