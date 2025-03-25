import 'package:flutter/material.dart';

import '../../../../../core/base/base_bloc/bloc/base_bloc_widget.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/services/injectable/injectable_service.dart';
import '../../../domain/requests/get_message_request.dart';
import '../../bloc/chat_bloc.dart';
import 'replied_message_loader.dart';

class RepliedMessageWidget extends StatelessWidget {
  const RepliedMessageWidget({
    super.key,
    required this.repliedMessageId,
  });

  final String repliedMessageId;

  @override
  Widget build(BuildContext context) {
    // Get the parent container's constraints
    return LayoutBuilder(builder: (context, constraints) {
      return BaseBlocWidget<ChatBloc, ChatEvent, ChatState>(
        bloc: getIt<ChatBloc>(),
        starterEvent: ChatEvent.getMessage(
          GetMessageRequest(
            messageId: repliedMessageId,
            schoolId: schoolId,
          ),
        ),
        builder: (context, state, bloc) {
          return state.maybeWhen(
            orElse: () => const RepliedMessageLoader(),
            loading: () => const RepliedMessageLoader(),
            loaded: (viewModel) {
              if (viewModel.repliedMessage == null) {
                return const SizedBox(height: 47);
              }

              final repliedMessage = viewModel.repliedMessage!;
              final hasAttachment = repliedMessage.attachments.isNotEmpty;
              final attachment = hasAttachment ? repliedMessage.attachments[0] : null;
              final isImage = attachment?.type?.toLowerCase().contains('media') ?? false;

              return Container(
                constraints: BoxConstraints(
                  maxWidth: constraints.maxWidth * 0.85, // Limit width to 85% of parent
                ),
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Make row wrap to content
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 2,
                      height: 35,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2599A0),
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                    if (isImage && attachment?.url != null)
                      Container(
                        width: 35,
                        height: 35,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: NetworkImage(attachment!.url!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    Flexible(
                      // Use Flexible instead of Expanded
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: constraints.maxWidth * 0.7, // Further limit text width
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              repliedMessage.author?.firstName ?? '',
                              style: const TextStyle(
                                color: Color(0xFF2599A0),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              repliedMessage.text ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      );
    });
  }
}
