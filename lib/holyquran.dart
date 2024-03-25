import 'quran_data.dart';

var _quranText = QuranData.data;

enum Translation { NONE, ENGLISH, HINDI, BENGALI }

const alif = "ا";
const ba = "ب";
const ta = "ت";
const tha = "ث";
const jim = "ج";
const ha = "ح";
const kha = "خ";
const dal = "د";
const dhal = "ذ";
const ra = "ر";
const zay = "ز";
const sin = "س";
const shin = "ش";
const saad = "ص";
const dhaad = "ض";
const toa = "ط";
const dhaa = "ظ";
const ain = "ع";
const ghayn = "غ";
const faa = "ف";
const qaf = "ق";
const kaf = "ك";
const lam = "ل";
const mim = "م";
const nun = "ن";
const haa = "ه";
const waw = "و";
const ya = "ي";
const hamza = "ء";

var arbaic_alphabets = [
  alif,
  ba,
  ta,
  tha,
  jim,
  ha,
  kha,
  dal,
  dhal,
  ra,
  zay,
  sin,
  shin,
  saad,
  dhaad,
  toa,
  dhaa,
  ain,
  ghayn,
  faa,
  qaf,
  kaf,
  lam,
  mim,
  nun,
  waw,
  haa,
  hamza,
  ya
];
var arbaic_alphabets_name = [
  "alif",
  "ba",
  "ta",
  "tha",
  "jim",
  "ha",
  "kha",
  "dal",
  "dhal",
  "ra",
  "zay",
  "sin",
  "shin",
  "saad",
  "dhaad",
  "toa",
  "dhaa",
  "ain",
  "ghayn",
  "faa",
  "qaf",
  "kaf",
  "lam",
  "mim",
  "nun",
  "waw",
  "haa",
  "hamza",
  "ya"
];

