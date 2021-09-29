import 'package:encostay/utilities/enums.dart';

abstract class PaymentCard {
  String getName();

  String getCardNumber();

  String getExpiryDate();

  String getCVV();

  PaymentProcessor getPaymentProcessor();
}

class CreditCard implements PaymentCard {
  CreditCard({
    required this.name,
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
    required this.paymentProcessor,
  });

  final String name, cardNumber, expiryDate, cvv;
  final PaymentProcessor paymentProcessor;

  @override
  String getCVV() {
    return this.cvv;
  }

  @override
  String getCardNumber() {
    return this.cardNumber;
  }

  @override
  String getExpiryDate() {
    return this.expiryDate;
  }

  @override
  String getName() {
    return this.name;
  }

  @override
  PaymentProcessor getPaymentProcessor() {
    return this.paymentProcessor;
  }
}

class DebitCard implements PaymentCard {
  DebitCard({
    required this.name,
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
    required this.paymentProcessor,
  });

  final String name, cardNumber, expiryDate, cvv;
  final PaymentProcessor paymentProcessor;

  @override
  String getCVV() {
    return this.cvv;
  }

  @override
  String getCardNumber() {
    return this.cardNumber;
  }

  @override
  String getExpiryDate() {
    return this.expiryDate;
  }

  @override
  String getName() {
    return this.name;
  }

  @override
  PaymentProcessor getPaymentProcessor() {
    return this.paymentProcessor;
  }
}
