import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'negocio_event.dart';
part 'negocio_state.dart';

class NegocioBloc extends Bloc<NegocioEvent, NegocioState> {
  NegocioBloc() : super(NegocioInitial()) {
    on<NegocioEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
