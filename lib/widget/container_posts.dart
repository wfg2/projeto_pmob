import 'package:flutter/material.dart';
import 'package:projeto/domain/card_detalhes.dart';
import 'package:projeto/domain/post_receita.dart';
import 'package:projeto/pages/detalhes_receita.dart';
import 'package:projeto/widget/container_detalhes.dart';
import 'package:projeto/db/fake_database.dart';

class ContainerPosts extends StatefulWidget {
  PostReceita postReceita;

  ContainerPosts({super.key, required this.postReceita});

  @override
  State<ContainerPosts> createState() => _ContainerPostsState();
}

class _ContainerPostsState extends State<ContainerPosts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              buildcircleAvatar(widget.postReceita.fotodeperfil),
              SizedBox(width: 12),
              Text(widget.postReceita.nomeusuario,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF002566)
                  )),
              Spacer(flex: 2),
              Text(widget.postReceita.dataehora,
                  style: TextStyle(
                      fontSize: 12, fontFamily: 'Montserrat-Regular'))
            ],
          ),
          SizedBox(height: 10),
          ClipRRect(
            child: Image.network(widget.postReceita.fotopost, height: 200, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.favorite, size: 25, color: Color(0xFF002566)),
                  Text(widget.postReceita.likes,
                      style: TextStyle(
                          color: Color(0xFF002566),
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10))
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Icon(Icons.comment_rounded,
                      size: 25, color: Color(0xFF002566)),
                  Text(widget.postReceita.comentarios,
                      style: TextStyle(
                          color: Color(0xFF002566),
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10))
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Icon(Icons.share, size: 25, color: Color(0xFF002566)),
                  Text(widget.postReceita.compartilhamentos,
                      style: TextStyle(
                          color: Color(0xFF002566),
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10))
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(widget.postReceita.legenda,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Montserrat-Regular')),
          SizedBox(height: 12),
          ContainerDetalhes(cardDetalhes: CardDetalhes(
              nomereceita: widget.postReceita.nomereceita,
              temporeceita: widget.postReceita.temporeceita,
              nivelreceita: widget.postReceita.nivelreceita,
              fotoreceita: widget.postReceita.fotoreceita,
              ingredientes: widget.postReceita.ingredientes,
              preparo: widget.postReceita.preparo
          )
          )
        ],
      ),
    );
  }

  buildcircleAvatar(String profilephoto) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: Color(0xFF002566),
      child: CircleAvatar(
        radius: 21,
        backgroundImage: NetworkImage(profilephoto),
      ),
    );
  }
}
