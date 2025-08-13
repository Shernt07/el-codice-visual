import 'package:flame/components.dart';

class SpriteComponentInitial extends SpriteComponent {
  final String image;

  /* Parametros === IMAGE, es obligatoria la rUta especifica || SIZE, no es obligatoria  */
  SpriteComponentInitial({required this.image, Vector2? size})
    : super(size: size ?? Vector2(100, 100));

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // Carga de imagen
    // final path = 'assets/img/$image';
    sprite = await Sprite.load('img/$image');

    // Posición inicial
    position = Vector2(100, 100);

    print('ruta de image: $image');
  }
}
