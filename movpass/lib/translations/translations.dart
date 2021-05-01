import 'package:get/get.dart';

class Texts extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'free_evaluation': 'Free Evaluation',
          'functional': 'Functional',
          'hiit': 'HIIT',
          'stretching': 'Stretching',
          'details': 'See Details',
          'title': 'Movpass training',
          'time': ' minutes',
          'price': 'Price: ',
          'duration': 'Duration'
        },
        'pt_BR': {
          'free_evaluation': 'Avaliação física',
          'functional': 'Funcional',
          'hiit': 'HIIT',
          'stretching': 'Alongamento',
          'details': 'Ver Detalhes',
          'title': 'Treinos Movpass',
          'time': ' minutos',
          'price': 'Preço: ',
          'duration': 'Duração'
        }
      };
}
