import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pro_hogar_app/resources/api_repository.dart';

part 'pro_hogar_event.dart';
part 'pro_hogar_state.dart';

class ProHogarBloc extends Bloc<ProHogarEvent, ProHogarState> {
  ProHogarBloc() : super(ProHogarInitial()) {
    final ApiRepositoryProHogar _apiRepository = ApiRepositoryProHogar();

    on<GetServicioList>((event, emit) async {
      try {
        emit(ProHogarLoading());
        print(state);
        final servicesList = await _apiRepository.fetchServicioList();
        emit(ProHogarLoaded(servicesList));
      } on NetworkError{
        emit(const ProHogarError('Failed to fetch data. is your device currently online?'));
      }
    });

    on<GetNegocioList>((event, emit)async{
      try {
        emit(ProHogarLoading());
        print(state);
        final negociosList = await _apiRepository.fetchNegocioList();
        emit(ProHogarLoaded(negociosList));
      } on NetworkError{
        emit(const ProHogarError('Failed to fetch data. is your device currently online?'));
      }
    });
  }
}