var _surah = [
  {
    "place": "Meccan",
    "id": 1,
    "arabic": "سُورَةُ ٱلْفَاتِحَةِ",
    "name": "Al-Faatiha",
    "aya": 7,
    "english": "The Opening"
  },
  {
    "place": "Medinan",
    "id": 2,
    "arabic": "سُورَةُ البَقَرَةِ",
    "name": "Al-Baqara",
    "aya": 286,
    "english": "The Cow"
  },
  {
    "place": "Medinan",
    "id": 3,
    "arabic": "سُورَةُ آلِ عِمۡرَانَ",
    "name": "Aal-i-Imraan",
    "aya": 200,
    "english": "The Family of Imraan"
  },
  {
    "place": "Medinan",
    "id": 4,
    "arabic": "سُورَةُ النِّسَاءِ",
    "name": "An-Nisaa",
    "aya": 176,
    "english": "The Women"
  },
  {
    "place": "Medinan",
    "id": 5,
    "arabic": "سُورَةُ المَائـِدَةِ",
    "name": "Al-Maaida",
    "aya": 120,
    "english": "The Table"
  },
  {
    "place": "Meccan",
    "id": 6,
    "arabic": "سُورَةُ الأَنۡعَامِ",
    "name": "Al-An'aam",
    "aya": 165,
    "english": "The Cattle"
  },
  {
    "place": "Meccan",
    "id": 7,
    "arabic": "سُورَةُ الأَعۡرَافِ",
    "name": "Al-A'raaf",
    "aya": 206,
    "english": "The Heights"
  },
  {
    "place": "Medinan",
    "id": 8,
    "arabic": "سُورَةُ الأَنفَالِ",
    "name": "Al-Anfaal",
    "aya": 75,
    "english": "The Spoils of War"
  },
  {
    "place": "Medinan",
    "id": 9,
    "arabic": "سُورَةُ التَّوۡبَةِ",
    "name": "At-Tawba",
    "aya": 129,
    "english": "The Repentance"
  },
  {
    "place": "Meccan",
    "id": 10,
    "arabic": "سُورَةُ يُونُسَ",
    "name": "Yunus",
    "aya": 109,
    "english": "Jonas"
  },
  {
    "place": "Meccan",
    "id": 11,
    "arabic": "سُورَةُ هُودٍ",
    "name": "Hud",
    "aya": 123,
    "english": "Hud"
  },
  {
    "place": "Meccan",
    "id": 12,
    "arabic": "سُورَةُ يُوسُفَ",
    "name": "Yusuf",
    "aya": 111,
    "english": "Joseph"
  },
  {
    "place": "Medinan",
    "id": 13,
    "arabic": "سُورَةُ الرَّعۡدِ",
    "name": "Ar-Ra'd",
    "aya": 43,
    "english": "The Thunder"
  },
  {
    "place": "Meccan",
    "id": 14,
    "arabic": "سُورَةُ إِبۡرَاهِيمَ",
    "name": "Ibrahim",
    "aya": 52,
    "english": "Abraham"
  },
  {
    "place": "Meccan",
    "id": 15,
    "arabic": "سُورَةُ الحِجۡرِ",
    "name": "Al-Hijr",
    "aya": 99,
    "english": "The Rock"
  },
  {
    "place": "Meccan",
    "id": 16,
    "arabic": "سُورَةُ النَّحۡلِ",
    "name": "An-Nahl",
    "aya": 128,
    "english": "The Bee"
  },
  {
    "place": "Meccan",
    "id": 17,
    "arabic": "سُورَةُ الإِسۡرَاءِ",
    "name": "Al-Israa",
    "aya": 111,
    "english": "The Night Journey"
  },
  {
    "place": "Meccan",
    "id": 18,
    "arabic": "سُورَةُ الكَهۡفِ",
    "name": "Al-Kahf",
    "aya": 110,
    "english": "The Cave"
  },
  {
    "place": "Meccan",
    "id": 19,
    "arabic": "سُورَةُ مَرۡيَمَ",
    "name": "Maryam",
    "aya": 98,
    "english": "Mary"
  },
  {
    "place": "Meccan",
    "id": 20,
    "arabic": "سُورَةُ طه",
    "name": "Taa-Haa",
    "aya": 135,
    "english": "Taa-Haa"
  },
  {
    "place": "Meccan",
    "id": 21,
    "arabic": "سُورَةُ الأَنبِيَاءِ",
    "name": "Al-Anbiyaa",
    "aya": 112,
    "english": "The Prophets"
  },
  {
    "place": "Medinan",
    "id": 22,
    "arabic": "سُورَةُ الحَجِّ",
    "name": "Al-Hajj",
    "aya": 78,
    "english": "The Pilgrimage"
  },
  {
    "place": "Meccan",
    "id": 23,
    "arabic": "سُورَةُ المُؤۡمِنُونَ",
    "name": "Al-Muminoon",
    "aya": 118,
    "english": "The Believers"
  },
  {
    "place": "Medinan",
    "id": 24,
    "arabic": "سُورَةُ النُّورِ",
    "name": "An-Noor",
    "aya": 64,
    "english": "The Light"
  },
  {
    "place": "Meccan",
    "id": 25,
    "arabic": "سُورَةُ الفُرۡقَانِ",
    "name": "Al-Furqaan",
    "aya": 77,
    "english": "The Criterion"
  },
  {
    "place": "Meccan",
    "id": 26,
    "arabic": "سُورَةُ الشُّعَرَاءِ",
    "name": "Ash-Shu'araa",
    "aya": 227,
    "english": "The Poets"
  },
  {
    "place": "Meccan",
    "id": 27,
    "arabic": "سُورَةُ النَّمۡلِ",
    "name": "An-Naml",
    "aya": 93,
    "english": "The Ant"
  },
  {
    "place": "Meccan",
    "id": 28,
    "arabic": "سُورَةُ القَصَصِ",
    "name": "Al-Qasas",
    "aya": 88,
    "english": "The Stories"
  },
  {
    "place": "Meccan",
    "id": 29,
    "arabic": "سُورَةُ العَنكَبُوتِ",
    "name": "Al-Ankaboot",
    "aya": 69,
    "english": "The Spider"
  },
  {
    "place": "Meccan",
    "id": 30,
    "arabic": "سُورَةُ الرُّومِ",
    "name": "Ar-Room",
    "aya": 60,
    "english": "The Romans"
  },
  {
    "place": "Meccan",
    "id": 31,
    "arabic": "سُورَةُ لُقۡمَانَ",
    "name": "Luqman",
    "aya": 34,
    "english": "Luqman"
  },
  {
    "place": "Meccan",
    "id": 32,
    "arabic": "سُورَةُ السَّجۡدَةِ",
    "name": "As-Sajda",
    "aya": 30,
    "english": "The Prostration"
  },
  {
    "place": "Medinan",
    "id": 33,
    "arabic": "سُورَةُ الأَحۡزَابِ",
    "name": "Al-Ahzaab",
    "aya": 73,
    "english": "The Clans"
  },
  {
    "place": "Meccan",
    "id": 34,
    "arabic": "سُورَةُ سَبَإٍ",
    "name": "Saba",
    "aya": 54,
    "english": "Sheba"
  },
  {
    "place": "Meccan",
    "id": 35,
    "arabic": "سُورَةُ فَاطِرٍ",
    "name": "Faatir",
    "aya": 45,
    "english": "The Originator"
  },
  {
    "place": "Meccan",
    "id": 36,
    "arabic": "سُورَةُ يسٓ",
    "name": "Yaseen",
    "aya": 83,
    "english": "Yaseen"
  },
  {
    "place": "Meccan",
    "id": 37,
    "arabic": "سُورَةُ الصَّافَّاتِ",
    "name": "As-Saaffaat",
    "aya": 182,
    "english": "Those drawn up in Ranks"
  },
  {
    "place": "Meccan",
    "id": 38,
    "arabic": "سُورَةُ صٓ",
    "name": "Saad",
    "aya": 88,
    "english": "The letter Saad"
  },
  {
    "place": "Meccan",
    "id": 39,
    "arabic": "سُورَةُ الزُّمَرِ",
    "name": "Az-Zumar",
    "aya": 75,
    "english": "The Groups"
  },
  {
    "place": "Meccan",
    "id": 40,
    "arabic": "سُورَةُ غَافِرٍ",
    "name": "Ghafir",
    "aya": 85,
    "english": "The Forgiver"
  },
  {
    "place": "Meccan",
    "id": 41,
    "arabic": "سُورَةُ فُصِّلَتۡ",
    "name": "Fussilat",
    "aya": 54,
    "english": "Explained in detail"
  },
  {
    "place": "Meccan",
    "id": 42,
    "arabic": "سُورَةُ الشُّورَىٰ",
    "name": "Ash-Shura",
    "aya": 53,
    "english": "Consultation"
  },
  {
    "place": "Meccan",
    "id": 43,
    "arabic": "سُورَةُ الزُّخۡرُفِ",
    "name": "Az-Zukhruf",
    "aya": 89,
    "english": "Ornaments of gold"
  },
  {
    "place": "Meccan",
    "id": 44,
    "arabic": "سُورَةُ الدُّخَانِ",
    "name": "Ad-Dukhaan",
    "aya": 59,
    "english": "The Smoke"
  },
  {
    "place": "Meccan",
    "id": 45,
    "arabic": "سُورَةُ الجَاثِيَةِ",
    "name": "Al-Jaathiya",
    "aya": 37,
    "english": "Crouching"
  },
  {
    "place": "Meccan",
    "id": 46,
    "arabic": "سُورَةُ الأَحۡقَافِ",
    "name": "Al-Ahqaf",
    "aya": 35,
    "english": "The Dunes"
  },
  {
    "place": "Medinan",
    "id": 47,
    "arabic": "سُورَةُ مُحَمَّدٍ",
    "name": "Muhammad",
    "aya": 38,
    "english": "Muhammad"
  },
  {
    "place": "Medinan",
    "id": 48,
    "arabic": "سُورَةُ الفَتۡحِ",
    "name": "Al-Fath",
    "aya": 29,
    "english": "The Victory"
  },
  {
    "place": "Medinan",
    "id": 49,
    "arabic": "سُورَةُ الحُجُرَاتِ",
    "name": "Al-Hujuraat",
    "aya": 18,
    "english": "The Inner Apartments"
  },
  {
    "place": "Meccan",
    "id": 50,
    "arabic": "سُورَةُ قٓ",
    "name": "Qaaf",
    "aya": 45,
    "english": "The letter Qaaf"
  },
  {
    "place": "Meccan",
    "id": 51,
    "arabic": "سُورَةُ الذَّارِيَاتِ",
    "name": "Adh-Dhaariyat",
    "aya": 60,
    "english": "The Winnowing Winds"
  },
  {
    "place": "Meccan",
    "id": 52,
    "arabic": "سُورَةُ الطُّورِ",
    "name": "At-Tur",
    "aya": 49,
    "english": "The Mount"
  },
  {
    "place": "Meccan",
    "id": 53,
    "arabic": "سُورَةُ النَّجۡمِ",
    "name": "An-Najm",
    "aya": 62,
    "english": "The Star"
  },
  {
    "place": "Meccan",
    "id": 54,
    "arabic": "سُورَةُ القَمَرِ",
    "name": "Al-Qamar",
    "aya": 55,
    "english": "The Moon"
  },
  {
    "place": "Medinan",
    "id": 55,
    "arabic": "سُورَةُ الرَّحۡمَٰن",
    "name": "Ar-Rahmaan",
    "aya": 78,
    "english": "The Beneficent"
  },
  {
    "place": "Meccan",
    "id": 56,
    "arabic": "سُورَةُ الوَاقِعَةِ",
    "name": "Al-Waaqia",
    "aya": 96,
    "english": "The Inevitable"
  },
  {
    "place": "Medinan",
    "id": 57,
    "arabic": "سُورَةُ الحَدِيدِ",
    "name": "Al-Hadid",
    "aya": 29,
    "english": "The Iron"
  },
  {
    "place": "Medinan",
    "id": 58,
    "arabic": "سُورَةُ المُجَادلَةِ",
    "name": "Al-Mujaadila",
    "aya": 22,
    "english": "The Pleading Woman"
  },
  {
    "place": "Medinan",
    "id": 59,
    "arabic": "سُورَةُ الحَشۡرِ",
    "name": "Al-Hashr",
    "aya": 24,
    "english": "The Exile"
  },
  {
    "place": "Medinan",
    "id": 60,
    "arabic": "سُورَةُ المُمۡتَحنَةِ",
    "name": "Al-Mumtahana",
    "aya": 13,
    "english": "She that is to be examined"
  },
  {
    "place": "Medinan",
    "id": 61,
    "arabic": "سُورَةُ الصَّفِّ",
    "name": "As-Saff",
    "aya": 14,
    "english": "The Ranks"
  },
  {
    "place": "Medinan",
    "id": 62,
    "arabic": "سُورَةُ الجُمُعَةِ",
    "name": "Al-Jumu'a",
    "aya": 11,
    "english": "Friday"
  },
  {
    "place": "Medinan",
    "id": 63,
    "arabic": "سُورَةُ المُنَافِقُونَ",
    "name": "Al-Munaafiqoon",
    "aya": 11,
    "english": "The Hypocrites"
  },
  {
    "place": "Medinan",
    "id": 64,
    "arabic": "سُورَةُ التَّغَابُنِ",
    "name": "At-Taghaabun",
    "aya": 18,
    "english": "Mutual Disillusion"
  },
  {
    "place": "Medinan",
    "id": 65,
    "arabic": "سُورَةُ الطَّلَاقِ",
    "name": "At-Talaaq",
    "aya": 12,
    "english": "Divorce"
  },
  {
    "place": "Medinan",
    "id": 66,
    "arabic": "سُورَةُ التَّحۡرِيمِ",
    "name": "At-Tahrim",
    "aya": 12,
    "english": "The Prohibition"
  },
  {
    "place": "Meccan",
    "id": 67,
    "arabic": "سُورَةُ المُلۡكِ",
    "name": "Al-Mulk",
    "aya": 30,
    "english": "The Sovereignty"
  },
  {
    "place": "Meccan",
    "id": 68,
    "arabic": "سُورَةُ القَلَمِ",
    "name": "Al-Qalam",
    "aya": 52,
    "english": "The Pen"
  },
  {
    "place": "Meccan",
    "id": 69,
    "arabic": "سُورَةُ الحَاقَّةِ",
    "name": "Al-Haaqqa",
    "aya": 52,
    "english": "The Reality"
  },
  {
    "place": "Meccan",
    "id": 70,
    "arabic": "سُورَةُ المَعَارِجِ",
    "name": "Al-Ma'aarij",
    "aya": 44,
    "english": "The Ascending Stairways"
  },
  {
    "place": "Meccan",
    "id": 71,
    "arabic": "سُورَةُ نُوحٍ",
    "name": "Nooh",
    "aya": 28,
    "english": "Noah"
  },
  {
    "place": "Meccan",
    "id": 72,
    "arabic": "سُورَةُ الجِنِّ",
    "name": "Al-Jinn",
    "aya": 28,
    "english": "The Jinn"
  },
  {
    "place": "Meccan",
    "id": 73,
    "arabic": "سُورَةُ المُزَّمِّلِ",
    "name": "Al-Muzzammil",
    "aya": 20,
    "english": "The Enshrouded One"
  },
  {
    "place": "Meccan",
    "id": 74,
    "arabic": "سُورَةُ المُدَّثِّرِ",
    "name": "Al-Muddaththir",
    "aya": 56,
    "english": "The Cloaked One"
  },
  {
    "place": "Meccan",
    "id": 75,
    "arabic": "سُورَةُ القِيَامَةِ",
    "name": "Al-Qiyaama",
    "aya": 40,
    "english": "The Resurrection"
  },
  {
    "place": "Medinan",
    "id": 76,
    "arabic": "سُورَةُ الإِنسَانِ",
    "name": "Al-Insaan",
    "aya": 31,
    "english": "Man"
  },
  {
    "place": "Meccan",
    "id": 77,
    "arabic": "سُورَةُ المُرۡسَلَاتِ",
    "name": "Al-Mursalaat",
    "aya": 50,
    "english": "The Emissaries"
  },
  {
    "place": "Meccan",
    "id": 78,
    "arabic": "سُورَةُ النَّبَإِ",
    "name": "An-Naba",
    "aya": 40,
    "english": "The Announcement"
  },
  {
    "place": "Meccan",
    "id": 79,
    "arabic": "سُورَةُ النَّازِعَاتِ",
    "name": "An-Naazi'aat",
    "aya": 46,
    "english": "Those who drag forth"
  },
  {
    "place": "Meccan",
    "id": 80,
    "arabic": "سُورَةُ عَبَسَ",
    "name": "Abasa",
    "aya": 42,
    "english": "He frowned"
  },
  {
    "place": "Meccan",
    "id": 81,
    "arabic": "سُورَةُ التَّكۡوِيرِ",
    "name": "At-Takwir",
    "aya": 29,
    "english": "The Overthrowing"
  },
  {
    "place": "Meccan",
    "id": 82,
    "arabic": "سُورَةُ الانفِطَارِ",
    "name": "Al-Infitaar",
    "aya": 19,
    "english": "The Cleaving"
  },
  {
    "place": "Meccan",
    "id": 83,
    "arabic": "سُورَةُ المُطَفِّفِينَ",
    "name": "Al-Mutaffifin",
    "aya": 36,
    "english": "Defrauding"
  },
  {
    "place": "Meccan",
    "id": 84,
    "arabic": "سُورَةُ الانشِقَاقِ",
    "name": "Al-Inshiqaaq",
    "aya": 25,
    "english": "The Splitting Open"
  },
  {
    "place": "Meccan",
    "id": 85,
    "arabic": "سُورَةُ البُرُوجِ",
    "name": "Al-Burooj",
    "aya": 22,
    "english": "The Constellations"
  },
  {
    "place": "Meccan",
    "id": 86,
    "arabic": "سُورَةُ الطَّارِقِ",
    "name": "At-Taariq",
    "aya": 17,
    "english": "The Morning Star"
  },
  {
    "place": "Meccan",
    "id": 87,
    "arabic": "سُورَةُ الأَعۡلَىٰ",
    "name": "Al-A'laa",
    "aya": 19,
    "english": "The Most High"
  },
  {
    "place": "Meccan",
    "id": 88,
    "arabic": "سُورَةُ الغَاشِيَةِ",
    "name": "Al-Ghaashiya",
    "aya": 26,
    "english": "The Overwhelming"
  },
  {
    "place": "Meccan",
    "id": 89,
    "arabic": "سُورَةُ الفَجۡرِ",
    "name": "Al-Fajr",
    "aya": 30,
    "english": "The Dawn"
  },
  {
    "place": "Meccan",
    "id": 90,
    "arabic": "سُورَةُ البَلَدِ",
    "name": "Al-Balad",
    "aya": 20,
    "english": "The City"
  },
  {
    "place": "Meccan",
    "id": 91,
    "arabic": "سُورَةُ الشَّمۡسِ",
    "name": "Ash-Shams",
    "aya": 15,
    "english": "The Sun"
  },
  {
    "place": "Meccan",
    "id": 92,
    "arabic": "سُورَةُ اللَّيۡلِ",
    "name": "Al-Lail",
    "aya": 21,
    "english": "The Night"
  },
  {
    "place": "Meccan",
    "id": 93,
    "arabic": "سُورَةُ الضُّحَىٰ",
    "name": "Ad-Dhuhaa",
    "aya": 11,
    "english": "The Morning Hours"
  },
  {
    "place": "Meccan",
    "id": 94,
    "arabic": "سُورَةُ الشَّرۡحِ",
    "name": "Ash-Sharh",
    "aya": 8,
    "english": "The Consolation"
  },
  {
    "place": "Meccan",
    "id": 95,
    "arabic": "سُورَةُ التِّينِ",
    "name": "At-Tin",
    "aya": 8,
    "english": "The Fig"
  },
  {
    "place": "Meccan",
    "id": 96,
    "arabic": "سُورَةُ العَلَقِ",
    "name": "Al-Alaq",
    "aya": 19,
    "english": "The Clot"
  },
  {
    "place": "Meccan",
    "id": 97,
    "arabic": "سُورَةُ القَدۡرِ",
    "name": "Al-Qadr",
    "aya": 5,
    "english": "The Power, Fate"
  },
  {
    "place": "Medinan",
    "id": 98,
    "arabic": "سُورَةُ البَيِّنَةِ",
    "name": "Al-Bayyina",
    "aya": 8,
    "english": "The Evidence"
  },
  {
    "place": "Medinan",
    "id": 99,
    "arabic": "سُورَةُ الزَّلۡزَلَةِ",
    "name": "Az-Zalzala",
    "aya": 8,
    "english": "The Earthquake"
  },
  {
    "place": "Meccan",
    "id": 100,
    "arabic": "سُورَةُ العَادِيَاتِ",
    "name": "Al-Aadiyaat",
    "aya": 11,
    "english": "The Chargers"
  },
  {
    "place": "Meccan",
    "id": 101,
    "arabic": "سُورَةُ القَارِعَةِ",
    "name": "Al-Qaari'a",
    "aya": 11,
    "english": "The Calamity"
  },
  {
    "place": "Meccan",
    "id": 102,
    "arabic": "سُورَةُ التَّكَاثُرِ",
    "name": "At-Takaathur",
    "aya": 8,
    "english": "Competition"
  },
  {
    "place": "Meccan",
    "id": 103,
    "arabic": "سُورَةُ العَصۡرِ",
    "name": "Al-Asr",
    "aya": 3,
    "english": "The Declining Day, Epoch"
  },
  {
    "place": "Meccan",
    "id": 104,
    "arabic": "سُورَةُ الهُمَزَةِ",
    "name": "Al-Humaza",
    "aya": 9,
    "english": "The Traducer"
  },
  {
    "place": "Meccan",
    "id": 105,
    "arabic": "سُورَةُ الفِيلِ",
    "name": "Al-Fil",
    "aya": 5,
    "english": "The Elephant"
  },
  {
    "place": "Meccan",
    "id": 106,
    "arabic": "سُورَةُ قُرَيۡشٍ",
    "name": "Quraish",
    "aya": 4,
    "english": "Quraysh"
  },
  {
    "place": "Meccan",
    "id": 107,
    "arabic": "سُورَةُ المَاعُونِ",
    "name": "Al-Maa'un",
    "aya": 7,
    "english": "Almsgiving"
  },
  {
    "place": "Meccan",
    "id": 108,
    "arabic": "سُورَةُ الكَوۡثَرِ",
    "name": "Al-Kawthar",
    "aya": 3,
    "english": "Abundance"
  },
  {
    "place": "Meccan",
    "id": 109,
    "arabic": "سُورَةُ الكَافِرُونَ",
    "name": "Al-Kaafiroon",
    "aya": 6,
    "english": "The Disbelievers"
  },
  {
    "place": "Medinan",
    "id": 110,
    "arabic": "سُورَةُ النَّصۡرِ",
    "name": "An-Nasr",
    "aya": 3,
    "english": "Divine Support"
  },
  {
    "place": "Meccan",
    "id": 111,
    "arabic": "سُورَةُ المَسَدِ",
    "name": "Al-Masad",
    "aya": 5,
    "english": "The Palm Fibre"
  },
  {
    "place": "Meccan",
    "id": 112,
    "arabic": "سُورَةُ الإِخۡلَاصِ",
    "name": "Al-Ikhlaas",
    "aya": 4,
    "english": "Sincerity"
  },
  {
    "place": "Meccan",
    "id": 113,
    "arabic": "سُورَةُ الفَلَقِ",
    "name": "Al-Falaq",
    "aya": 5,
    "english": "The Dawn"
  },
  {
    "place": "Meccan",
    "id": 114,
    "arabic": "سُورَةُ النَّاسِ",
    "name": "An-Naas",
    "aya": 6,
    "english": "Mankind"
  }
];

