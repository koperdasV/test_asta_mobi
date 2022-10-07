class Product {
  int index;
  String name;
  String imageUrl;
  String price;
  String location;
  String cashback;

  Product({
    required this.index,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.location,
    required this.cashback,
  });
}

final product = [
  Product(
    index: 1,
    name: 'Американо',
    imageUrl:
        'https://kofella.net/images/stories/vseokofe/kofe-amerikano-chto-eto-takoye.jpg',
    price: '23',
    location: 'Бургер кінг',
    cashback: '10',
  ),
  Product(
    index: 2,
    name: 'Айс Лате',
    imageUrl:
        'https://i.obozrevatel.com/food/recipemain/2019/3/16/kofe-742.jpg?size=636x424',
    price: '50',
    location: 'Еклер',
    cashback: '12',
  ),
  Product(
    index: 3,
    name: 'Mi Band 5',
    imageUrl:
        'https://zhuk.ua/content/images/12/480x327l50nn0/fitnes-braslet-xiaomi-mi-smart-band-5-black-25946794840323.jpg',
    price: '1200',
    location: 'Фокстрот',
    cashback: '15',
  ),
  Product(
    index: 4,
    name: 'Джинси',
    imageUrl:
        'https://images.unian.net/photos/2022_05/thumb_files/400_0_1652185781-7001.jpg?r=352118',
    price: '500',
    location: 'Zara',
    cashback: '7',
  ),
  Product(
    index: 5,
    name: 'Молоко',
    imageUrl:
        'https://ichef.bbci.co.uk/news/640/cpsprodpb/1052B/production/_109895866_milkcow.jpg',
    price: '39',
    location: 'Корова Муня',
    cashback: '0',
  ),
  Product(
    index: 6,
    name: 'Бензин а95',
    imageUrl: 'https://autoua.net/media/uploads/raznoe/49867897461346.jpg',
    price: '55',
    location: 'ОККО',
    cashback: '7',
  ),
  Product(
    index: 7,
    name: 'Капучино',
    imageUrl:
        'https://files.ub.ua/goods/heading-photos/1/38799_206978_1594199784.jpg',
    price: '25 ',
    location: 'Тарантіно',
    cashback: '10',
  ),
  Product(
    index: 8,
    name: 'Бургер з куркою',
    imageUrl:
        'https://90burger.com.ua/thumb/2/ri2WG7crcayXA2TLxpVGWA/r800/d/434777_8688mmbz.jpg',
    price: '150 ',
    location: 'Бургер кінг',
    cashback: '10',
  ),
  Product(
    index: 9,
    name: 'Чізкейк',
    imageUrl:
        'https://www.recept.ua/files/uploads/rec_img/chizkeyk-nyu-york.jpg',
    price: '69 ',
    location: 'Вацак',
    cashback: '12',
  ),
  Product(
    index: 10,
    name: 'Хортиця',
    imageUrl:
        'http://buharikov.net/upload/information_system_21/2/5/3/item_253/informationsystem_items_catalog_image253.jpg',
    price: '125 ',
    location: 'Сільпо',
    cashback: '5',
  ),
];
