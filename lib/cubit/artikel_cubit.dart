import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'artikel_state.dart';

class ArtikelCubit extends Cubit<ArtikelState> {
  ArtikelCubit() : super(ArtikelInitial());
}
