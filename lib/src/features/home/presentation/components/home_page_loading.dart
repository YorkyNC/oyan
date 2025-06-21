import 'package:flutter/material.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';

class HomePageLoading extends StatelessWidget {
  const HomePageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const ShimmerContainer(width: double.infinity, height: 50),
                const SizedBox(height: 26),
                _buildSearchBarLoading(),
                const SizedBox(height: 23),
                _buildCategoryTabsLoading(),
                const SizedBox(height: 28),
                _buildBookSectionLoading(),
                const SizedBox(height: 28),
                _buildBookSectionLoading(),
                const SizedBox(height: 28),
                _buildBookSectionLoading(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBarLoading() {
    return Row(
      children: [
        const Expanded(child: ShimmerContainer(width: double.infinity, height: 50)),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffD9D9D9)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryTabsLoading() {
    return Row(
      children: List.generate(
        3,
        (index) => Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: const BoxDecoration(color: Color(0xffEAEAEA)),
            child: const Center(
              child: Icon(
                Icons.image_outlined,
                size: 39,
                color: Color(0xff808080),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBookSectionLoading() {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShimmerContainer(width: 167, height: 19),
            ShimmerContainer(width: 48, height: 19),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: List.generate(
            3,
            (index) => Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                padding: const EdgeInsets.symmetric(vertical: 54, horizontal: 20),
                decoration: const BoxDecoration(color: Color(0xffEAEAEA)),
                child: const Center(
                  child: Icon(
                    Icons.image_outlined,
                    size: 39,
                    color: Color(0xff808080),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
