class ShopList {
  String? image;
  String? name;
  String? price;

  ShopList(this.image, this.name, this.price);
}

List<ShopList> sList = shopData
    .map((item) => ShopList(item['image'], item['name'], item['price']))
    .toList();

var shopData = [
  {
    "image":
        "https://i.pinimg.com/originals/25/a2/d0/25a2d004899ec82b4db94b3f8e4a3800.jpg",
    "name": "Cute Art",
    "price": "Rp.5.000,-"
  },
  {
    "image":
        "https://i.pinimg.com/originals/cf/85/e3/cf85e3af658837b6bbea3290d974e920.jpg",
    "name": "Beautiful Art",
    "price": "Rp.50.000,-"
  },
  {
    "image":
        "https://i.pinimg.com/originals/fb/65/ec/fb65ecdf500f32723c5e3b741ba00fd0.jpg",
    "name": "Wonderful Art",
    "price": "Rp.60.000,-"
  },
  {
      "image" : "https://i.pinimg.com/originals/d6/ec/81/d6ec81aa6d783cb56923ac74868702b3.jpg",
  "name"  : "Expensive Art",
  "price" : "Rp.100.000,-"
  },
  {
      "image" : "https://i.pinimg.com/originals/e4/e5/ba/e4e5ba51a5b1764314f2293859c6ecbd.jpg",
  "name"  : "Funny Art",
  "price" : "Rp.25.000,-"
  },
  {
      "image" : "https://i.pinimg.com/originals/04/bc/28/04bc2887be0b73e27c262fb102fba0a2.jpg",
  "name"  : "Smart Art",
  "price" : "Rp.90.000,-"
  },
  {
      "image" : "https://i.pinimg.com/originals/e9/d4/b6/e9d4b6081a2e1faee50b127ade39a1bb.jpg",
  "name"  : "Genius Art",
  "price" : "Rp.150.000,-"
  }
];
