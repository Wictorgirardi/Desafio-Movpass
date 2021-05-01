import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:movpass/models/services.dart';

class Details extends StatelessWidget {
  int duration;
  String label;
  num price;

  Details(this.label, this.price, this.duration);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            (label).tr,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff242A2C)),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ('price').tr,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff242A2C)),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'R\$' + price.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff242A2C)),
                    ),
                  ],
                ),
                SizedBox(height: 17),
                Row(
                  children: [
                    Text(
                      ('duration').tr,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff242A2C)),
                    ),
                    SizedBox(width: 8),
                    Text(
                      duration.toString() + ('time').tr,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff242A2C)),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Uma conversa com um de nossos profissionais para, juntos, buscarem entender melhor as suas necessidades físicas, considerando suas características individuais, para orientá-lo com maior precisão na sua rotina de exercícios. A avaliação via vídeo chamada dura entre 15 e 20 minutos, e você sairá com dicas e uma sugestão de rotina de exercícios baseados nos seus objetivos e na busca de uma vida cada vez mais saudável. A Avaliação Gratuita mensal é uma forma efetiva de acompanhar a sua evolução junto com a Movpass :)',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff242A2C)),
                ),
              ],
            ),
          ),
        ));
  }
}
