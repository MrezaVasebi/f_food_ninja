import 'package:f_food_delivery/scr/presentation/constant/images.dart';

final List nearest = [
  {'img': PngImages.resOne, 'name': 'Vegan Resto', 'time': '12 Min'},
  {'img': PngImages.resTwo, 'name': 'Healthy Food', 'time': '12 Min'},
  {'img': PngImages.resThree, 'name': 'Good Food', 'time': '12 Min'},
  {'img': PngImages.resFour, 'name': 'Smart Resto', 'time': '12 Min'},
  {'img': PngImages.resFive, 'name': 'Vegan Resto', 'time': '12 Min'},
  {'img': PngImages.resSix, 'name': 'Healthy Food', 'time': '12 Min'},
];

final List popular = [
  {
    'img': PngImages.menuOne,
    'name': 'Herbal Pancake',
    'desc': 'Warung Herbal',
    'price': "\$15"
  },
  {
    'img': PngImages.menuTwo,
    'name': 'Fruit Salad',
    'desc': 'Wijie Resto',
    'price': "\$15"
  },
  {
    'img': PngImages.menuThree,
    'name': 'Green Noddle',
    'desc': 'Noodle Home',
    'price': "\$15"
  },
];

final Map<String, List<String>> filterItem = {
  "Type": ['Restaurant', 'Menu'],
  "Location": ['1 Km', '>10 Km', '<10 Km'],
  "Food": [
    'Cake',
    'Soup',
    'Main Course',
    'Appetizer',
    'Dessert',
  ],
};

final List chatUser = [
  {
    'name': 'Anamwp',
    'msg': 'Your Order Just Arrived!',
    'time': '20:00',
    'img': PngImages.userOne
  },
  {
    'name': 'Guy Hawkins',
    'msg': 'Your Order Just Arrived!',
    'time': '20:00',
    'img': PngImages.userTwo
  },
  {
    'name': 'Leslie Alexander',
    'msg': 'Your Order Just Arrived!',
    'time': '20:00',
    'img': PngImages.userThree
  },
];