List<Map<String, dynamic>> _juz = [
  {
    "id": 1,
    "surahs": [1, 2],
    "verses": {
      1: [1, 7],
      2: [1, 141]
    }
  },
  {
    "id": 2,
    "surahs": [2],
    "verses": {
      2: [142, 252]
    }
  },
  {
    "id": 3,
    "surahs": [2, 3],
    "verses": {
      2: [253, 286],
      3: [1, 92]
    }
  },
  {
    "id": 4,
    "surahs": [3, 4],
    "verses": {
      3: [93, 200],
      4: [1, 23]
    }
  },
  {
    "id": 5,
    "surahs": [4],
    "verses": {
      4: [24, 147]
    }
  },
  {
    "id": 6,
    "surahs": [4, 5],
    "verses": {
      4: [148, 176],
      5: [1, 81]
    }
  },
  {
    "id": 7,
    "surahs": [5, 6],
    "verses": {
      5: [82, 120],
      6: [1, 110]
    }
  },
  {
    "id": 8,
    "surahs": [6, 7],
    "verses": {
      6: [111, 165],
      7: [1, 87]
    }
  },
  {
    "id": 9,
    "surahs": [7, 8],
    "verses": {
      7: [88, 206],
      8: [1, 40]
    }
  },
  {
    "id": 10,
    "surahs": [8, 9],
    "verses": {
      8: [41, 75],
      9: [1, 92]
    }
  },
  {
    "id": 11,
    "surahs": [9, 10, 11],
    "verses": {
      9: [92, 129],
      10: [1, 109],
      11: [1, 5]
    }
  },
  {
    "id": 12,
    "surahs": [11, 12],
    "verses": {
      11: [6, 123],
      12: [1, 52]
    }
  },
  {
    "id": 13,
    "surahs": [12, 13, 14],
    "verses": {
      12: [53, 111],
      13: [1, 43],
      14: [1, 52]
    }
  },
  {
    "id": 14,
    "surahs": [15, 16],
    "verses": {
      15: [1, 99],
      16: [1, 128]
    }
  },
  {
    "id": 15,
    "surahs": [17, 18],
    "verses": {
      17: [1, 111],
      18: [1, 74]
    }
  },
  {
    "id": 16,
    "surahs": [18, 19, 20],
    "verses": {
      18: [75, 110],
      19: [1, 98],
      20: [1, 135]
    }
  },
  {
    "id": 17,
    "surahs": [21, 22],
    "verses": {
      21: [1, 112],
      22: [1, 78]
    }
  },
  {
    "id": 18,
    "surahs": [23, 24, 25],
    "verses": {
      23: [1, 118],
      24: [1, 64],
      25: [1, 20]
    }
  },
  {
    "id": 19,
    "surahs": [25, 26, 27],
    "verses": {
      25: [21, 77],
      26: [1, 227],
      27: [1, 55]
    }
  },
  {
    "id": 20,
    "surahs": [27, 28, 29],
    "verses": {
      27: [56, 93],
      28: [1, 88],
      29: [1, 45]
    }
  },
  {
    "id": 21,
    "surahs": [29, 30, 31, 32, 33],
    "verses": {
      29: [46, 69],
      30: [1, 60],
      31: [1, 34],
      32: [1, 30],
      33: [1, 30]
    }
  },
  {
    "id": 22,
    "surahs": [33, 34, 35, 36],
    "verses": {
      33: [31, 73],
      34: [1, 54],
      35: [1, 45],
      36: [1, 27]
    }
  },
  {
    "id": 23,
    "surahs": [36, 37, 38, 39],
    "verses": {
      36: [28, 83],
      37: [1, 182],
      38: [1, 88],
      39: [1, 31]
    }
  },
  {
    "id": 24,
    "surahs": [39, 40, 41],
    "verses": {
      39: [32, 75],
      40: [1, 85],
      41: [1, 46]
    }
  },
  {
    "id": 25,
    "surahs": [41, 42, 43, 44, 45],
    "verses": {
      41: [47, 54],
      42: [1, 53],
      43: [1, 89],
      44: [1, 59],
      45: [1, 37]
    }
  },
  {
    "id": 26,
    "surahs": [46, 47, 48, 49, 50, 51],
    "verses": {
      46: [1, 35],
      47: [1, 38],
      48: [1, 29],
      49: [1, 18],
      50: [1, 45],
      51: [1, 30]
    }
  },
  {
    "id": 27,
    "surahs": [51, 52, 53, 54, 55, 56, 57],
    "verses": {
      51: [31, 60],
      52: [1, 49],
      53: [1, 62],
      54: [1, 55],
      55: [1, 78],
      56: [1, 96],
      57: [1, 29]
    }
  },
  {
    "id": 28,
    "surahs": [58, 59, 60, 61, 62, 63, 64, 65, 66],
    "verses": {
      58: [1, 22],
      59: [1, 24],
      60: [1, 13],
      61: [1, 14],
      62: [1, 11],
      63: [1, 11],
      64: [1, 18],
      65: [1, 12],
      66: [1, 12]
    }
  },
  {
    "id": 29,
    "surahs": [67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77],
    "verses": {
      67: [1, 30],
      68: [1, 52],
      69: [1, 52],
      70: [1, 44],
      71: [1, 28],
      72: [1, 28],
      73: [1, 20],
      74: [1, 56],
      75: [1, 40],
      76: [1, 31],
      77: [1, 50]
    }
  },
  {
    "id": 30,
    "surahs": [
      78,
      79,
      80,
      81,
      82,
      83,
      84,
      85,
      86,
      87,
      88,
      89,
      90,
      91,
      92,
      93,
      94,
      95,
      96,
      97,
      98,
      99,
      100,
      101,
      102,
      103,
      104,
      105,
      106,
      107,
      108,
      109,
      110,
      111,
      112,
      113,
      114
    ],
    "verses": {
      78: [1, 40],
      79: [1, 46],
      80: [1, 42],
      81: [1, 29],
      82: [1, 19],
      83: [1, 36],
      84: [1, 25],
      85: [1, 22],
      86: [1, 17],
      87: [1, 19],
      88: [1, 26],
      89: [1, 30],
      90: [1, 20],
      91: [1, 15],
      92: [1, 21],
      93: [1, 11],
      94: [1, 8],
      95: [1, 8],
      96: [1, 19],
      97: [1, 5],
      98: [1, 8],
      99: [1, 8],
      100: [1, 11],
      101: [1, 11],
      102: [1, 8],
      103: [1, 3],
      104: [1, 9],
      105: [1, 5],
      106: [1, 4],
      107: [1, 7],
      108: [1, 3],
      109: [1, 6],
      110: [1, 3],
      111: [1, 5],
      112: [1, 4],
      113: [1, 5],
      114: [1, 6]
    }
  }
];

