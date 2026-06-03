import 'package:flutter/material.dart';
import 'package:projeto/domain/card_detalhes.dart';
import 'package:projeto/domain/post_receita.dart';
import 'package:projeto/pages/detalhes_receita.dart';
import 'package:projeto/domain/pagina_detalhes.dart';

class ContainerDetalhes extends StatefulWidget {
  CardDetalhes cardDetalhes;
  ContainerDetalhes({super.key, required this.cardDetalhes});

  @override
  State<ContainerDetalhes> createState() => _ContainerDetalhesState();
}

class _ContainerDetalhesState extends State<ContainerDetalhes> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => detalhes(paginaDetalhes: PaginaDetalhes(
              ingredientes: widget.cardDetalhes.ingredientes,
              preparo: widget.cardDetalhes.preparo,
              nomereceita: widget.cardDetalhes.nomereceita,
              temporeceita: widget.cardDetalhes.temporeceita,
              nivelreceita: widget.cardDetalhes.nivelreceita,
              fotoreceita: widget.cardDetalhes.fotoreceita)))
          );
        });
      },
      child: Container(
        height: 75,
        decoration: BoxDecoration(
            color: Color(0xFFc5cae9),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      widget.cardDetalhes.fotoreceita,
                      height: 57,
                      width: 57,
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.cardDetalhes.nomereceita,
                    style: TextStyle(
                        color: Color(0xFF002566),
                        fontFamily: 'Montserrat',
                        fontSize: 12),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Color(0xFF002566),
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${widget.cardDetalhes.temporeceita} min',
                        style: TextStyle(
                            color: Color(0xFF002566),
                            fontFamily: 'Montserrat-Regular',
                            fontSize: 10),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.graphic_eq,
                        color: Color(0xFF002566),
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.cardDetalhes.nivelreceita,
                        style: TextStyle(
                            color: Color(0xFF002566),
                            fontFamily: 'Montserrat-Regular',
                            fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
              ),
              Padding(padding: EdgeInsets.all(15),
                child: Text('Ver Receita',
                    style: TextStyle(
                        color: Color(0xFF002566),
                        fontFamily: 'Montserrat-Regular',
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    )),
              )
            ]),
      ),
    );
  }
}
