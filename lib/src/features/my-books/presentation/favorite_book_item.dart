import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class FavoriteBookItem extends StatefulWidget {
  final String title;
  final String author;
  final String coverUrl;
  final VoidCallback? onReadPressed;

  const FavoriteBookItem({
    Key? key,
    required this.title,
    required this.author,
    required this.coverUrl,
    this.onReadPressed,
  }) : super(key: key);

  @override
  State<FavoriteBookItem> createState() => _FavoriteBookItemState();
}

class _FavoriteBookItemState extends State<FavoriteBookItem> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _expandAnimation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _expandAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 70,
                  height: 100,
                  color: Colors.grey[300],
                  child: Image.network(
                    widget.coverUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.amber[100],
                        child: Center(
                          child: Icon(
                            Icons.book,
                            color: Colors.amber[800],
                            size: 30,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.title,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.bookmark,
                              color: Colors.amber,
                              size: 22,
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: _toggleExpand,
                              child: AnimatedIcon(
                                icon: AnimatedIcons.menu_close,
                                progress: _expandAnimation,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.author,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xffa2add0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizeTransition(
            sizeFactor: _expandAnimation,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 14),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: widget.onReadPressed,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        context.loc.read,
                        style: GoogleFonts.openSans(fontWeight: FontWeight.w600, fontSize: 17, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
