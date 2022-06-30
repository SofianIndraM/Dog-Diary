import 'package:bloc/bloc.dart';
import 'package:dog_diary/models/anjing_besar_model.dart';
import 'package:dog_diary/models/anjing_kecil_model.dart';
import 'package:dog_diary/services/anjing_besar_service.dart';
import 'package:dog_diary/services/anjing_kecil_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'anjing_kecil_state.dart';

class AnjingKecilCubit extends Cubit<AnjingKecilState> {
  AnjingKecilCubit() : super(AnjingKecilInitial());

  void fetchAnjingKecil() async {
    try {
      emit(AnjingKecilLoading());

      List<AnjingKecilModel> anjingkecils =
          await AnjingKecilService().fetchAnjingKecil();

      List<AnjingBesarModel> anjingbesars =
          await AnjingBesarService().fetchAnjingbesar();

      emit(AnjingKecilSuccess(anjingkecils, anjingbesars));
    } catch (e) {
      emit(AnjingKecilFailed(e.toString()));
    }
  }
}