///Takes [surahNumber] & [verseNumber] and returns Juz number
int getJuzNumber(int surahNumber, int verseNumber) {
  for (var juz in _juz) {
    if (juz["verses"].keys.contains(surahNumber)) {
      if (verseNumber >= juz["verses"][surahNumber][0] &&
          verseNumber <= juz["verses"][surahNumber][1]) {
        return int.parse(juz["id"].toString());
      }
    }
  }
  return -1;
}

///Takes [juzNumber] and returns a map which contains keys as surah number and value as a list containing starting and ending verse numbers.
///
///Example:
///
///```dart
///getSurahAndVersesListFromJuz(1);
///```
///
/// Returns Map of Juz 1:
///
///```dart
/// Map<int, List<int>> surahAndVerses = {
///        1: [1, 7],
///        2: [1, 141] //2 is surahNumber, 1 is starting verse and 141 is ending verse number
/// };
///
/// print(surahAndVerseList[1]); //[1, 7] => starting verse : 1, ending verse: 7
///```
Map<int, List<int>> getSurahAndVersesFromJuz(int juzNumber) {
  return _juz[juzNumber - 1]["verses"];
}

///Takes [surahNumber] and returns the Surah name
String getSurahName(int surahNumber) {
  if (surahNumber > 114 || surahNumber <= 0) {
    throw "No Surah found with given surahNumber";
  }
  return _surah[surahNumber - 1]['name'].toString();
}

