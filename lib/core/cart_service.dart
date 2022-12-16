
import '../domain/entities/product_entity.dart';

class CartService{
  List<ProductEntity> cartItems = [];
  
  addToCart(ProductEntity item){
    cartItems.add(item);
  }

  removeFromCart(ProductEntity item){
    cartItems.remove(item);
  }

  emptyCart() {
    cartItems.clear();
  }
}