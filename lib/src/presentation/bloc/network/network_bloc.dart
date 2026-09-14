import 'package:clean_architecture/src/presentation/bloc/network/network_event.dart';
import 'package:clean_architecture/src/presentation/bloc/network/network_helper.dart';
import 'package:clean_architecture/src/presentation/bloc/network/network_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc._() : super(NetworkInitial()) {
    on<NetworkObserve>(_observe);
    on<NetworkNotify>(_notifyStatus);
  }

  static final NetworkBloc _instance = NetworkBloc._();

  factory NetworkBloc() => _instance;

  void _observe(NetworkObserve event, Emitter<NetworkState> emit) {
    NetworkHelper.observeNetwork();
  }

  void _notifyStatus(NetworkNotify event, Emitter<NetworkState> emit) {
    event.isConnected ? emit(NetworkSuccess()) : emit(NetworkFailure());
  }
}