///Takes [surahNumber] and returns the Surah Arabic Name
String getSurahNameArabic(int surahNumber) {
  if (surahNumber > 114 || surahNumber <= 0) {
    throw "No Surah found with given surahNumber";
  }
  return _surah[surahNumber - 1]['arabic'].toString();
}

///Takes [surahNumber] and returns the Surah Arabic Name and English Name
String getSurahNameArabicAndEnglish(int surahNumber) {
  if (surahNumber > 114 || surahNumber <= 0) {
    throw "No Surah found with given surahNumber";
  }
  return _surah[surahNumber - 1]['name'].toString() +
      '/' +
      _surah[surahNumber - 1]['arabic'].toString();
}

///Takes [surahNumber] returns the Surah name in English
String getSurahNameEnglish(int surahNumber) {
  if (surahNumber > 114 || surahNumber <= 0) {
    throw "No Surah found with given surahNumber";
  }
  return _surah[surahNumber - 1]['english'].toString();
}

///Takes [surahNumber] and returns the place of revelation (Makkah / Madinah) of the surah
String getPlaceOfRevelation(int surahNumber) {
  if (surahNumber > 114 || surahNumber <= 0) {
    throw "No Surah found with given surahNumber";
  }
  return _surah[surahNumber - 1]['place'].toString();
}

