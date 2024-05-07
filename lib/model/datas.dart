class KingInfo {
  final int position;
  final String? name;
  final String? date;
  final String? iconImage;
  final String? description;
  final List<String>? images;

  KingInfo(
    this.position, {
    this.name,
    this.iconImage,
    this.date,
    this.description,
    this.images,
  });
}

List<KingInfo> kings = [
  KingInfo(1,
      name: 'King Ramses II',
      iconImage: 'assets/king2.jpg',
      date: "(c. 13th century BCE)",
      description:
          "One of the most celebrated pharaohs in Egyptian history, Ramesses II reigned for over 66 years during the 19th dynasty. He is known for his military campaigns against the Hittites, as well as his extensive building projects, including the famous temples at Abu Simbel.",
      images: [
        'https://cdn.britannica.com/88/82588-050-7C79D84E/Detail-face-Temple-of-Luxor-Colossus-Ramses.jpg',
        'https://cdn.britannica.com/65/3865-050-135D602D/Ramses-II-prisoners-hair-bas-relief-Limestone-Memphis-24-bce.jpg',
        'https://www.thoughtco.com/thmb/HmrytMGAfggWDdeJrTkuC-uqiBY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-113282071-bc0630968ea4443eab2d7142c731bad5.jpg',
        'https://www.osiristours.com/wp-content/uploads/2016/07/Abu-Simbel-Temple-copy.jpg',
      ]),
  KingInfo(2,
      name: 'King Thutmose III',
      iconImage: 'assets/king3.jpg',
      date: "(c. 15th century BCE)",
      description:
          "Often referred to as the Napoleon of Ancient Egypt, Thutmose III expanded the Egyptian empire through numerous military campaigns, conquering vast territories in the Levant and Nubia during the New Kingdom period.",
      images: [
        'https://i.natgeofe.com/n/954e26f8-086b-4032-8642-c03c2bebc455/thutmose-iii_3x4.jpg?w=1440&h=1920',
        'https://historyforce.com/wp-content/uploads/2021/07/Thutmose-III-at-The-Battle-of-Megiddo-768x499.jpg',
        'https://exploreluxor.org/wp-content/uploads/2021/07/Thutmose-III.jpg',
      ]),
  KingInfo(3,
      name: 'King Narmer',
      iconImage: 'assets/king4.jpg',
      date: "(c. 31st century BCE)",
      description:
          "Regarded as the first pharaoh of Egypt, Menes is credited with unifying Upper and Lower Egypt around 3100 BCE, thus establishing the first dynasty and initiating thousands of years of dynastic rule",
      images: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg4KZ_99NjXSeexM3T9fshCBojuLKI0R3VtKSLKuSQ8w&s',
        'https://www.traveleg.com/media/k2/items/cache/7ab716354432ee12f19b58c60471093b_XL.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhFQpU4W5G_8GTShm5LF6Kuqyvf0BuQ-MhLuKwA19MpQJzbZFK-2PEJB3ow3LIdwDuz0w&usqp=CAU',
      ]),
  KingInfo(4,
      name: 'King Cleopatra VII',
      iconImage: 'assets/king9.jpg',
      date: "(c. 1st century BCE)",
      description:
          "The last pharaoh of Egypt, Cleopatra VII, is remembered for her alliances with powerful Roman leaders, particularly Julius Caesar and Mark Antony. Her reign marked the end of the Ptolemaic dynasty and the beginning of Roman rule in Egypt.",
      images: [
        'https://media.sciencephoto.com/image/c0118425/800wm/C0118425-Cleopatra_VII.jpg',
        'https://th-thumbnailer.cdn-si-edu.com/k5U5fOFx_6Cd0oJKU6UZCLll86s=/1000x750/filters:no_upscale()/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/Presence-Cleopatra-engraving-631.jpg',
        'https://64.media.tumblr.com/ce0b7ebc8feb04af8546d3f1bb52aca2/6acb2cd9b087cd2e-c5/s512x512u_c1/03567e299690872b1a7709934506aa02510f100a.jpg',
      ]),
  KingInfo(5,
      name: 'King Amenhotep III',
      iconImage: 'assets/king8.jpg',
      date: "(c. 26th century BCE)",
      description:
          "Often referred to as the Sun King, Amenhotep III presided over a period of great prosperity and artistic flourishing during the 18th dynasty. His reign saw extensive building projects, diplomatic relations with other kingdoms, and the commissioning of numerous works of art.",
      images: [
        'https://www.tripsinegypt.com/wp-content/uploads/2019/04/Amenhotep-III-Trips-in-Egypt.jpg',
        'https://i0.wp.com/egypt-museum.com/wp-content/uploads/2023/10/Statue-of-Amenhotep-III.jpg?ssl=1',
        'https://cdn.britannica.com/87/178087-050-464C45C9/Colossi-of-Memnon-Madinat-Habu-Egypt-Thebes.jpg',
      ]),
  KingInfo(6,
      name: 'King Hatshepsut',
      iconImage: 'assets/king7.jpg',
      date: "(c. 15th century BCE)",
      description:
          "One of the few female pharaohs, Hatshepsut ruled as a regent for her stepson, Thutmose III, before declaring herself pharaoh. She is noted for her extensive building projects and trade expeditions.",
      images: [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Seated_Statue_of_Hatshepsut_MET_Hatshepsut2012.jpg/330px-Seated_Statue_of_Hatshepsut_MET_Hatshepsut2012.jpg',
        'https://www.taramoss.com/wp-content/uploads/2012/10/hatshepsut-image.jpg',
        'https://images.immediate.co.uk/production/volatile/sites/7/2016/01/GettyImages-110863512-e1671014651715.jpg?quality=90&webp=true&resize=620,414'
      ]),
  KingInfo(7,
      name: 'King Akhenaten',
      iconImage: 'assets/king1.jpg',
      date: "(c. 14th century BCE)",
      description:
          "Akhenaten is known for his religious reforms, including the introduction of monotheistic worship centered around the god Aten. He moved the capital to Amarna and ruled with his famous queen, Nefertiti.",
      images: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5F1H0STt7F0wDZxVsnxr-R9euYNA6uk4HFImIpxQnPw&s',
        'https://cdn.britannica.com/36/195536-050-B78107E9/Akhenaten-Egypt-Alexandria-National-Museum.jpg',
        'https://www.historyhit.com/app/uploads/2022/05/Pharaoh-Akhenaten-1.jpg?x15493',
      ]),
  KingInfo(8,
      name: 'King Tutankhamun',
      iconImage: 'assets/king10.jpg',
      date: "(c. 14th century BCE)",
      description:
          "Tutankhamun, commonly known as King Tut, became pharaoh at a young age and is famous for the discovery of his nearly intact tomb in the Valley of the Kings, providing valuable insights into ancient Egyptian life and culture.",
      images: [
        'https://image.jimcdn.com/app/cms/image/transf/dimension=1040x10000:format=jpg/path/s2217cd0bb1220415/image/i42cfd0eb1369caae/version/1695638642/mystery-surrounding-tutankhamun-s-death.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqzaEqBeKQ2jq4R__F9_X6FqgsxOczcdr_cGQeMtwJcw&s',
        'https://cdn.i-scmp.com/sites/default/files/styles/940w/public/d8/images/canvas/2022/09/15/5e9fd26e-d276-4220-a9bf-d34e0c88cd32_02bbd47b.jpg?itok=RHVXj1QP',
      ]),
];
