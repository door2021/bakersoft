import 'package:flutter/material.dart';
import 'package:sibol/app/bloc/cart/cart_cubit.dart';
import 'package:sibol/domain/entities/product_entity.dart';
import 'package:sibol/injection/config.dart' as x;
import 'package:fluttertoast/fluttertoast.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key, required this.p}) : super(key: key);

  final ProductEntity p;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:Column(
              children: [
                Container(
                  height: 250,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Image.network(
                    widget.p.image,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.bookmark_border,size: 20,),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Text(
                                  widget.p.title,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                  TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.category_outlined,size: 20,),
                              SizedBox(width: 10,),
                              Text(
                                widget.p.category,
                                style:
                                TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey.shade100
                            ),
                            child: Center(
                              child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(text: '\$ ', style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w500, fontSize: 18),),
                                      TextSpan(text: '${widget.p.price}', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 25),),
                                    ]
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.insert_page_break_outlined,size: 20,),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Text(
                                '${widget.p.description}',
                                maxLines: null,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
      bottomNavigationBar: Container(
        height: 55,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
                child: MaterialButton(
                  child: Text('Buy Now', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                  color: Colors.black,
                  height: 42,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  onPressed: (){},
                )
            ),
            SizedBox(width: 10,),
            Expanded(
                child: MaterialButton(
                  child: Text('Add to Cart', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500)),
                  color: Colors.grey.shade200,
                  height: 42,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                  onPressed: (){
                    var cart = x.x<CartCubit>();
                    cart.addToCart(widget.p);

                    Fluttertoast.showToast(
                        msg: "New item saved in cart",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 14.0,
                    );
                  },
                )
            ),
          ],
        ),
      ),
    );
  }
}
