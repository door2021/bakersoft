import 'package:sibol/data/models/product_model.dart';
import 'package:sibol/data/sources/product_source.dart';

class ProductLocalSource implements ProductsSource {
  @override
  Future<List<ProductModel>> getProducts() async {

    List<ProductModel> products = productList;

    return products;
  }
}

final productList = [
  const ProductModel(
    id: 1,
    title: 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
    category: 'Men\'s clothing',
    description: 'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday',
    image:
    'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
    price: 109.5,
  ),
  const ProductModel(
    id: 2,
    title: 'Mens Casual Premium Slim Fit T-Shirts',
    category: 'Men\'s clothing',
    description: 'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.',
    image:
    'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
    price: 85.9,
  ),
  const ProductModel(
    id: 3,
    title: 'John Hardy Women\'s Legends Naga Gold & Silver Dragon Station Chain Bracelet',
    category: 'Jewelery',
    description: 'From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean\'s pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.',
    image:
    'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
    price: 695,
  ),
  const ProductModel(
    id: 4,
    title: 'BIYLACLESEN Women\'s 3-in-1 Snowboard Jacket Winter Coats',
    category: 'Women\'s clothing',
    description: 'Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates.',
    image:
    'https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg',
    price: 70,
  ),
  const ProductModel(
    id: 5,
    title: 'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED',
    category: 'Electronics',
    description: '49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag',
    image:
    'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg',
    price: 54,
  ),
  const ProductModel(
    id: 6,
    title: 'Opna Women\'s Short Sleeve Moisture',
    category: 'Women\'s clothing',
    description: '100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort',
    image: 'https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg',
    price: 140,
  ),
  const ProductModel(
    id: 7,
    title: 'Mens Casual Slim Fit',
    category: 'Men\'s clothing',
    description: 'The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.',
    image:
    'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg',
    price: 350,
  ),
  const ProductModel(
    id: 8,
    title: 'Solid Gold Petite Micropave',
    category: 'Jewelery',
    description: 'Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.',
    image:
    'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg',
    price: 299,
  ),
  const ProductModel(
    id: 9,
    title: 'Lock and Love Women\'s Removable Hooded Faux Leather Moto Biker Jacket',
    category: 'Women\'s clothing',
    description: '100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON',
    image:
    'https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg',
    price: 54,
  ),
  const ProductModel(
    id: 10,
    title: 'Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin',
    category: 'Electronics',
    description: '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
    image:
    'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg',
    price: 755,
  ),
];