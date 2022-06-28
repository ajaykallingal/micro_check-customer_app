import 'package:micro_digital/src/data/shared_pref/object_factory.dart';

class Urls{
  Urls._();

   /// base url
  static const String baseUrlDev = "https://dev.microcheckhomecare.com";
  // static const String baseUrlProd = "https://dev.microcheckhomecare.com";

  ///master provider
  static const String getDashboardData = "/api/Dashboard";

  //package
  static const String singlePackageDetails = "/api/SinglePackage?itemID=489&userID=103";

  //Test
  static const String singleTestDetails = "/api/SingleTest?itemID=438&userID=103";

  ///cart api provider
  static const String addToCart = "/api/Cart/";



  ///booking provider

  static const String getBookingList = "/api/MyBookings?userId=131&pageNo=1";

  ///search provider

  static const String searchTest = "/api/TestSearch";
  static const String searchPackage = "/api/PackageSearch";


  ///Auth provider
  static const String getOtp = "/api/AuthUser?phoneNo=";
  static const String createAccount = "/api/AuthUser";
  static const String screeningRequest = "/api/Screening";



}