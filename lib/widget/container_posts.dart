import 'package:flutter/material.dart';
import 'package:projeto_pmob/domain/card_detalhes.dart';
import 'package:projeto_pmob/domain/post_receita.dart';
import 'package:projeto_pmob/pages/maps_page.dart';
import 'package:projeto_pmob/widget/container_detalhes.dart';

class ContainerPosts extends StatefulWidget {
  final PostReceita postReceita;

  const ContainerPosts({super.key, required this.postReceita});

  @override
  State<ContainerPosts> createState() => _ContainerPostsState();
}

class _ContainerPostsState extends State<ContainerPosts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              buildcircleAvatar(widget.postReceita.fotodeperfil),
              const SizedBox(width: 12),
              Text(
                widget.postReceita.nomeusuario,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF0a27eb),
                ),
              ),
              const Spacer(flex: 2),
              Text(
                widget.postReceita.dataehora,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Montserrat-Regular',
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              widget.postReceita.fotopost,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Column(
                children: [
                  const Icon(Icons.favorite, size: 25, color: Color(0xFF0a27eb)),
                  Text(
                    widget.postReceita.likes,
                    style: const TextStyle(
                      color: Color(0xFF0a27eb),
                      fontFamily: 'Montserrat-Regular',
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  const Icon(Icons.comment_rounded, size: 25, color: Color(0xFF0a27eb)),
                  Text(
                    widget.postReceita.comentarios,
                    style: const TextStyle(
                      color: Color(0xFF0a27eb),
                      fontFamily: 'Montserrat-Regular',
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  const Icon(Icons.share, size: 25, color: Color(0xFF0a27eb)),
                  Text(
                    widget.postReceita.compartilhamentos,
                    style: const TextStyle(
                      color: Color(0xFF0a27eb),
                      fontFamily: 'Montserrat-Regular',
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            widget.postReceita.legenda,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'Montserrat-Regular',
            ),
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapsPage(
                    latitude: widget.postReceita.latitude,
                    longitude: widget.postReceita.longitude,
                    nomereceita: widget.postReceita.nomereceita,
                  ),
                ),
              );
            },
            child: const Text(
              'VER PAÍS DE ORIGEM DO PRATO',
              style: TextStyle(
                color: Color(0xFF0a27eb),
                fontFamily: 'Montserrat-Regular',
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ContainerDetalhes(
            cardDetalhes: CardDetalhes(
              nomereceita: widget.postReceita.nomereceita,
              temporeceita: widget.postReceita.temporeceita,
              nivelreceita: widget.postReceita.nivelreceita,
              fotoreceita: widget.postReceita.fotoreceita,
              ingredientes: widget.postReceita.ingredientes,
              preparo: widget.postReceita.preparo,
              latitude: widget.postReceita.latitude,
              longitude: widget.postReceita.longitude,
            ),
          )
        ],
      ),
    );
  }

  Widget buildcircleAvatar(String profilephoto) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: const Color(0xFF0a27eb),
      child: CircleAvatar(
        radius: 21,
        backgroundImage: NetworkImage(profilephoto),
      ),
    );
  }
}