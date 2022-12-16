import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sibol/app/bloc/product/product_bloc.dart';
import 'package:sibol/app/screens/ProductDetailScreen.dart';
import 'package:sibol/injection/config.dart' as x;

class ProductOverview extends StatefulWidget {
  const ProductOverview({Key? key}) : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  String productSearch = '';
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>(
      create: (context) => x.x<ProductBloc>()..add(ProductEventStart()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Shopping App'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.grey.shade50,
              child: TextField(
                onChanged: (val){
                  setState((){
                    productSearch = val;
                  });
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search here...',
                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  suffixIcon: Icon(Icons.search, size: 20, color: Colors.grey,)
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
                  return state.when(
                      initial: () => CircularProgressIndicator(),
                      loading: () => CircularProgressIndicator(),
                      loaded: (p) {
                        return GridView.builder(
                          itemCount: p.length,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5, childAspectRatio: 0.8),
                          itemBuilder: (context, index) {
                            return productSearch == '' ?
                            GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(p: p[index],))),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Expanded(child: Image.network(p[index].image, fit: BoxFit.cover, width: double.infinity,)),
                                    Container(
                                      alignment: Alignment.bottomCenter,
                                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(p[index].title, maxLines: 2, overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
                                          SizedBox(height: 3,),
                                          Text('\$ ${p[index].price}',  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ) :
                            p[index].title.contains(productSearch) ? GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(p: p[index],))),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Expanded(child: Image.network(p[index].image, fit: BoxFit.cover, width: double.infinity,)),
                                    Container(
                                      alignment: Alignment.bottomCenter,
                                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(p[index].title, maxLines: 2, overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
                                          SizedBox(height: 3,),
                                          Text('\$ ${p[index].price}',  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ) : Container();
                          },
                        );
                      });
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
