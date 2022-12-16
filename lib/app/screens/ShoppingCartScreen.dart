import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sibol/app/bloc/cart/cart_cubit.dart';
import 'package:sibol/injection/config.dart' as x;

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartCubit>(
        create: (context) =>
            x.x<CartCubit>()..emit(CartLoaded(x.x<CartCubit>().cartItems)),
        child: Scaffold(
          appBar: AppBar(
            title: Text('My cart'),
          ),
          body: isLoading == false
              ? BlocBuilder<CartCubit, CartState>(
                  builder: (context, state) {
                    return state.when(
                        initial: () => Center(
                              child: CircularProgressIndicator(),
                            ),
                        loading: () => Center(
                              child: CircularProgressIndicator(),
                            ),
                        loaded: (items) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'All Items (${items.length})',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        var cart = x.x<
                                            CartCubit>();
                                        cart.clearProduct();

                                        Fluttertoast
                                            .showToast(
                                          msg:
                                          "Cart items cleared !",
                                          toastLength:
                                          Toast
                                              .LENGTH_SHORT,
                                          gravity:
                                          ToastGravity
                                              .CENTER,
                                          timeInSecForIosWeb:
                                          1,
                                          backgroundColor:
                                          Colors
                                              .black,
                                          textColor:
                                          Colors
                                              .white,
                                          fontSize:
                                          14.0,
                                        );

                                        setState(() {
                                          isLoading =
                                          true;
                                        });

                                        Future.delayed(Duration(
                                            seconds:
                                            2))
                                            .then(
                                                (value) {
                                              setState(
                                                      () {
                                                    isLoading =
                                                    false;
                                                  });
                                            });
                                      }
                                    ,child: Icon(Icons.close))
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Expanded(
                                  child: items.length > 0
                                      ? ListView.builder(
                                          itemCount: items.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8, vertical: 12),
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade50,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    child: Container(
                                                        height: 120,
                                                        width: 180,
                                                        child: Image.network(
                                                          items[index].image,
                                                          fit: BoxFit.cover,
                                                        )),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              items[index]
                                                                  .title,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                              '\$ ${items[index].price}',
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              flex: 2,
                                                              child: Container(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            8),
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade200),
                                                                child: Center(
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_forward,
                                                                    color: Colors
                                                                        .black,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  var cart = x.x<
                                                                      CartCubit>();
                                                                  cart.removeFromCart(
                                                                      items[
                                                                          index]);

                                                                  Fluttertoast
                                                                      .showToast(
                                                                    msg:
                                                                        "Item removed from cart",
                                                                    toastLength:
                                                                        Toast
                                                                            .LENGTH_SHORT,
                                                                    gravity:
                                                                        ToastGravity
                                                                            .CENTER,
                                                                    timeInSecForIosWeb:
                                                                        1,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .black,
                                                                    textColor:
                                                                        Colors
                                                                            .white,
                                                                    fontSize:
                                                                        14.0,
                                                                  );

                                                                  setState(() {
                                                                    isLoading =
                                                                        true;
                                                                  });

                                                                  Future.delayed(Duration(
                                                                          seconds:
                                                                              2))
                                                                      .then(
                                                                          (value) {
                                                                    setState(
                                                                        () {
                                                                      isLoading =
                                                                          false;
                                                                    });
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          vertical:
                                                                              8),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color:
                                                                              Colors.black),
                                                                  child: Center(
                                                                    child: Icon(
                                                                      Icons
                                                                          .close,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 20,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          })
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Icon(
                                              Icons.shopping_bag_outlined,
                                              size: 60,
                                              color: Colors.grey.shade400,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Your cart is empty !',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                )
              : SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Text(
                      'Loading...',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(
                          color: Colors.black,
                        ))
                  ]),
                ),
        ));
  }
}
