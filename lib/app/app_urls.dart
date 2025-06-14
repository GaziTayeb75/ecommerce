class AppUrls {
  static const String _baseUrl = 'https://ecom-rs8e.onrender.com/api';

  static const String signUpUrl = '$_baseUrl/auth/signup';
  static const String verifyOtpUrl = '$_baseUrl/auth/verify-otp';
  static const String signInUrl = '$_baseUrl/auth/login';
  static const String slidersUrl = '$_baseUrl/slides';
  static const String categoryListUrl = '$_baseUrl/categories';
  static const String productListUrl = '$_baseUrl/products';

  static String productDetailsUrl(String productId) =>
      '$_baseUrl/products/id/$productId';

  static const String addToCartUrl = '$_baseUrl/cart';

}