///Takes [surahNumber] and returns the count of total Verses in the Surah
int getVerseCount(int surahNumber) {
  if (surahNumber > 114 || surahNumber <= 0) {
    throw "No verse found with given surahNumber";
  }
  return int.parse(_surah[surahNumber - 1]['aya'].toString());
}

///Takes [surahNumber], [verseNumber] & [verseEndSymbol] (optional) and returns the Verse in Arabic
String getVerse(int surahNumber, int verseNumber,
    {bool verseEndSymbol = false}) {
  String verse = "";
  for (var i in _quranText) {
    if (i['surah_number'] == surahNumber && i['verse_number'] == verseNumber) {
      verse = i['content_arabic'].toString();
      break;
    }
  }

  if (verse == "") {
    throw "No verse found with given surahNumber and verseNumber.\n\n";
  }

  return verse + (verseEndSymbol ? getVerseEndSymbol(verseNumber) : "");
}

String getVerseByTranslation(int surahNumber, int verseNumber,
    {Translation translation = Translation.ENGLISH}) {
  var translationIdentifier = "content_english";
  switch (translation) {
    case Translation.BENGALI:
      translationIdentifier = 'content_bengali';
      break;
    case Translation.ENGLISH:
      translationIdentifier = 'content_english';
      break;
    case Translation.HINDI:
      translationIdentifier = 'content_hindi';
      break;
  }
  String verse = "";
  for (var i in _quranText) {
    if (i['surah_number'] == surahNumber && i['verse_number'] == verseNumber) {
      verse = i[translationIdentifier].toString();
      break;
    }
  }
  if (verse == "") {
    throw "No verse found with given surahNumber and verseNumber.\n\n";
  }

  return verse;
}

