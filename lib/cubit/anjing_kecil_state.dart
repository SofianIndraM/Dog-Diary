part of 'anjing_kecil_cubit.dart';

@immutable
abstract class AnjingKecilState extends Equatable {
  const AnjingKecilState();

  @override
  List<Object?> get props => [];
}

class AnjingKecilInitial extends AnjingKecilState {}

class AnjingKecilLoading extends AnjingKecilState {}

class AnjingKecilSuccess extends AnjingKecilState {
  final List<AnjingKecilModel> anjingkecils;
  final List<AnjingBesarModel> anjingbesars;

  AnjingKecilSuccess(
    this.anjingkecils,
    this.anjingbesars,
  );

  @override
  List<Object?> get props => [anjingkecils, anjingbesars];
}

class AnjingBesarSuccess extends AnjingKecilState {
  final List<AnjingBesarModel> anjingbesars;

  AnjingBesarSuccess(this.anjingbesars);

  @override
  List<Object?> get props => [anjingbesars];
}

class AnjingKecilFailed extends AnjingKecilState {
  final String error;

  AnjingKecilFailed(this.error);

  @override
  List<Object?> get props => [error];
}

class AnjingBesarFailed extends AnjingKecilState {
  final String error;

  AnjingBesarFailed(this.error);

  @override
  List<Object?> get props => [error];
}
