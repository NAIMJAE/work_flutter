class HeaderItem {
  String company;
  String contents;
  String imageName;
  String price;
  String cate;

  HeaderItem(
      this.company, this.contents, this.imageName, this.price, this.cate);
}

List<HeaderItem> headerItem = [
  HeaderItem('신라스테이', '얼리버트 패키지 특가', 'assets/images/bodyHeader5.jpg',
      '신라스테이 1박 99,000원', '호텔'),
  HeaderItem('라발스호텔', '여름 바캉스 특가', 'assets/images/bodyHeader4.jpg',
      '라발스호텔 1박 88,000원', '호텔'),
  HeaderItem('아시아나', '이번 기회에 떠나보세요 특가', 'assets/images/bodyHeader3.jpg',
      '유럽 3개국 1,635,100원', '투어'),
  HeaderItem('tway', '지금부터 일본 여행 특가', 'assets/images/bodyHeader2.jpg',
      '도쿄 535,100원', '항공'),
  HeaderItem('대한항공', '여행 빅세일 항공권 특가', 'assets/images/bodyHeader1.jpg',
      '하노이 646,100원', '항공'),
];
