
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:clean_architecture/app/comman/enum.dart';

part 'update_token_cubit.freezed.dart';
part 'update_token_state.dart';

@singleton
class UpdateTokenCubit extends Cubit<UpdateTokenState> {
  UpdateTokenCubit() : super(UpdateTokenState.initial());

  void updateFcm() async {
    emit(const UpdateTokenState(state: RequestState.loading, message: ''));

    final fcmtoken = await FirebaseMessaging.instance.getToken() ?? '';

    if (fcmtoken.isNotEmpty) {
      emit(const UpdateTokenState(state: RequestState.loaded, message: ''));
    } else {
      emit(const UpdateTokenState(
          state: RequestState.error, message: 'Failed to update token'));
    }
  }
}
