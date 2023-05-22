import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pro_hogar_app/model/servicio_model.dart';
import 'package:pro_hogar_app/resources/api_repository.dart';

part 'service_event.dart';
part 'service_state.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ServiceBloc() : super(ServiceInitial()) {
    final ApiRepositoryProHogar _apiRepository = ApiRepositoryProHogar();

    on<GetServicioList>((event, emit) async {
      try {
        emit(ServiceLoading());
        print(state);
        final servicesList = await _apiRepository.fetchServicioList();
        emit(ServiceLoaded(servicesList));
      } on NetworkError{
        emit(const ServiceError('Failed to fetch data. is your device currently online?'));
      }
    });

    on<GetNegocioList>((event, emit)async{
      try {
        emit(ServiceLoading());
        print(state);
        final servicesList = await _apiRepository.fetchServicioList();
        emit(ServiceLoaded(servicesList));
      } on NetworkError{
        emit(const ServiceError('Failed to fetch data. is your device currently online?'));
      }
    });
  }
}
