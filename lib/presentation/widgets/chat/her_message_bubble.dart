 import 'package:flutter/material.dart';

 class HerMessageBubble extends StatelessWidget {
   const HerMessageBubble({super.key});
 
   @override
   Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Quien eres!!!', style: TextStyle(color: Colors.white)),
          ),
        ),

        const SizedBox(height: 5),

        // TODO: IMAGEN

        _ImageBubble(),
        
        const SizedBox(height: 5),

      ],
     );
   }
 }

 class _ImageBubble extends StatelessWidget {
 
   @override
   Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

     return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://media.tenor.com/hKbX_kt6IvEAAAAC/dragon-ball-perfect-cell.gif',
        width: size.width * 0.5,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Espera un momento...')
          );
        },
        ));
   }
 }