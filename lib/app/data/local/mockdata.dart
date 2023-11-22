class MockDataModel {
  final int id;
  String title;
  String subTitle;
  String destinationUrl;
  String? imgUrl;

  MockDataModel(
      {required this.id,
      required this.title,
      required this.subTitle,
      required this.destinationUrl,
      this.imgUrl});
}

List<MockDataModel> mockData = [
  MockDataModel(id: 0, title: 'JJYO 쬬 Virtual illust', subTitle: '안녕하세요, 상시 커미션을 받고 있습니다!', destinationUrl: 'https://twitter.com/Crystalboy_o0/status/1706198289757188187', imgUrl: 'https://pbs.twimg.com/media/F62iSu7a8AAB2T0?format=jpg&name=small'),
  MockDataModel(id: 1, title: '쨰쨰의 인형옷 (뜨개 커미션)', subTitle: '🧶나만의 인형옷 주문제작 커미션', destinationUrl: 'https://twitter.com/jaechan_dress/status/1719282198405316743', imgUrl: 'https://pbs.twimg.com/media/F9weC1ba8AAGFOn?format=jpg&name=large'),
  MockDataModel(id: 2, title: '◦ -☽ ◗ 밤하늘 공방 ◖ ☾- ◦ ', subTitle: ' - Doll customer order -', destinationUrl: 'https://twitter.com/Nuit_studio_/status/1689647234613493760', imgUrl: 'https://pbs.twimg.com/media/F3LVExdbwAAcVuo?format=png&name=360x360'),
  MockDataModel(id: 3, title: '🌟SD 반고정, 오마카세 가능 커미션🌟', subTitle: '당신의 최애캐를 종이 인형으로 만들어 드립니다!', destinationUrl: 'https://twitter.com/maemang_mang/status/1727308089022726310', imgUrl: 'https://pbs.twimg.com/media/F_ihVjpaQAAkfXu?format=jpg&name=360x360'),
  MockDataModel(id: 4, title: '📻 기가지니 커미션 (바이오 참고)', subTitle: '[마기로기] 마기카로기아 롤20용 홀로그램 블랙 매크로 이미지 세트를 판매합니다.', destinationUrl: 'https://twitter.com/gigagenie_commi/status/1677655163191050242', imgUrl: 'https://pbs.twimg.com/media/F0g6eGRaAAEuTAk?format=jpg&name=small'),
  MockDataModel(id: 5, title: '🧸인형커미션 마감🧵레모란 소잉공방', subTitle: '🧸돌프리 행사 재고 판매✨ 🚛영업일 3~7일내 배송', destinationUrl: 'https://twitter.com/lemoranran/status/1715666990726295981', imgUrl: 'https://pbs.twimg.com/media/F89GCG0aoAA5hhy?format=jpg&name=medium'),
  MockDataModel(id: 6, title: '목화 コットン', subTitle: '목표 금액 달성 시 rt 추첨 두분 그려드립니다!', destinationUrl: 'https://twitter.com/Cott_on_001/status/1727336320257904653', imgUrl: 'https://pbs.twimg.com/media/F_i3RI8bkAA1J1R?format=jpg&name=4096x4096'),
  MockDataModel(id: 7, title: '아밍', subTitle: '레이스탑꾸 커미션 받습니다. 타래의 포스타입 확인해주세요. ', destinationUrl: 'https://twitter.com/Um__h0w/status/1692881160131772863', imgUrl: 'https://pbs.twimg.com/media/F35ScDUaMAAYymK?format=jpg&name=large'),
  MockDataModel(id: 8, title: '(옾챗연락)🖋️𝗦𝗔𝗦𝗜 commission', subTitle: '✔ 크레페 회지 커미션 오픈 ✔ 작업 1회 완료당 rt추첨 1분 3천자 무료 작업', destinationUrl: 'https://twitter.com/SASImedia_CM/status/1726926703413625062', imgUrl: 'https://pbs.twimg.com/media/F_dGrmHa0AA0_tt?format=jpg&name=large'),
  MockDataModel(id: 9, title: '뭐로하지닉네임', subTitle: '안녕하세요 글 컴션 받습니다! 일반글 웹소설 타입 마감 3주', destinationUrl: 'https://twitter.com/nicknamewhatidk/status/1726925369192951903', imgUrl: 'https://pbs.twimg.com/media/F_dE5fsbAAAWmZy?format=jpg&name=900x900'),
  MockDataModel(id: 10, title: '상시 글 커미션 ~ 사츠', subTitle: '✒️ 교통비와 까까비 마련 상시 글 커미션입니다.', destinationUrl: 'https://twitter.com/CM_writeST/status/1644317256397250560', imgUrl: 'https://pbs.twimg.com/media/FtHJNN6aMAAnbff?format=jpg&name=900x900'),
  MockDataModel(id: 11, title: '슈슈 (O)', subTitle: '글 커미션 받습니다. 자세한 건 티스토리 페이지를 열람해주세요. ', destinationUrl: 'https://twitter.com/Shucreampang/status/1709508031812350231', imgUrl: 'https://pbs.twimg.com/media/F7lkQ4ba8AAoqbN?format=png&name=large'),
  MockDataModel(id: 12, title: '정성', subTitle: '🔥일정 금액이 모일 시 RT추첨 한 분 흉상 그려드립니다!', destinationUrl: 'https://twitter.com/ToOvOast/status/1726996858407633354', imgUrl: 'https://pbs.twimg.com/media/F_eGfNybAAA_ICy?format=jpg&name=large'),
  MockDataModel(id: 13, title: '💧', subTitle: '[ RT💙 ] 배경 중심의 수채화 / 일러스트 커미션 오픈했습니다! ', destinationUrl: 'https://twitter.com/ouou_crying/status/1669332938306256900', imgUrl: 'https://pbs.twimg.com/media/Fyqpc1cakAADEig?format=jpg&name=large'),
  MockDataModel(id: 14, title: '비씨 BEEC', subTitle: 'm.blog.naver.com/beec_ouo/221600052301 🍒<커미션 개장 했습니다>🍒', destinationUrl: 'https://twitter.com/bc_ouo/status/1460191493059072003', imgUrl: 'https://pbs.twimg.com/media/FEOkbCzaQAAeoT0?format=jpg&name=large'),
  MockDataModel(id: 15, title: '샴슈 커미션', subTitle: '‼️#급전커미션 #커미션‼️급전이 필요해서!! 이번 주 금~토요일까지만 모든 타입 2천원씩 할인', destinationUrl: 'https://twitter.com/chamsu0/status/1726982870949048544', imgUrl: 'https://pbs.twimg.com/media/F_d5xOabkAA82k2?format=jpg&name=large'),
  MockDataModel(id: 16, title: '🎲1d6DICE { OPEN! )', subTitle: '[ 리트윗 이벤트! 🔁❤] 안녕하세요! 좋은 날에 마침 크레페 작업 수 333건을 달성해서🥰 리트윗 이벤트를 열어보려 합니다!', destinationUrl: 'https://twitter.com/1d6DICE/status/1726566445222711434', imgUrl: 'https://pbs.twimg.com/media/F_X-IUcaEAAn1rO?format=png&name=900x900'),
  MockDataModel(id: 17, title: '삼 디자인 커미션', subTitle: '#RT 일정 금액 도달 시 알티 추첨 한 분께 작업해 드립니다!', destinationUrl: 'https://twitter.com/samdesigncms/status/1594585887912112128', imgUrl: 'https://pbs.twimg.com/media/FiEbafVVUAA9nVI?format=jpg&name=large'),
  MockDataModel(id: 18, title: '✨임모탈버니✨RIYENG', subTitle: '[RT] #고정틀 #커미션 ✨크리스마스 스티커 도안 커미션✨', destinationUrl: 'https://twitter.com/jioogae_/status/1722933451563925523', imgUrl: 'https://pbs.twimg.com/media/F-kW1praEAAuWhy?format=jpg&name=900x900'),
  MockDataModel(id: 19, title: '(커미션 ⭕ 5일 내 마감 ) 더니', subTitle: '[11월 이벤트!] 11월 신청 건에 한하여 추가금 없이 5일 내 마감 드립니다! (크레페/', destinationUrl: 'https://twitter.com/theni_RT/status/1725843941390778398'),
  MockDataModel(id: 20, title: '뿔', subTitle: '✨ ONLY ROLL20 TRPG DESIGN COMMISSION http://crepe.cm/@tawog/xt2r0t60', destinationUrl: 'https://twitter.com/PP00UULL/status/1717004590624002148', imgUrl: 'https://pbs.twimg.com/media/F9QGjxzaYAAhxYd?format=jpg&name=large'),
  MockDataModel(id: 21, title: '소이치로❌', subTitle: 'RT👾 디자인 커미션 받습니다. 샘플 모집 겸 rt 추첨 한 분 디자인 작업해 드려요✨', destinationUrl: 'https://twitter.com/gameboyadvent/status/1726831475474202709', imgUrl: 'https://pbs.twimg.com/media/F_bwEEJaYAABWVV?format=jpg&name=medium'),
  MockDataModel(id: 22, title: '(⭕️)효 커미션', subTitle: '#RT 목표 금액 달성시 로고 작업 두 분 로고만들어드립니다 캐릭터기반 로고커미션 (방송용 문의가능)', destinationUrl: 'https://twitter.com/mer_commission/status/1495223115697524737', imgUrl: 'https://pbs.twimg.com/media/FMAZfNAaMAQHd4T?format=jpg&name=large'),
  MockDataModel(id: 23, title: 'KARU CM', subTitle: '디자인 커미션 상시 진행하고 있습니다. 샘플은 크레페를 참고해주시고, 크레페를 사용하지 않으시는 경우 ', destinationUrl: 'https://twitter.com/karu_cm/status/1726754390248443969', imgUrl: 'https://pbs.twimg.com/media/F_apKHabsAAJ9d7?format=jpg&name=4096x4096'),
];
