import 'package:clean_architecture/src/presentation/bloc/network/network_bloc.dart';
import 'package:clean_architecture/src/presentation/bloc/network/network_event_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkHelper {
  static void observeNetwork() {
    Connectivity().onConnectivityChanged.listen(
      (event) {
        if (event.contains(ConnectivityResult.none)) {
          NetworkBloc().add(NetworkNotify());
        } else {
          NetworkBloc().add(NetworkNotify(isConnected: true));
        }
      },
    );
  }
}
