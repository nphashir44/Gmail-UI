class MessageModel {

  late String image, sender, subject, message, date;
  late bool isStarred=false;

  MessageModel(
      {required this.image, required this.sender, required this.subject, required this.message, required this.date, required this.isStarred});



}



List<MessageModel> list = [
  new MessageModel(
      image: 'https://im.rediff.com/sports/2020/nov/11foot-kroos.JPG',
      sender: 'Tony Croos',
      subject: 'Contract Renewal',
      message: 'I wish to extend',
      date: 'Sun', isStarred: false),

  new MessageModel(
      isStarred: true,
      image: 'https://upload.wikimedia.org/wikipedia/commons/9/92/Neymar_PSG.jpg',
      sender: 'Neymar',
      subject: 'Contract Renewal',
      message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      date: 'Sun'),

  new MessageModel(
      isStarred: false,
      image: 'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f5be112e7f395dc08ef8e58%2FLionel-Messi-celebrating-scoring-a-goal-in-the-2019-20-UEFA-Champions-League%2F1960x0.jpg%3Ffit%3Dscale',
      sender: 'Messi',
      subject: 'Contract Renewal',
      message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      date: 'Sun'),

  new MessageModel(
      isStarred: true,
      image: 'https://i.insider.com/5de525befd9db2198441dde2?width=750&format=jpeg&auto=webp',
      sender: 'Griezeman',
      subject: 'Contract Renewal',
      message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      date: 'Sun'),

  new MessageModel(
      isStarred: false,
      image: 'https://www.cairowestmag.com/wp-content/uploads/2021/04/16182510538387-1024x573.jpg',
      sender: 'Salah',
      subject: 'Contract Renewal',
      message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      date: 'Sun'),

  new MessageModel(
      isStarred: true,
      image: 'https://im.rediff.com/sports/2020/nov/11foot-kroos.JPG',
      sender: 'Tony Croos',
      subject: 'Contract Renewal',
      message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      date: 'Sun'),

  new MessageModel(
      isStarred: true,
      image: 'https://upload.wikimedia.org/wikipedia/commons/9/92/Neymar_PSG.jpg',
      sender: 'Neymar',
      subject: 'Contract Renewal',
      message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      date: 'Sun'),

  new MessageModel(
      isStarred: false,
      image: 'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f5be112e7f395dc08ef8e58%2FLionel-Messi-celebrating-scoring-a-goal-in-the-2019-20-UEFA-Champions-League%2F1960x0.jpg%3Ffit%3Dscale',
      sender: 'Messi',
      subject: 'Contract Renewal',
      message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      date: 'Sun'),

  new MessageModel(
      isStarred: true,
      image: 'https://i.insider.com/5de525befd9db2198441dde2?width=750&format=jpeg&auto=webp',
      sender: 'Griezeman',
      subject: 'Contract Renewal',
      message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      date: 'Sun'),

  new MessageModel(
      isStarred: true,
      image: 'https://www.cairowestmag.com/wp-content/uploads/2021/04/16182510538387-1024x573.jpg',
      sender: 'Salah',
      subject: 'Contract Renewal',
      message: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      date: 'Sun'),
];