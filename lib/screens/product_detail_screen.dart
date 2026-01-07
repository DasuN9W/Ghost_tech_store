import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final yellow = Theme.of(context).colorScheme.primary;

    final specs = _sampleSpecs[product.id];

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Center(
              child: Hero(
                tag: product.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      product.imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade800,
                          child: const Icon(
                            Icons.image_not_supported,
                            size: 60,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            Text(
              product.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            Text(product.subTitle, style: const TextStyle(fontSize: 14)),

            const SizedBox(height: 16),

            Text(
              product.price,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            if (specs != null && specs.isNotEmpty) ...[
              const SizedBox(height: 24),
              const Text(
                'Key Specifications',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              for (final line in specs) _buildBullet(line),
            ],

            const SizedBox(height: 28),

            SizedBox(
              height: 52,
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: yellow,
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
                onPressed: () {},
                child: const Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildBullet(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('• ', style: TextStyle(fontSize: 14)),
        Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
      ],
    ),
  );
}

const Map<String, List<String>> _sampleSpecs = {
  '1': [
    'Display: 6.9" AMOLED 2X, 120Hz, 2600 nits',
    'Chipset: Snapdragon 8 Gen 4',
    'Rear Cameras: 200MP main, 50MP ultra-wide, 50MP periscope, 10MP telephoto',
    'Front Camera: 12MP',
    'Battery: 5000mAh, 45W wired + wireless charging',
    'Build: Titanium frame, IP68 water and dust resistance',
    'Software: Android 15, 7 years of updates',
  ],

  '2': [
    'Display: 14" Liquid Retina XDR',
    'Chip: Apple M3 Pro',
    'Memory: 16GB unified',
    'Storage: 512GB SSD',
    'Battery: Up to 18 hours video playback',
  ],

  '3': [
    'CPU: 8-core AMD Zen 2',
    'GPU: Custom RDNA 2, up to 10.3 TFLOPs',
    'Storage: 1TB SSD',
    'Resolution: Up to 4K 120Hz',
    'Features: Ray tracing, DualSense haptic feedback',
  ],
};
