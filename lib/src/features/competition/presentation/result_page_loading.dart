import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';

class ResultPageLoading extends StatelessWidget {
  const ResultPageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: -10,
                left: 0,
                right: 0,
                child: Container(
                  height: 14,
                  color: const Color(0xff646CE6),
                ),
              ),
              Positioned(
                bottom: 4,
                left: 0,
                child: _buildPodiumShimmer(height: 67, width: 114),
              ),
              Positioned(
                bottom: 4,
                left: 0,
                right: 0,
                child: Center(
                  child: _buildPodiumShimmer(height: 110, width: 114),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 0,
                child: _buildPodiumShimmer(height: 67, width: 114),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ShimmerContainer(width: 80, height: 20),
              const SizedBox(height: 12),
              _buildParticipantShimmer(isHighlighted: true),
            ],
          ),
        ),
        const SizedBox(height: 14),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ShimmerContainer(width: 100, height: 20),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildParticipantShimmer();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPodiumShimmer({required double height, required double width}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ShimmerContainer(width: 80, height: 16),
        const SizedBox(height: 4),
        ShimmerContainer(width: width, height: height),
      ],
    );
  }

  Widget _buildParticipantShimmer({bool isHighlighted = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Row(
        children: [
          ShimmerContainer(width: 40, height: 20),
          SizedBox(width: 16),
          Expanded(
            child: ShimmerContainer(width: double.infinity, height: 20),
          ),
          SizedBox(width: 16),
          ShimmerContainer(width: 60, height: 20),
        ],
      ),
    );
  }
}
