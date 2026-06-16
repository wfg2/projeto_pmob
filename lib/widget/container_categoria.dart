import 'package:flutter/material.dart';
import 'package:projeto/domain/categoria.dart';
import 'package:projeto/paginas/receitas_categoria.dart';

class ContainerCategoria extends StatefulWidget {
  Categoria categoria;

  ContainerCategoria({super.key, required this.categoria});

  @override
  State<ContainerCategoria> createState() => _ContainerCategoriaState();
}

class _ContainerCategoriaState extends State<ContainerCategoria> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ReceitasCategoria(categoria: widget.categoria);
            }
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10.0),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: const Offset(2, 5),
            ),
          ],
        ),

        child:
        Stack(
          fit: StackFit.passthrough,
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10.0),
              child:
              Image.network(
                widget.categoria.urlImagem,
                height: 180,
                width: 380,
                fit: BoxFit.cover,
              ),
            ),

            Positioned.fill(
                child: Center(
                  child: Text(
                    widget.categoria.categoria,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',

                        shadows: [
                          Shadow(
                              blurRadius: 5,
                              color: Colors.black,
                              offset: Offset(3, 3)
                          )
                        ]
                    ),

                    textAlign: TextAlign.center,
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

  onTapContainer() {}
}
