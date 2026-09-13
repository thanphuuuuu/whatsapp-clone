import 'conversations_response.dart';
import 'create_conversation_response.dart';

extension ConversationModelMapper on ConversationModel {
  Conversation toConversation({LastMessage? lastMessage}) {
    return Conversation(
      id: id,
      members: members.map((m) => m.toMember()).toList(),
      isGroup: isGroup,
      groupName: groupName,
      groupAvatar: groupAvatar,
      unreadCount: unreadCount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      v: v,
      lastMessage: lastMessage,
    );
  }
}

extension MemberModelMapper on MemberModel {
  Member toMember() {
    return Member(
      id: id,
      username: username,
      email: email,
      fullName: fullName,
      avatar: avatar,
      isOnline: isOnline,
      lastSeenAt: lastSeenAt,
    );
  }
}

extension CreateConversationResponseX on CreateConversationResponse {
  Conversation toConversation({LastMessage? lastMessage}) {
    return data.conversation.toConversation(lastMessage: lastMessage);
  }
}
