import 'package:dynamic_ui/model/input_model.dart';
import 'api_provider.dart';

class MyRepository {
  MyRepository({required this.apiProvider});
  ApiProvider apiProvider;

  Future<List<InputModel>> getViews() async =>
      apiProvider.getDynamicFields();
}
