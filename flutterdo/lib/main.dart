import 'package:flutterdo/Routes.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting("pt_BR", null).then((_) => new Routes());
}
