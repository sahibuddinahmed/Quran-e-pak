import 'package:flutter/cupertino.dart';

class MetaColors {

  static Color  defaultColor = Color(0xFF000000);

  //hamza-wasl, silent, laam-shamsiyah
  static  Color hsl = defaultColor;

  //Normal Prolongation: 2 Vowels
  static Color madda_normal = Color(0xFF537FFF);

  //Permissible Prolongation: 2, 4, 6 Vowels
  static Color madda_permissible = Color(0xFF4050FF);

  //Necessary Prolongation: 6 Vowels
  static Color madda_necesssary = Color(0xFF000EBC);

  //Obligatory Prolongation: 4-5 Vowels
  static Color madda_obligatory = Color(0xFF2144C1);

  //Qalaqah
  static Color qalaqah = Color(0xFFDD0008);

  //Ikhafa' Shafawi - With Meem
  static Color ikhafa_shafawi = Color(0xFFD500B7);

  //Ikhafa'
  static Color ikhafa = Color(0xFF9400A8);

  //Idgham Shafawi - With Meem
  static Color idgham_shafawi = Color(0xFF58B800);

  //Iqlab
  static Color iqlab = Color(0xFF26BFFD);

  //Idgham - With Ghunnah
  static Color idgham_with_ghunnah = Color(0xFF169777);

  //Idgham - Without Ghunnah
  static Color idgham_without_ghunnah = Color(0xFF169200);

  //Idgham - Mutajanisayn
  static Color idgham_mutajanisayn = Color(0xFFA1A1A1);
  //Idgham - Mutaqaribayn
  static Color idgham_mutaqaribayn = Color(0xFFA1A1A1);

  //Ghunnah: 2 Vowels
  static Color ghunnah = Color(0xFFFF7E1E);

  defaultState([Color dcolor = const Color(0xFF000000)]) {

    defaultColor = dcolor;
    hsl = dcolor;
    madda_normal = dcolor;
    madda_permissible = dcolor;
    madda_necesssary = dcolor;
    madda_obligatory = dcolor;
    qalaqah = dcolor;
    ikhafa_shafawi = dcolor;
    ikhafa = dcolor;
    idgham_shafawi = dcolor;
    iqlab = dcolor;
    idgham_with_ghunnah = dcolor;
    idgham_without_ghunnah = dcolor;
    idgham_mutajanisayn = dcolor;
    idgham_mutaqaribayn = dcolor;
    ghunnah = dcolor;
  }
  static mudud()
  {
    madda_normal = Color(0xFF537FFF);
    madda_permissible = Color(0xFF4050FF);
    madda_necesssary = Color(0xFF000EBC);
    madda_obligatory = Color(0xFF2144C1);
    ghunnah = Color(0xFFFF7E1E);
  }
  static noon()
  {
    ikhafa = Color(0xFF9400A8);
    idgham_with_ghunnah = Color(0xFF169777);
    idgham_without_ghunnah = Color(0xFF169200);
    iqlab = Color(0xFF26BFFD);
  }
  static mimm()
  {
    ikhafa_shafawi = Color(0xFFD500B7);
    idgham_shafawi = Color(0xFF58B800);
  }
  static qalaqahf()
  {
    qalaqah = Color(0xFFDD0008);
  }
  static idgham()
  {
    idgham_mutajanisayn = Color(0xFFA1A1A1);
    idgham_mutaqaribayn = Color(0xFFA1A1A1);
  }
}