///Reurns total juz count
int getTotalJuzCount() {
  return 30;
}

///Returns total surah count
int getTotalSurahCount() {
  return 114;
}

///Returns total verse count
int getTotalVerseCount() {
  return 6236;
}

///Returns 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ'
String getBasmala() {
  return "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ";
}

///Takes [juzNumber] and returns Juz URL (from Quran.com)
String getJuzURL(int juzNumber) {
  return "https://quran.com/juz/$juzNumber";
}

///Takes [surahNumber] and returns Surah URL (from Quran.com)
String getSurahURL(int surahNumber) {
  return "https://quran.com/$surahNumber";
}

///Takes [surahNumber] & [verseNumber] and returns Verse URL (from Quran.com)
String getVerseURL(int surahNumber, int verseNumber) {
  return "https://quran.com/$surahNumber/$verseNumber";
}

///Takes [verseNumber] and returns '۝' symbol with verse number
String getVerseEndSymbol1(int verseNumber) {
  String arabicNumeric = " ";

  for (int i = verseNumber.toString().length - 1; i >= 0; i--) {
    String digit = verseNumber.toString().split("")[i];
    if (digit == "0") {
      arabicNumeric += "٠";
    } else if (digit == "1") {
      arabicNumeric += "۱";
    } else if (digit == "2") {
      arabicNumeric += "۲";
    } else if (digit == "3") {
      arabicNumeric += "۳";
    } else if (digit == "4") {
      arabicNumeric += "۴";
    } else if (digit == "5") {
      arabicNumeric += "۵";
    } else if (digit == "6") {
      arabicNumeric += "۶";
    } else if (digit == "7") {
      arabicNumeric += "۷";
    } else if (digit == "8") {
      arabicNumeric += "۸";
    } else if (digit == "9") {
      arabicNumeric += "۹";
    }
  }
 arabicNumeric += "\u06dd";
 return arabicNumeric;
 //  return '\u06dd$arabicNumeric';
}



