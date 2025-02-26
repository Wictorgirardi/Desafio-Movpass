import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Select a Service',
          'price': 'Price:',
          'duration': 'Duration:',
          'time': ' min',
          'details': 'Details',
          'free': 'Free',

          // Service labels
          'free_evaluation': 'Free Evaluation',
          'functional': 'Functional Training',
          'hiit': 'HIIT',
          'stretching': 'Stretching',
          'yoga': 'Yoga',

          // Service descriptions
          'evaluation_text':
              'Complete physical assessment with personalized orientation for your fitness goals.',
          'functional_text':
              'Exercise focused on improving everyday movements and building functional strength.',
          'hiit_text':
              'High-intensity interval training for maximum calorie burn in minimum time.',
          'stretching_text':
              'Improve flexibility, posture and reduce muscle tension with guided stretching.',
          'yoga_text':
              'Connect body and mind through postures, breathing and meditation.',
        },
        'pt_BR': {
          'title': 'Selecione um Serviço',
          'price': 'Preço:',
          'duration': 'Duração:',
          'time': ' min',
          'details': 'Detalhes',
          'free': 'Grátis',

          // Service labels
          'free_evaluation': 'Avaliação Gratuita',
          'functional': 'Treino Funcional',
          'hiit': 'HIIT',
          'stretching': 'Alongamento',
          'yoga': 'Yoga',

          // Service descriptions
          'evaluation_text':
              'Avaliação física completa com orientação personalizada para seus objetivos de condicionamento físico.',
          'functional_text':
              'Exercícios focados em melhorar movimentos do dia a dia e desenvolver força funcional.',
          'hiit_text':
              'Treino intervalado de alta intensidade para máxima queima de calorias em tempo mínimo.',
          'stretching_text':
              'Melhore flexibilidade, postura e reduza tensão muscular com alongamentos guiados.',
          'yoga_text':
              'Conecte corpo e mente através de posturas, respiração e meditação.',
        },
      };
}
