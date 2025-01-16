class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri;

  ChatMessage({
    required this.sender,
    required this.profileImage,
    required this.location,
    required this.sendDate,
    required this.message,
    this.imageUri,
  });
}

// 샘플 데이터
List<ChatMessage> chatMessageList = [
  ChatMessage(
    sender: '당근이',
    profileImage: 'https://picsum.photos/id/1/200/100?grayscale',
    location: '대부동',
    sendDate: '1일전',
    message: 'developer 님,근처에 다양한 물품들이 아주 많이있습니다.',
  ),
  ChatMessage(
    sender: 'Flutter',
    profileImage: 'https://picsum.photos/id/43/200/100?grayscale',
    location: '중동',
    sendDate: '2일전',
    message: '안녕하세요 지금 다 예약 상태 인가요?',
    imageUri: 'https://picsum.photos/id/76/200/100?grayscale',
  ),
  ChatMessage(
    sender: '당근이2',
    profileImage: 'https://picsum.photos/id/48/200/100?grayscale',
    location: '대부1동',
    sendDate: '2일전',
    message: 'developer 님,근처에 다양한 물품들이 아주 많이있습니다.',
  ),
  ChatMessage(
    sender: '당근이3',
    profileImage: 'https://picsum.photos/id/64/200/100?grayscale',
    location: '대부2동',
    sendDate: '3일전',
    message: 'developer 님,근처에 다양한 물품들이 아주 많이있습니다.',
    imageUri: 'https://picsum.photos/id/73/200/100?grayscale',
  ),
  ChatMessage(
    sender: '당근이4',
    profileImage: 'https://picsum.photos/id/65/200/100?grayscale',
    location: '대부3동',
    sendDate: '4일전',
    message: 'developer 님,근처에 다양한 물품들이 아주 많이있습니다.',
    imageUri: 'https://picsum.photos/id/91/200/100?grayscale',
  ),
];
