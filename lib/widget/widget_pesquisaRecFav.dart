import 'package:flutter/material.dart';
import 'package:projeto/domain/Pesquisa_receitaFavorita.dart';

class WidgetPesquisarecfav extends StatefulWidget {
  PesquisaReceitafavorita receitafavorita;
  WidgetPesquisarecfav({super.key, required this.receitafavorita});

  @override
  State<WidgetPesquisarecfav> createState() => _WidgetPesquisarecfavState();
}

class _WidgetPesquisarecfavState extends State<WidgetPesquisarecfav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              widget.receitafavorita.foto_Receita,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),


          Text(
            widget.receitafavorita.nome_Receita,
            style: const TextStyle(
              color: Color(0xFF1800AD),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(
                children: const [
                  Icon(Icons.star, size: 20, color: Color(0xFF1800AD)),
                  Icon(Icons.star, size: 20, color: Color(0xFF1800AD)),
                  Icon(Icons.star, size: 20, color: Color(0xFF1800AD)),
                  Icon(Icons.star, size: 20, color: Color(0xFF1800AD)),
                  Icon(Icons.star, size: 20, color: Color(0xFF1800AD)),
                ],
              ),

              Row(
                children: [
                  const Icon(Icons.timer_outlined, size: 18, color: Color(0xFF1800AD)),
                  const SizedBox(width: 4),
                  Text(
                    '${widget.receitafavorita.tempo_Receita} min',
                    style: const TextStyle(
                      color: Color(0xFF1800AD),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 12),

                  const Icon(Icons.restaurant_outlined, size: 18, color: Color(0xFF1800AD)),
                  const SizedBox(width: 4),
                  Text(
                    '${widget.receitafavorita.porcoes_Receita} porções',
                    style: const TextStyle(
                      color: Color(0xFF1800AD),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
