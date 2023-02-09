// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import 'package:dart_week_app/app/dto/order_product_dto.dart';
import 'package:dart_week_app/app/models/payment_type_model.dart';

part 'order_state.g.dart';

@match
enum OrderStatus {
  initial,
  loading,
  loaded,
  error,
  updateOrder,
  confirmRemoveProduct,
  emptyBag,
  success,
}

class OrderState extends Equatable {
  final OrderStatus status;
  final List<OrderProductDto> orderProducts;
  final List<PaymentTypeModel> paymentTypes;
  final String? errorMessage;

  const OrderState({
    required this.errorMessage,
    required this.paymentTypes,
    required this.status,
    required this.orderProducts,
  });

  const OrderState.initial()
      : status = OrderStatus.initial,
        errorMessage = null,
        orderProducts = const [],
        paymentTypes = const [];

  double get totalOrder => orderProducts.fold(
      0.0, (previousValue, element) => previousValue + element.totalPrice);

  @override
  List<Object?> get props =>
      [errorMessage, status, orderProducts, paymentTypes];

  OrderState copyWith({
    OrderStatus? status,
    List<OrderProductDto>? orderProducts,
    List<PaymentTypeModel>? paymentTypes,
    String? errorMessage,
  }) {
    return OrderState(
      status: status ?? this.status,
      orderProducts: orderProducts ?? this.orderProducts,
      paymentTypes: paymentTypes ?? this.paymentTypes,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class OrderConfirmDeleteProductsState extends OrderState {
  final OrderProductDto orderProduct;
  final int index;

  const OrderConfirmDeleteProductsState({
    required super.status,
    required super.orderProducts,
    required super.paymentTypes,
    required this.orderProduct,
    required this.index,
    super.errorMessage,
  });
}