///Takes [verseNumber], [arabicNumeral] (optional) and returns '۝' symbol with verse number
String getVerseEndSymbol(int verseNumber) {
  var arabicNumeric = '';
  var digits = verseNumber.toString().split("").toList();
  const Map arabicNumbers = {
    "0": "٠",
    "1": "۱",
    "2": "۲",
    "3": "۳",
    "4": "۴",
    "5": "٥",
    "6": "۶",
    "7": "۷",
    "8": "۸",
    "9": "۹"
  };

  for (var e in digits) {
    arabicNumeric += arabicNumbers[e];
  }
  return '\u06dd$arabicNumeric';
}


List<Map<String, dynamic>> getAllVerse(int surahNumber) {
  List<Map<String, dynamic>>? verse = [];
  for (var i in _quranText) {
    if (i['surah_number'] == surahNumber) {
      verse.add(i);
    }
  }
  if (verse == null) {
    throw "No verses found with given surahNumber.\n\n";
  }
  return verse;
}

List<Map<String, dynamic>> getAllSurah() {
  List<Map<String, dynamic>>? surah = [];
  for (var i in _surah) {
    surah.add(i);
  }
  return surah;
}

List<String> getAllAlphabets() {
  return arbaic_alphabets;
}

String getAlphabetNameFromPosition(int position) {
  return arbaic_alphabets_name[position];
}

String convertToArabicNumber(int number) {
  String arabicNumeric = " ";
  for (int i = number.toString().length - 1; i >= 0; i--) {
    String digit = number.toString().split("")[i];
    if (digit == "0") {
      arabicNumeric += "٠";
    } else if (digit == "1") {
      arabicNumeric += "۱";
    } else if (digit == "2") {
      arabicNumeric += "۲";
    } else if (digit == "3") {
      arabicNumeric += "۳";
    } else if (digit == "4") {
      arabicNumeric += "۴";
    } else if (digit == "5") {
      arabicNumeric += "۵";
    } else if (digit == "6") {
      arabicNumeric += "۶";
    } else if (digit == "7") {
      arabicNumeric += "۷";
    } else if (digit == "8") {
      arabicNumeric += "۸";
    } else if (digit == "9") {
      arabicNumeric += "۹";
    }
  }
  return arabicNumeric;
}
