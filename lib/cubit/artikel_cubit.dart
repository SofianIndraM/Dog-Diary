import 'package:bloc/bloc.dart';
import 'package:dog_diary/models/artikel_model.dart';
import 'package:dog_diary/services/artikel_service.dart';
import 'package:equatable/equatable.dart';

part 'artikel_state.dart';

class ArtikelCubit extends Cubit<ArtikelState> {
  ArtikelCubit() : super(ArtikelInitial());

  void fetchArtikel() async {
    try {
      emit(ArtikelLoading());

      List<ArtikelModel> artikels = await ArtikelService().fetchArtikel();

      emit(ArtikelSuccess(artikels));
    } catch (e) {
      emit(ArtikelFailed(e.toString()));
    }
  }
}
