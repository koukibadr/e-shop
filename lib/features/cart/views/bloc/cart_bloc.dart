import 'package:dummy_product/features/cart/domain/entities/cart_item_entity.dart';
import 'package:dummy_product/features/cart/views/bloc/cart_events.dart';
import 'package:dummy_product/features/cart/views/bloc/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Bloc<CartBlocEvents, CartScreenState> {
  CartBloc() : super(CartScreenState()) {
    on<UpdateProductQuantityEvent>(onUpdateQuantityTriggered);
    on<RemoveProductFromCartEvent>(onRemoveTriggered);
    on<AddProductToCart>(onAddProductTriggered);
  }

  void onUpdateQuantityTriggered(UpdateProductQuantityEvent event, emitter) {
    var itemIndex = state.cartItems
        .indexWhere((item) => item.product.id == event.product.id);
    emitter(
      state.copyWith(
        cartItems: [
          ...state.cartItems.take(itemIndex),
          CartItemEntity(
            product: event.product,
            quantity: event.quantity,
          ),
          ...state.cartItems
              .where((item) => state.cartItems.indexOf(item) > itemIndex),
        ],
      ),
    );
  }

  void onRemoveTriggered(RemoveProductFromCartEvent event, emitter) {
    List<CartItemEntity> cartItems = state.cartItems
        .where((item) => item.product.id != event.product.id)
        .toList();
    emitter(state.copyWith(cartItems: cartItems));
  }

  void onAddProductTriggered(AddProductToCart event, emitter) {
    emitter(
      state.copyWith(
        cartItems: [
          ...state.cartItems,
          CartItemEntity(
            product: event.product,
          ),
        ],
      ),
    );
  }
}
