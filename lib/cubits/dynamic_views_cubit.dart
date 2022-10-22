import 'package:bloc/bloc.dart';
import 'package:dynamic_ui/data/repository.dart';
import 'package:meta/meta.dart';

import '../model/input_model.dart';

part 'dynamic_views_state.dart';

class DynamicViewsCubit extends Cubit<DynamicViewsState> {
  DynamicViewsCubit({required this.myRepository}) : super(DynamicViewsInitial()){
    fetchData();
  }
  
  MyRepository myRepository;
  
  
  void fetchData()async{
    emit(DynamicViewsInProgress());
    try{
      List<InputModel> views = await myRepository.getViews();
      emit(DynamicViewsInSuccess(views: views));
    }catch(e){
      emit(DynamicViewsInFailure(errorText: e.toString()));
    }
  }
}
