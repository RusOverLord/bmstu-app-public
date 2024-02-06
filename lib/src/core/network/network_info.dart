// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
//
// final networkInfoProvider = Provider<NetworkInfo>((ref) {
//   final connectionChecker = InternetConnectionChecker();
//   return NetworkInfoImpl(connectionChecker);
// });
//
// abstract class NetworkInfo {
//   Future<bool> get isConnected;
// }
//
// class NetworkInfoImpl implements NetworkInfo {
//   final InternetConnectionChecker connectionChecker;
//
//   NetworkInfoImpl(this.connectionChecker);
//
//   @override
//   Future<bool> get isConnected => connectionChecker.hasConnection;
// }
