class Endpoint {
  Endpoint._();
  static const String login = '/v1/auth/login';
  static const String register = '/v1/auth/register';
  static const String requestOtp = '/v1/auth/request-otp';
  static const String validateOtp = '/v1/auth/validate-otp';
  static const String forgotPassword = '/v1/auth/forgot-password';
  static const String product = '/v1/products/';
  static const String chart = '/v1/carts';
  static const String banner = '/v1/banners';
  static const String transaction = '/v1/transactions';
}
