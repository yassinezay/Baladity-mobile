import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? arText = '',
  }) =>
      [enText, frText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SignIn_LogIn
  {
    'y2j9iil3': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
      'fr': 'Créer un compte',
    },
    'p3behy9k': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
      'fr': 'Créer un compte',
    },
    'pvwi5edf': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': 'لنبدأ بملء النموذج أدناه.',
      'fr': 'Commençons par remplir le formulaire ci-dessous.',
    },
    'm9bw9mmo': {
      'en': 'Username',
      'ar': 'اسمك',
      'fr': 'Nom d\'utilisateur',
    },
    '1ixmmyl0': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'kn27bx2t': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
      'fr': 'Numéro de téléphone',
    },
    'x9b0zzuf': {
      'en': 'Addresse',
      'ar': 'العنوان',
      'fr': 'Adresse',
    },
    '7kw2lxc3': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    '66c02917': {
      'en': 'Get Started',
      'ar': 'البدء',
      'fr': 'Commencer',
    },
    '57xvsyy7': {
      'en': 'Continue with Google',
      'ar': 'البدء مع جوجل',
      'fr': 'Continuer avec Google',
    },
    'cr36ortv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '37zc62j9': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'tnmdcwef': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'tuobg5d4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'duxokq0y': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '9jwqg8h7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'hqgr44b2': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '5ab2qviq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'syh77zfs': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'wrvmz14d': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'c1w2aa6q': {
      'en': 'Log In',
      'ar': 'تسجيل الدخول',
      'fr': 'Se connecter',
    },
    'n9rat463': {
      'en': 'Welcome Back',
      'ar': 'مرحبًا بعودتك',
      'fr': 'Content de te revoir',
    },
    '88nps2k4': {
      'en': 'Fill out the information below in order to access your account.',
      'ar': 'قم بملء المعلومات أدناه من أجل الوصول إلى حسابك.',
      'fr':
          'Remplissez les informations ci-dessous afin d\'accéder à votre compte.',
    },
    'sqnazezr': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'hoxt3vik': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    'r7dtncqe': {
      'en': 'Continue with Google',
      'ar': 'تواصل مع جوجل',
      'fr': 'Continuer avec Google',
    },
    'uffwo2dt': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
      'fr': 'Mot de passe oublié?',
    },
    '9mvagq9q': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ajoutReclamation
  {
    'esvygi8s': {
      'en': 'Subject Complaint',
      'ar': 'الموضوع',
      'fr': 'Sujet Réclamation',
    },
    '5svrgh1p': {
      'en': 'Description Complaint',
      'ar': 'الوصف',
      'fr': 'Description Réclamation',
    },
    'owljmno4': {
      'en': 'Brief description of what is happening...',
      'ar': 'وصف مختصر لما يحدث...',
      'fr': 'Brève description de ce qui se passe...',
    },
    'b092x8cn': {
      'en': 'address',
      'ar': 'عنوان',
      'fr': 'adresse',
    },
    '1bzbrjgq': {
      'en': 'Medical emergencies',
      'ar': 'حالات الطوارئ الطبية',
      'fr': 'Urgences médicales',
    },
    'orqq5q70': {
      'en': 'Fires',
      'ar': 'حرائق',
      'fr': 'Incendies',
    },
    '9shp9bwx': {
      'en': 'Gas leaks',
      'ar': 'تسرب الغاز',
      'fr': 'Fuites de gaz',
    },
    'kaw85j33': {
      'en': 'Floods',
      'ar': 'الفيضانات',
      'fr': 'Inondations',
    },
    '46pi3rxd': {
      'en': 'Critical infrastructure failures',
      'ar': 'فشل البنية التحتية الحرجة',
      'fr': 'Défaillances des infrastructures critiques',
    },
    '33nnxquk': {
      'en': 'Road repairs',
      'ar': 'إصلاحات الطرق',
      'fr': 'Réparations de voirie',
    },
    'e8hw2xxn': {
      'en': 'Waste collection',
      'ar': 'جمع النفايات',
      'fr': 'Collecte des déchets',
    },
    '90qbz7tc': {
      'en': 'Environment',
      'ar': 'بيئة',
      'fr': 'Environnement',
    },
    'phh27dpj': {
      'en': 'Landscaping',
      'ar': 'المناظر الطبيعية',
      'fr': 'Aménagement paysager',
    },
    'hsmorfzx': {
      'en': 'Housing problems',
      'ar': 'مشاكل الإسكان',
      'fr': 'Problèmes de logement',
    },
    'a7gwskp4': {
      'en': 'Municipal services',
      'ar': 'الخدمات البلدية',
      'fr': 'Services municipaux',
    },
    'iv2j9bk0': {
      'en': 'Type of complaint',
      'ar': 'نوع الشكوى',
      'fr': 'Type réclamation',
    },
    'oxy9xxy2': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    'o2czhuiz': {
      'en': 'Upload Image',
      'ar': 'تحميل الصور',
      'fr': 'Télécharger une image',
    },
    'ni3tzhyy': {
      'en': 'Send',
      'ar': 'يرسل',
      'fr': 'Envoyer',
    },
    'igal32s2': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'gbbe733f': {
      'en': 'Min 10 chracters',
      'ar': 'الحد الأدنى 10 أحرف',
      'fr': 'Minimum 10 caractères',
    },
    'oz6rg0tq': {
      'en': 'Max 20 chracters',
      'ar': 'ماكس 20 حرفا',
      'fr': 'Max 20 caractères',
    },
    '9x8hlfhk': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '91jta3j6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'mnio3lod': {
      'en': 'Min 20 chracters',
      'ar': 'الحد الأدنى 20 حرفا',
      'fr': 'Minimum 20 caractères',
    },
    '1gpnapqr': {
      'en': 'Max 30 characters',
      'ar': 'الحد الأقصى 30 حرفًا',
      'fr': '30 caractères maximum',
    },
    'l2eevgc2': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'su8gdw87': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '924hhvtv': {
      'en': 'Min 5 characters',
      'ar': 'الحد الأدنى 5 أحرف',
      'fr': 'Minimum 5 caractères',
    },
    'qecgoipw': {
      'en': 'Max 10 characters',
      'ar': 'الحد الأقصى 10 أحرف',
      'fr': '10 caractères maximum',
    },
    'a7nkgrc6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '3lildf3e': {
      'en': 'submit your complaint :',
      'ar': 'أرسل شكواك :',
      'fr': 'soumettre votre réclamation :',
    },
    '3n7c19o9': {
      'en': 'Home',
      'ar': 'استقبال',
      'fr': 'acceuil',
    },
  },
  // addEvent
  {
    '43r422li': {
      'en': 'Event name',
      'ar': 'اسم الحدث',
      'fr': 'Nom de l\'événement',
    },
    'ancuua38': {
      'en': 'Capacitity',
      'ar': 'القدرة',
      'fr': 'Capacité',
    },
    'i12ul7p0': {
      'en': 'Categorie',
      'ar': 'الفئة',
      'fr': 'Catégorie',
    },
    'e63v6l0o': {
      'en': 'Culturel',
      'ar': 'الثقافة',
      'fr': 'Culturel',
    },
    't8n74iog': {
      'en': 'Sportif',
      'ar': 'سبورتيف',
      'fr': 'Sportif',
    },
    't5wrn1jp': {
      'en': 'Social',
      'ar': 'اجتماعي',
      'fr': 'Sociale',
    },
    'wue652z6': {
      'en': 'Charity',
      'ar': 'صدقة',
      'fr': 'Charité',
    },
    '4at07pb3': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '300lrkn0': {
      'en': 'Start Date',
      'ar': 'تاريخ الظهور الأول',
      'fr': 'Date de début',
    },
    '3599hdlu': {
      'en': 'End Date',
      'ar': 'تاريخ الزعنفة',
      'fr': 'Date Fin',
    },
    'ko4z8vsa': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
      'fr': 'Soumettre',
    },
    '707n880m': {
      'en': 'Field required',
      'ar': 'حقل مطلوب',
      'fr': 'Champ obligatoire',
    },
    'mk2da2su': {
      'en': 'Min 5 characters',
      'ar': 'الحد الأدنى 5 أحرف',
      'fr': 'Minimum 5 caractères',
    },
    '2d0vxzm4': {
      'en': 'Max 10 chracters',
      'ar': 'ماكس 10 حرفا',
      'fr': 'Max 10 caractères',
    },
    'w45px8po': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'kpxhoq65': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'd7929a59': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'ef56e91v': {
      'en': 'Add Event',
      'ar': 'أضف حدثًا',
      'fr': 'Ajouter un évènement',
    },
    '0btotepf': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // listEquipement
  {
    'z6c79fa2': {
      'en': 'Equipements list',
      'ar': 'قائمة المعدات',
      'fr': 'Liste des equipements',
    },
    'rdgs6i4j': {
      'en': 'Search listings...',
      'ar': 'قوائم البحث...',
      'fr': 'Rechercher des annonces...',
    },
    'nvz30qrq': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // addEquipement
  {
    'knaaadl5': {
      'en': 'Reference',
      'ar': 'مرجع',
      'fr': 'Référence',
    },
    '9r6dts7c': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'jcdqqoo3': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'q3wmnwoy': {
      'en': 'Tops',
      'ar': 'قمم',
      'fr': 'Hauts',
    },
    'o8z2cann': {
      'en': 'Bottoms',
      'ar': 'قيعان',
      'fr': 'Bas',
    },
    'nj1a13gc': {
      'en': 'Outerwear',
      'ar': 'ملابس خارجية',
      'fr': 'Vêtements d\'extérieur',
    },
    'e4mzf79b': {
      'en': 'Jewelry',
      'ar': 'مجوهرات',
      'fr': 'Bijoux',
    },
    'b9nj73qe': {
      'en': 'Accessories',
      'ar': 'مُكَمِّلات',
      'fr': 'Accessoires',
    },
    '5o0ihni3': {
      'en': 'Hats',
      'ar': 'القبعات',
      'fr': 'Chapeaux',
    },
    'sj95f0cb': {
      'en': 'Shoes',
      'ar': 'أحذية',
      'fr': 'Chaussures',
    },
    'bn7kl5u2': {
      'en': 'Quantity',
      'ar': 'كمية',
      'fr': 'Quantité',
    },
    't1g4r774': {
      'en': 'Description...',
      'ar': 'معلومات أخرى',
      'fr': 'Description...',
    },
    'figpotz9': {
      'en': 'Add Equipement',
      'ar': 'أضف المعدات',
      'fr': 'Ajouter un équipement',
    },
    'wglplcwx': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '0ki673h8': {
      'en': 'Min 10 characters',
      'ar': 'الحد الأدنى 10 أحرف',
      'fr': 'Minimum 10 caractères',
    },
    'm217zbel': {
      'en': 'Max 15 chracters',
      'ar': 'ماكس 15 حرفا',
      'fr': 'Max 15 caractères',
    },
    '9cvs8umb': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'iv9sx6z8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'k60utcox': {
      'en': 'Min 7 chracters',
      'ar': 'الحد الأدنى 7 أحرف',
      'fr': 'Minimum 7 caractères',
    },
    'yqd7rwpe': {
      'en': 'Max 10 chracters',
      'ar': 'ماكس 10 حرفا',
      'fr': 'Max 10 caractères',
    },
    'l8239yqu': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '3gjgdddy': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'hmys2psc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '79w0xpmh': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '5u6mamwj': {
      'en': 'Min 10 chracters',
      'ar': 'الحد الأدنى 10 أحرف',
      'fr': 'Minimum 10 caractères',
    },
    '3t8j62td': {
      'en': 'Max 20 chracters',
      'ar': 'ماكس 20 حرفا',
      'fr': 'Max 20 caractères',
    },
    '4aghp79s': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'aa4fcmxb': {
      'en': 'Add an equipement',
      'ar': 'إضافة المعدات',
      'fr': 'Ajouter un équipement',
    },
    '59w6b943': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ajouterActualitee
  {
    'kapkgfm9': {
      'en': 'Titre',
      'ar': 'عنوان',
      'fr': 'Titre',
    },
    'n84ouhmx': {
      'en': 'Description',
      'ar': 'وصف',
      'fr': 'Description',
    },
    'ehrmu3f7': {
      'en': 'veuillez remplir ce champ',
      'ar': 'veuillez remplir ce البطل',
      'fr': 'veuillez remplir ce champ',
    },
    '71opw142': {
      'en': 'la longueur doit etre superieur à3',
      'ar': 'la longueur doit etre superieur à3',
      'fr': 'la longueur doit être supérieure à3',
    },
    'aer7uv21': {
      'en': 'la longueur doit etre inférieur à 15',
      'ar': 'لا لونجيور دويت آخر أقل من 15',
      'fr': 'la longueur doit être inférieure à 15',
    },
    'k0yt5juk': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '3ajqh9y2': {
      'en': 'veuillez remplir ce champ',
      'ar': 'veuillez remplir ce البطل',
      'fr': 'veuillez remplir ce champ',
    },
    'q5waxjdm': {
      'en': 'la longeur de la description doit etre supérieur à 10',
      'ar': 'طول الوصف يجب أن يكون أعلى من 10',
      'fr': 'la longueur de la description doit être supérieure à 10',
    },
    'qsf2n2gp': {
      'en': 'la longeur de la description doit etre inférieur à 20',
      'ar': 'طول الوصف يجب أن يكون أقل من 20',
      'fr': 'la longueur de la description doit être inférieure à 20',
    },
    'i772sz8p': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '28dms8wl': {
      'en': 'Ajouter',
      'ar': 'اجووتر',
      'fr': 'Ajouter',
    },
    'g49yhmii': {
      'en': 'Ajouter Une Actualité',
      'ar': 'إضافة واقعة',
      'fr': 'Ajouter une actualité',
    },
    'l3v32r0v': {
      'en': 'Cancel',
      'ar': '',
      'fr': '',
    },
    'jzye4fjj': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // AjouterPublicite
  {
    '88t0a0mn': {
      'en': 'choisir une actualité',
      'ar': 'اختر حقيقة',
      'fr': 'choisir une actualité',
    },
    '7mz2esro': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    'o1ynbw1g': {
      'en': 'Titre',
      'ar': 'عنوان',
      'fr': 'Titre',
    },
    'o6fmorlz': {
      'en': 'Description',
      'ar': 'وصف',
      'fr': 'Description',
    },
    '4r2srgjh': {
      'en': 'Localisation',
      'ar': 'الموقع',
      'fr': 'Localisation',
    },
    'kf92318h': {
      'en': 'Numéro',
      'ar': 'رقم',
      'fr': 'Numéro',
    },
    '8q68oc09': {
      'en': '3 mois :50dt',
      'ar': '3 شهر :50د',
      'fr': '3 mois :50dt',
    },
    '549lm5ju': {
      'en': '6 mois :90dt',
      'ar': '6 شهر :90د',
      'fr': '6 mois :90dt',
    },
    'zo13tgky': {
      'en': '9 mois :130dt',
      'ar': '9 أشهر :130د',
      'fr': '9 mois :130dt',
    },
    'a1wnt4an': {
      'en': 'Choisir Une offre',
      'ar': 'اختر عرضًا',
      'fr': 'Choisir une offre',
    },
    'fbygj6k7': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    'kukmnpn1': {
      'en': 'Procéder au paiement',
      'ar': 'عملية الدفع',
      'fr': 'Procéder au paiement',
    },
    'u8wrs42o': {
      'en': 'veuillez remplir ce champ',
      'ar': 'veuillez remplir ce البطل',
      'fr': 'veuillez remplir ce champ',
    },
    'r916rh5f': {
      'en': 'longueur doit etre superieur à 3',
      'ar': 'Longueur doit etre superieur à 3',
      'fr': 'la longueur doit être supérieure à 3',
    },
    'vcqqylq9': {
      'en': 'longueur doit etre inférieur à 15',
      'ar': 'الطول هو أقل من 15',
      'fr': 'la longueur doit être inférieure à 15',
    },
    'mdcxlktq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'gul5o5ip': {
      'en': 'veuillez remplir ce champ svp',
      'ar': 'veuillez remplir ce champ svp',
      'fr': 'veuillez remplir ce champ svp',
    },
    'n42hahth': {
      'en': 'la longueur de la description doit etre supérieure à 10',
      'ar': 'يجب أن يكون طول الوصف أعلى من 10',
      'fr': 'la longueur de la description doit être supérieure à 10',
    },
    's3rrjalj': {
      'en': 'la longueur de la description doit etre inférieure à 20',
      'ar': 'طول الوصف يجب أن يكون أقل من 20',
      'fr': 'la longueur de la description doit être inférieure à 20',
    },
    'h95rrrha': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'uy197dsk': {
      'en': 'veuillez remplir ce champ',
      'ar': 'veuillez remplir ce البطل',
      'fr': 'veuillez remplir ce champ',
    },
    'yjwed21e': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'c2t80dcq': {
      'en': 'veuillez remplir ce champ avec des numéro',
      'ar': 'veuillez remplir ce champ avec des numéro',
      'fr': 'veuillez remplir ce champ avec des numéros',
    },
    'oavqhm1e': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'a8ys6ika': {
      'en': 'Ajouter Une Publicité',
      'ar': 'Ajouter Un Publicité',
      'fr': 'Ajouter une publicité',
    },
    '6u32e3j6': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // detailReclamation
  {
    '4x7u27ui': {
      'en': 'Edit claim',
      'ar': 'تحرير المطالبة',
      'fr': 'Modifier la revendication',
    },
    'x0jp0hmg': {
      'en': 'Claim details',
      'ar': 'تفاصيل المطالبة :',
      'fr': 'Détail réclamation :',
    },
    '275rr0tr': {
      'en': 'Home',
      'ar': 'استقبال',
      'fr': 'Acceuil',
    },
  },
  // onBoarding
  {
    'h1k9qoax': {
      'en':
          'Discover Baladity: Your Ally for Effective and Transparent Municipal Management. Ready to get started? Follow us for a quick tour and discover everything Baladity can do for you!',
      'ar':
          'اكتشف بلديتي: حليفك لإدارة بلدية فعالة وشفافة. على استعداد للبدء؟ تابعنا في جولة سريعة واكتشف كل ما يمكن أن تقدمه لك Baladity!',
      'fr':
          'Découvrez Baladity : Votre allié pour une gestion municipale efficace et transparente. Prêt à commencer? Suivez-nous pour une visite rapide et découvrez tout ce que Baladity peut faire pour vous !',
    },
    '382c55gl': {
      'en': 'Manage Your Municipality',
      'ar': 'إدارة بلديتك',
      'fr': 'Gérez votre municipalité',
    },
    'ng2280k4': {
      'en':
          'With Baladity, municipal management becomes simple. Find out how to use Baladity to make managing your municipality easier. Ready to optimize your management? Follow us to find out more!',
      'ar':
          'مع Baladity، أصبحت إدارة البلدية بسيطة. تعرف على كيفية استخدام Baladity لتسهيل إدارة بلديتك. هل أنت مستعد لتحسين إدارتك؟ تابعونا لمعرفة المزيد!',
      'fr':
          'Avec Baladity, la gestion municipale devient simple. Découvrez comment utiliser Baladity pour faciliter la gestion de votre commune. Prêt à optimiser votre gestion ? Suivez-nous pour en savoir plus !',
    },
    '15oipm8u': {
      'en': 'Citizen engagement',
      'ar': 'مشاركة المواطنين',
      'fr': 'Engagement citoyen',
    },
    'nmgcs0c9': {
      'en':
          'With Baladity, citizens benefit from transparent access to their complaints and current news. Ready to get involved in your community? Follow us to find out more!',
      'ar':
          'مع \"بلديتي\"، يستفيد المواطنون من الوصول الشفاف إلى شكاواهم والأخبار الحالية. هل أنت مستعد للانخراط في مجتمعك؟ تابعونا لمعرفة المزيد!',
      'fr':
          'Avec Baladity, les citoyens bénéficient d\'un accès transparent à leurs réclamations et à l\'actualité. Prêt à vous impliquer dans votre communauté? Suivez-nous pour en savoir plus !',
    },
    't62r4z7o': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // forgetPwd
  {
    'zcx1fscb': {
      'en': 'Back',
      'ar': 'خلف',
      'fr': 'Dos',
    },
    'jbh7mj3e': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'ar':
          'سنرسل إليك بريدًا إلكترونيًا يحتوي على رابط لإعادة تعيين كلمة المرور الخاصة بك، يرجى إدخال البريد الإلكتروني المرتبط بحسابك أدناه.',
      'fr':
          'Nous vous enverrons un e-mail avec un lien pour réinitialiser votre mot de passe, veuillez saisir l\'e-mail associé à votre compte ci-dessous.',
    },
    '55hndgyu': {
      'en': 'Your email address...',
      'ar': 'عنوان بريدك  الإلكتروني...',
      'fr': 'Votre adresse e-mail...',
    },
    'anjwbc1i': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني...',
      'fr': 'Entrer votre Email...',
    },
    'fbd7n9zb': {
      'en': 'Send Link',
      'ar': 'أرسل الرابط',
      'fr': 'Envoyer un lien',
    },
    'jv9rwg7p': {
      'en': 'Forgot Password',
      'ar': 'هل نسيت كلمة السر',
      'fr': 'Mot de passe oublié',
    },
    '4er3b2tz': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // home
  {
    'odvwfopx': {
      'en': 'Complaints',
      'ar': 'شكاوي',
      'fr': 'Plaintes',
    },
    'musyxdlm': {
      'en': 'Task',
      'ar': 'مهمة',
      'fr': 'Tâche',
    },
    'lx6ilnu7': {
      'en': 'News',
      'ar': 'أخبار',
      'fr': 'Nouvelles',
    },
    'pi6cgbzz': {
      'en': 'Task',
      'ar': 'مهمة',
      'fr': 'Tâche',
    },
    '99qxum0s': {
      'en': 'Event',
      'ar': 'حدث',
      'fr': 'Événement',
    },
    'etkjpu1q': {
      'en': 'Equipment',
      'ar': 'معدات',
      'fr': 'Équipement',
    },
    '2t8agewv': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
      'fr': 'Profil',
    },
    'qk90kxfq': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    '7g2sbsni': {
      'en': 'Explore Now',
      'ar': 'اكتشف الآن',
      'fr': 'Explorez maintenant',
    },
    'idghuy6b': {
      'en': 'Some events',
      'ar': 'بعض الأحداث',
      'fr': 'Quelques événements',
    },
    'g7pz6pq4': {
      'en': 'View Now',
      'ar': 'عرض الآن',
      'fr': 'Voir maintenant',
    },
    'le6pfwzf': {
      'en': 'News',
      'ar': 'أخبار',
      'fr': 'Nouvelles',
    },
    'wasvpwod': {
      'en': 'Main Header',
      'ar': 'الرأس الرئيسي',
      'fr': 'En-tête principal',
    },
    'twg5mh7o': {
      'en':
          'I’ll be working on a few different proposals, let me know when you’ve got time to go over them before the weekend.',
      'ar':
          'سأعمل على بعض المقترحات المختلفة، أخبرني عندما يكون لديك الوقت لمراجعتها قبل عطلة نهاية الأسبوع.',
      'fr':
          'Je vais travailler sur quelques propositions différentes, faites-moi savoir quand vous aurez le temps de les examiner avant le week-end.',
    },
  },
  // Profile
  {
    '61aqbswj': {
      'en': 'Account',
      'ar': 'حساب',
      'fr': 'Compte',
    },
    '5ufdi7sk': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
      'fr': 'Editer le profil',
    },
    'a2ltlpi2': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'fr': 'Mot de passe',
    },
    'qxhyl5li': {
      'en': 'Settings',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'zfzcot9s': {
      'en': 'General',
      'ar': 'عام',
      'fr': 'Général',
    },
    'lt8yce26': {
      'en': 'Support',
      'ar': 'يدعم',
      'fr': 'Soutien',
    },
    'as3dpx7i': {
      'en': 'Terms of Service',
      'ar': 'شروط الخدمة',
      'fr': 'Conditions d\'utilisation',
    },
    '4o5gpkm6': {
      'en': 'Invite Friends',
      'ar': 'ادعو أصدقاء',
      'fr': 'Inviter des amis',
    },
    'q1xobkxi': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
      'fr': 'Profil',
    },
    'qc5q3hs8': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // EditProfile
  {
    '7s250wt0': {
      'en': 'Your Name',
      'ar': 'اسمك',
      'fr': 'votre nom',
    },
    'l18brdwa': {
      'en': 'PhoneNumber',
      'ar': 'رقم التليفون',
      'fr': 'Numéro de téléphone',
    },
    'ek9zn2rz': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
      'fr': 'Sauvegarder les modifications',
    },
    '2gb6ejye': {
      'en': 'Edit your Profile',
      'ar': 'عدل ملفك الشخصي',
      'fr': 'Modifier votre profil',
    },
  },
  // EditPassword
  {
    'tdyp6uor': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    'w2vkogi8': {
      'en': 'Send link',
      'ar': 'أرسل الرابط',
      'fr': 'Envoyer un lien',
    },
    '7egdci70': {
      'en': 'Reset your password',
      'ar': 'اعد ضبط كلمه السر',
      'fr': 'réinitialisez votre mot de passe',
    },
  },
  // updateEquipement
  {
    'fs92sel3': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'xkl0dihf': {
      'en': 'Reference',
      'ar': 'مرجع',
      'fr': 'Référence',
    },
    'wkait9vj': {
      'en': 'Tops',
      'ar': 'قمم',
      'fr': 'Hauts',
    },
    'netet0us': {
      'en': 'Bottoms',
      'ar': 'قيعان',
      'fr': 'Bas',
    },
    '4ge1cr48': {
      'en': 'Outerwear',
      'ar': 'ملابس خارجية',
      'fr': 'Vêtements d\'extérieur',
    },
    'ajlqr8h7': {
      'en': 'Jewelry',
      'ar': 'مجوهرات',
      'fr': 'Bijoux',
    },
    'dksn0yf0': {
      'en': 'Accessories',
      'ar': 'مُكَمِّلات',
      'fr': 'Accessoires',
    },
    'h6g7oyaq': {
      'en': 'Hats',
      'ar': 'القبعات',
      'fr': 'Chapeaux',
    },
    'tf10p9z0': {
      'en': 'Shoes',
      'ar': 'أحذية',
      'fr': 'Chaussures',
    },
    'xyotrmmc': {
      'en': 'Quantity',
      'ar': 'كمية',
      'fr': 'Quantité',
    },
    'y6vpgsmt': {
      'en': 'Description...',
      'ar': 'وصف...',
      'fr': 'Description...',
    },
    'd6ry8b7o': {
      'en': 'Save changes',
      'ar': 'حفظ التغييرات',
      'fr': 'Sauvegarder les modifications',
    },
    'od87yx69': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '5143d98x': {
      'en': 'Min 7 chracters',
      'ar': 'الحد الأدنى 7 أحرف',
      'fr': 'Minimum 7 caractères',
    },
    'asfzwu37': {
      'en': 'Max 10 chracters',
      'ar': 'ماكس 10 حرفا',
      'fr': 'Max 10 caractères',
    },
    'ltmwzh33': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'oxgfyqt9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '2os9q81x': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'yarsnxga': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'vu1ymluh': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'qtfi0xyo': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'wifi9uiq': {
      'en': 'Min 10 characters',
      'ar': 'الحد الأدنى 10 أحرف',
      'fr': 'Minimum 10 caractères',
    },
    'j0s0a4zz': {
      'en': 'Max 20 chracters',
      'ar': 'ماكس 20 حرفا',
      'fr': 'Max 20 caractères',
    },
    '06otjwqv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '9k2rnno5': {
      'en': 'Modify equipement',
      'ar': 'تعديل المعدات',
      'fr': 'Modifier l\'équipement',
    },
    'anqb168l': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ListActualite
  {
    'cqdyleje': {
      'en': 'Search listings...',
      'ar': 'قوائم البحث...',
      'fr': 'Rechercher des annonces...',
    },
    'arm5z635': {
      'en': 'List Actualite',
      'ar': 'قائمة الفعلية',
      'fr': 'Liste Actualité',
    },
    'ew1xruoy': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ListRechercheActualite
  {
    '4t3t2aa1': {
      'en': 'Search listings...',
      'ar': 'قوائم البحث...',
      'fr': 'Rechercher des annonces...',
    },
    '9k4bwora': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // maptest
  {
    '67zyro2y': {
      'en': 'Map',
      'ar': 'خريطة',
      'fr': 'Carte',
    },
    '6ehrmd8r': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // EditEmail
  {
    'im6gwfx0': {
      'en': 'Back',
      'ar': 'خلف',
      'fr': 'Dos',
    },
    'eybbodry': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'ar':
          'سنرسل إليك بريدًا إلكترونيًا يحتوي على رابط لإعادة تعيين كلمة المرور الخاصة بك، يرجى إدخال البريد الإلكتروني المرتبط بحسابك أدناه.',
      'fr':
          'Nous vous enverrons un e-mail avec un lien pour réinitialiser votre mot de passe, veuillez saisir l\'e-mail associé à votre compte ci-dessous.',
    },
    'xyznnppp': {
      'en': 'Your email address...',
      'ar': 'عنوان بريدك  الإلكتروني...',
      'fr': 'Votre adresse e-mail...',
    },
    'bvs30asq': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني...',
      'fr': 'Entrer votre Email...',
    },
    'v7alsis6': {
      'en': 'Send Link',
      'ar': 'أرسل الرابط',
      'fr': 'Envoyer un lien',
    },
    'mu0ndffs': {
      'en': 'Edit email',
      'ar': 'تحرير البريد الإلكتروني',
      'fr': 'Modifier l\'e-mail',
    },
    'r9z7oent': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // EditImage
  {
    'x6vyrd03': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
      'fr': 'Sauvegarder les modifications',
    },
    'dnyniklr': {
      'en': 'Edit your Picture',
      'ar': 'تحرير صورتك',
      'fr': 'Modifiez votre image',
    },
  },
  // SelectMuni
  {
    'pb1d2qyi': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
      'fr': 'Option 1',
    },
    'lpkljykd': {
      'en': 'Please select...',
      'ar': 'الرجاء التحديد...',
      'fr': 'Veuillez sélectionner...',
    },
    'dlv9lhq1': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    'rge8rije': {
      'en': 'Continuer',
      'ar': 'تابع',
      'fr': 'Continuer',
    },
    '2zv3sy4j': {
      'en': 'Selectioner Une municipalité',
      'ar': 'محدد بلدية',
      'fr': 'Selectioner Une municipalité',
    },
  },
  // addMobTest
  {
    'f4f7oejm': {
      'en': 'Page Title',
      'ar': 'عنوان الصفحة',
      'fr': 'Titre de la page',
    },
    'xbcj6gt6': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // Settings
  {
    '5w2eju5b': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'ar': 'اختر الإشعارات التي تريد تلقيها أدناه وسنقوم بتحديث الإعدادات.',
      'fr':
          'Choisissez ci-dessous les notifications que vous souhaitez recevoir et nous mettrons à jour les paramètres.',
    },
    '1j3sgb9w': {
      'en': 'Enable biometric',
      'ar': 'تمكين القياسات الحيوية',
      'fr': 'Activer la biométrie',
    },
    'asbx3g2o': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '20nhuqx5': {
      'en': 'Please verify',
      'ar': 'ارجوك تحقق',
      'fr': 'Veuillez vérifier',
    },
    'n1ysl81p': {
      'en': 'Dark Mode',
      'ar': 'الوضع المظلم',
      'fr': 'Mode sombre',
    },
    '97o2g9sn': {
      'en': 'Change your application theme to dark.',
      'ar': 'تغيير موضوع التطبيق الخاص بك إلى الظلام.',
      'fr': 'Changez le thème de votre application en sombre.',
    },
    'a4nqj2ub': {
      'en': 'Settings Page',
      'ar': 'صفحة الإعدادات',
      'fr': 'Page Paramètres',
    },
    'tg52gc87': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ListReclamation
  {
    'n7khirtt': {
      'en': 'List of complaints',
      'ar': 'قائمة الشكاوى',
      'fr': 'Liste des réclamations',
    },
    'znt4c9pg': {
      'en': 'Search listings...',
      'ar': 'قوائم البحث...',
      'fr': 'Rechercher des annonces...',
    },
    'kjm09p8a': {
      'en': 'Home',
      'ar': 'إستقبال',
      'fr': 'Acceuil',
    },
  },
  // editReclamation
  {
    'azrpnotx': {
      'en': 'modify your complaint :',
      'ar': 'تعديل شكواك : ',
      'fr': 'modifier votre réclamation :',
    },
    'hnvzgoyx': {
      'en': 'Subject Complaint',
      'ar': 'شكوى الموضوع',
      'fr': 'Sujet Réclamation',
    },
    'v9m3ize5': {
      'en': 'Description Réclamation',
      'ar': 'شكوى الوصف',
      'fr': 'Description Réclamation',
    },
    'r5dy1ece': {
      'en': 'Brief description of what is happening...',
      'ar': 'وصف مختصر لما يحدث...',
      'fr': 'Brève description de ce qui se passe...',
    },
    'e4j28di4': {
      'en': 'address',
      'ar': 'عنوان',
      'fr': 'adresse',
    },
    'scnd21je': {
      'en': 'Medical emergencies',
      'ar': 'حالات الطوارئ الطبية',
      'fr': 'Urgences médicales',
    },
    'ghxw4dn7': {
      'en': 'Fires',
      'ar': 'حرائق',
      'fr': 'Incendies',
    },
    '2r9xj71r': {
      'en': 'Gas leaks',
      'ar': 'تسرب الغاز',
      'fr': 'Fuites de gaz',
    },
    '8jc1jtal': {
      'en': 'Floods',
      'ar': 'الفيضانات',
      'fr': 'Inondations',
    },
    'tdj7gse4': {
      'en': 'Critical infrastructure failures',
      'ar': 'فشل البنية التحتية الحرجة',
      'fr': 'Défaillances des infrastructures critiques',
    },
    'j2ac5u66': {
      'en': 'Road repairs',
      'ar': 'إصلاحات الطرق',
      'fr': 'Réparations de voirie',
    },
    'jwu1hfuo': {
      'en': 'Waste collection',
      'ar': 'جمع النفايات',
      'fr': 'Collecte des déchets',
    },
    'wmk09del': {
      'en': 'Environment',
      'ar': 'بيئة',
      'fr': 'Environnement',
    },
    'twhh2ako': {
      'en': 'Landscaping',
      'ar': 'المناظر الطبيعية',
      'fr': 'Aménagement paysager',
    },
    'je0dw0r3': {
      'en': 'Housing problems',
      'ar': 'مشاكل الإسكان',
      'fr': 'Problèmes de logement',
    },
    'lu4cd4fl': {
      'en': 'Municipal services',
      'ar': 'الخدمات البلدية',
      'fr': 'Services municipaux',
    },
    '6pt814hk': {
      'en': 'Type of complaint',
      'ar': 'نوع الشكوى',
      'fr': 'Type réclamation',
    },
    'o3c5hk3l': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    '1850wfey': {
      'en': 'Upload Image',
      'ar': 'تحميل الصور',
      'fr': 'Télécharger une image',
    },
    'dxi82dj7': {
      'en': 'Modify',
      'ar': 'المعدل',
      'fr': 'Modifier',
    },
    '03c2osku': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '4kqgw5cf': {
      'en': 'Min 5 characters',
      'ar': 'الحد الأدنى 5 أحرف',
      'fr': 'Minimum 5 caractères',
    },
    'u3uaxcen': {
      'en': 'Max 10 characters',
      'ar': 'الحد الأقصى 10 أحرف',
      'fr': '10 caractères maximum',
    },
    'z9pm78d4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'zn85pocp': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'myyb4ol7': {
      'en': 'Min 10 characters',
      'ar': 'الحد الأدنى 10 أحرف',
      'fr': 'Minimum 10 caractères',
    },
    'xdl5kwzs': {
      'en': 'Max 20 characters',
      'ar': 'الحد الأقصى 20 حرفًا',
      'fr': '20 caractères maximum',
    },
    'x9m2f78l': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '739qbza0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'vidcdv76': {
      'en': 'Min 5 characters',
      'ar': 'الحد الأدنى 5 أحرف',
      'fr': 'Minimum 5 caractères',
    },
    'fns1s560': {
      'en': 'Max 10 characters',
      'ar': 'الحد الأقصى 10 أحرف',
      'fr': '10 caractères maximum',
    },
    '0vgcoe4l': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'nc22s9a3': {
      'en': 'Edit Claim:',
      'ar': 'استصلاح المعدل :',
      'fr': 'Modifier Réclamation :',
    },
    'vmrg4zlg': {
      'en': 'Home',
      'ar': 'إستقبال',
      'fr': 'Acceuil',
    },
  },
  // ModiferActualite
  {
    'sces448s': {
      'en': 'Titre',
      'ar': 'عنوان',
      'fr': 'Titre',
    },
    'kreav18c': {
      'en': 'Description',
      'ar': 'وصف',
      'fr': 'Description',
    },
    'u5h2zmcj': {
      'en': 'veuillez remplir ce champ',
      'ar': 'veuillez remplir ce البطل',
      'fr': 'veuillez remplir ce champ',
    },
    'og3tejjf': {
      'en': 'la longueur du titre doit etre superieur à 3',
      'ar': 'يجب أن يكون طول القالب أعلى من 3',
      'fr': 'la longueur du titre doit être supérieure à 3',
    },
    'g07bzoak': {
      'en': 'la longueur du titre doit etre inférieur à 12',
      'ar': 'طول الخزان يجب أن يكون أقل من 12',
      'fr': 'la longueur du titre doit être inférieure à 12',
    },
    '1x8u49hv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'j2wwth16': {
      'en': 'veuillez remplir ce champ',
      'ar': 'veuillez remplir ce البطل',
      'fr': 'veuillez remplir ce champ',
    },
    'citayng1': {
      'en': 'la longueur de la description doit etre inférieur à 10',
      'ar': 'طول الوصف يجب أن يكون أقل من 10',
      'fr': 'la longueur de la description doit être inférieure à 10',
    },
    '1grhmjdo': {
      'en': 'la longueur de la description doit etre supérieur à 20',
      'ar': 'يجب أن يكون طول الوصف أطول من 20',
      'fr': 'la longueur de la description doit être supérieure à 20',
    },
    '821zz5ry': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'zln0faic': {
      'en': 'Modifier',
      'ar': 'المعدل',
      'fr': 'Modificateur',
    },
    'sallwvyv': {
      'en': 'Modifier Une Actualité',
      'ar': 'تعديل حقيقة',
      'fr': 'Modifier une actualité',
    },
    '1r9k6kel': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ModifierPublicite
  {
    '6a4uvw2k': {
      'en': 'Titre',
      'ar': 'عنوان',
      'fr': 'Titre',
    },
    'ua5ztgd2': {
      'en': 'Description',
      'ar': 'وصف',
      'fr': 'Description',
    },
    '4ziervwe': {
      'en': 'Localisation',
      'ar': 'الموقع',
      'fr': 'Localisation',
    },
    '4fba0xiv': {
      'en': 'Numéro',
      'ar': 'رقم',
      'fr': 'Numéro',
    },
    'e34t9g8u': {
      'en': '3 mois :50dt',
      'ar': '3 شهر :50د',
      'fr': '3 mois :50dt',
    },
    '64qeqp2d': {
      'en': '6 mois :90dt',
      'ar': '6 شهر :90د',
      'fr': '6 mois :90dt',
    },
    '8ts7gqv7': {
      'en': '9 mois :130dt',
      'ar': '9 أشهر :130د',
      'fr': '9 mois :130dt',
    },
    'ccyb5zz9': {
      'en': 'Choisir Une offre',
      'ar': 'اختر عرضًا',
      'fr': 'Choisir une offre',
    },
    'bch1n93j': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    'v1zjq9xo': {
      'en': 'veuillez remplir ce champ',
      'ar': 'veuillez remplir ce البطل',
      'fr': 'veuillez remplir ce champ',
    },
    'aromu5qe': {
      'en': 'le titre doit etre supérieur à 3',
      'ar': 'يجب أن يكون الحجم أعلى من 3',
      'fr': 'le titre doit être supérieur à 3',
    },
    '0883io7g': {
      'en': 'le titre doit etre inférieur à 10',
      'ar': 'العيار يجب أن يكون أقل من 10',
      'fr': 'le titre doit être inférieur à 10',
    },
    'v7turo41': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '0s5pmsp3': {
      'en': 'veuillez remplir ce champ',
      'ar': 'veuillez remplir ce البطل',
      'fr': 'veuillez remplir ce champ',
    },
    '3zwgtf8m': {
      'en': 'la description doit etre supérieur à 10',
      'ar': 'الوصف يجب أن يكون أعلى من 10',
      'fr': 'la description doit être supérieure à 10',
    },
    'wezz36k0': {
      'en': 'la description doit etre inférieur à 20',
      'ar': 'الوصف يجب أن يكون أقل من 20',
      'fr': 'la description doit être inférieure à 20',
    },
    'mynq9wpc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    's5r8bsao': {
      'en': 'veuillez remplir ce champ',
      'ar': 'veuillez remplir ce البطل',
      'fr': 'veuillez remplir ce champ',
    },
    '6l9yj4bv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'bkyjdf2l': {
      'en': 'veuillerz remplir ce champ',
      'ar': 'veuillerz remplir ce champ',
      'fr': 'voirillerz remplir ce champ',
    },
    '868m368u': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'ubo8l070': {
      'en': 'modifier Publicité',
      'ar': 'تعديل الدعاية',
      'fr': 'modifier Publicité',
    },
    'pbaboosy': {
      'en': 'Modifier Une Publicité',
      'ar': 'تعديل إحدى الدعاية',
      'fr': 'Modifier une publicité',
    },
    'f3poxqza': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ListeEvents
  {
    '9xt3ughj': {
      'en': 'Search listings...',
      'ar': 'قوائم البحث...',
      'fr': 'Rechercher des annonces...',
    },
    'zematpel': {
      'en': 'Sports',
      'ar': 'رياضات',
      'fr': 'Des sports',
    },
    'gx8mltm6': {
      'en': 'Cultural',
      'ar': 'ثقافية',
      'fr': 'Culturel',
    },
    'dqm79c77': {
      'en': 'Charity',
      'ar': 'صدقة',
      'fr': 'Charité',
    },
    'ux25arpz': {
      'en': 'Social',
      'ar': 'اجتماعي',
      'fr': 'Sociale',
    },
    '8q5u9mil': {
      'en': 'Events',
      'ar': 'الأحداث',
      'fr': 'Événements',
    },
    'fdhbka4v': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // detailsEvent
  {
    'dvgc7kph': {
      'en': 'Edit Event',
      'ar': 'تحرير المطالبة',
      'fr': 'Modifier la revendication',
    },
    'n09y8rmj': {
      'en': 'Event details :',
      'ar': 'تفاصيل المطالبة :',
      'fr': 'Détail réclamation :',
    },
    'bxk2t0dw': {
      'en': 'Home',
      'ar': 'استقبال',
      'fr': 'Acceuil',
    },
  },
  // updateEvent
  {
    'sfesz6qv': {
      'en': 'Edit Event',
      'ar': 'تحرير الحدث',
      'fr': 'Modifier l\'événement',
    },
    'wlirkrzv': {
      'en': 'Please fill out the form below to continue.',
      'ar': 'يرجى ملء النموذج أدناه للمتابعة.',
      'fr': 'Veuillez remplir le formulaire ci-dessous pour continuer.',
    },
    'yk2xf241': {
      'en': 'Event name',
      'ar': 'اسم الحدث',
      'fr': 'Nom de l\'événement',
    },
    'sxx0iusq': {
      'en': 'Capacite',
      'ar': 'القدرة',
      'fr': 'Capacité',
    },
    'bgrymruf': {
      'en': 'Categorie',
      'ar': 'الفئة',
      'fr': 'Catégorie',
    },
    '4wasze5r': {
      'en': 'Culturel',
      'ar': 'الثقافة',
      'fr': 'Culturel',
    },
    'b5fl9wpy': {
      'en': 'Sportif',
      'ar': 'سبورتيف',
      'fr': 'Sportif',
    },
    '8kc8n9bx': {
      'en': 'Social',
      'ar': 'اجتماعي',
      'fr': 'Sociale',
    },
    'egogi43p': {
      'en': 'Charity',
      'ar': 'صدقة',
      'fr': 'Charité',
    },
    'jm3751z0': {
      'en': 'Date Debut',
      'ar': 'تاريخ الظهور الأول',
      'fr': 'Date de début',
    },
    'jxy4rga4': {
      'en': 'Date Fin',
      'ar': 'تاريخ الزعنفة',
      'fr': 'Date Fin',
    },
    'n2i224t9': {
      'en': 'Save changes ',
      'ar': 'حفظ التغييرات',
      'fr': 'Sauvegarder les modifications',
    },
    'ga2wq9cg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '0yg409ox': {
      'en': 'Min 5 characters',
      'ar': 'الحد الأدنى 5 أحرف',
      'fr': 'Minimum 5 caractères',
    },
    'op7w7dhz': {
      'en': 'Max 10 chracters',
      'ar': 'ماكس 10 حرفا',
      'fr': 'Max 10 caractères',
    },
    'vuy264f2': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '57hgimph': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'agki7l0j': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '7w06b23z': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ChatScreen
  {
    'mdh5i8t2': {
      'en': 'Message...',
      'ar': 'رسالة...',
      'fr': 'Message...',
    },
    'xmdr5twe': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ChatList
  {
    'yzmknwc6': {
      'en': 'Search patients',
      'ar': 'بحث المرضى',
      'fr': 'Rechercher des patients',
    },
    'syvjufrp': {
      'en': 'Home',
      'ar': 'استقبال',
      'fr': 'acceuil',
    },
  },
  // ChatsList
  {
    '5afwci9h': {
      'en': 'Search patients',
      'ar': 'بحث المرضى',
      'fr': 'Rechercher des patients',
    },
    'yx4chto1': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // profileUser
  {
    'gf7vy6ef': {
      'en': 'Chat',
      'ar': 'محادثة',
      'fr': 'Chat',
    },
    'yfsvwjm6': {
      'en': 'Please verify',
      'ar': 'ارجوك تحقق',
      'fr': 'Veuillez vérifier',
    },
    'jb064zhh': {
      'en': 'Call',
      'ar': 'يتصل',
      'fr': 'Appel',
    },
    'cr4pplm7': {
      'en': 'Details',
      'ar': 'تفاصيل',
      'fr': 'Détails',
    },
    'bh77gikq': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // detailsEquipement
  {
    'ld59rfpy': {
      'en': 'Edit Equipement',
      'ar': 'تحرير المطالبة',
      'fr': 'Modifier la revendication',
    },
    'yb96zfpc': {
      'en': 'Equipement details',
      'ar': 'تفاصيل المطالبة :',
      'fr': 'Détail réclamation :',
    },
    'dr6eanyj': {
      'en': 'Home',
      'ar': 'استقبال',
      'fr': 'Acceuil',
    },
  },
  // detailsActualite
  {
    't2uavi33': {
      'en': 'Edit news',
      'ar': 'تحرير المطالبة',
      'fr': 'Modifier la revendication',
    },
    '8asolq1u': {
      'en': 'news details',
      'ar': 'تفاصيل المطالبة :',
      'fr': 'Détail réclamation :',
    },
    'kumcdu14': {
      'en': 'Home',
      'ar': 'استقبال',
      'fr': 'Acceuil',
    },
  },
  // addProp
  {
    '7igsnyk7': {
      'en': 'Description',
      'ar': 'وصف',
      'fr': 'Description',
    },
    '9t5n8u5g': {
      'en': 'Add a description ...',
      'ar': 'إضافة وصف ...',
      'fr': 'Ajouter une description ...',
    },
    'zxq15jwu': {
      'en': 'Add Suggestion',
      'ar': 'إضافة اقتراح',
      'fr': 'Ajouter une suggestion',
    },
    'ohkrxxdt': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '30d2q6to': {
      'en': 'Min 10 chracters',
      'ar': 'الحد الأدنى 10 أحرف',
      'fr': 'Minimum 10 caractères',
    },
    'htzfl0na': {
      'en': 'Max 20 chracters',
      'ar': 'ماكس 20 حرفا',
      'fr': 'Max 20 caractères',
    },
    'l4dfv34r': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'ocojzxzj': {
      'en': 'Add a suggestion',
      'ar': 'أضف اقتراحًا',
      'fr': 'Ajouter une suggestion',
    },
    '02lsm286': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // listProposition
  {
    'frsta8x2': {
      'en': 'List of Suggestions',
      'ar': 'قائمة الاقتراحات',
      'fr': 'Liste de suggestions',
    },
    'u961t29m': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // listPublicite
  {
    '1ezdfqsc': {
      'en': 'Liste publicite',
      'ar': '',
      'fr': '',
    },
    'i4ep3arc': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // detailspublicite
  {
    'p2ebnhir': {
      'en': 'modifier Publicité',
      'ar': 'تحرير المطالبة',
      'fr': 'Modifier la revendication',
    },
    'cokziuxl': {
      'en': 'export pdf',
      'ar': 'تحرير المطالبة',
      'fr': 'Modifier la revendication',
    },
    'gbuyja7v': {
      'en': 'news details',
      'ar': 'تفاصيل المطالبة :',
      'fr': 'Détail réclamation :',
    },
    'ow8spldf': {
      'en': 'Home',
      'ar': 'استقبال',
      'fr': 'Acceuil',
    },
  },
  // listReclamationD
  {
    's8rgefn0': {
      'en': 'All',
      'ar': 'الجميع',
      'fr': 'Tous',
    },
    'q9z0usax': {
      'en': 'Treated',
      'ar': 'يعالج',
      'fr': 'Traité',
    },
    'b2wu3zmj': {
      'en': 'Untreated',
      'ar': 'غير معالجة',
      'fr': 'Non traité',
    },
    'mmezwoy7': {
      'en': 'My complaints',
      'ar': 'شكواي : ',
      'fr': 'Mes réclamations :',
    },
    'yp0kx1lf': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // AfficherTache
  {
    'o2prcjwo': {
      'en': 'Search...',
      'ar': 'يبحث...',
      'fr': 'Recherche...',
    },
    'ns2bu7p8': {
      'en': 'Search',
      'ar': 'يبحث',
      'fr': 'Recherche',
    },
    '5h9govti': {
      'en': 'Exporter EXCEL',
      'ar': 'مصدر اكسل',
      'fr': 'Exportateur EXCEL',
    },
    'usocmnc5': {
      'en': 'TODO',
      'ar': 'لكى يفعل',
      'fr': 'FAIRE',
    },
    'hd8aa8dy': {
      'en': 'DOING',
      'ar': 'عمل',
      'fr': 'FAIRE',
    },
    'v4o6zak1': {
      'en': 'DONE',
      'ar': 'منتهي',
      'fr': 'FAIT',
    },
    'wf48jat9': {
      'en': 'TODO',
      'ar': 'لكى يفعل',
      'fr': 'FAIRE',
    },
    'oe0cyr07': {
      'en': 'DOING',
      'ar': 'عمل',
      'fr': 'FAIRE',
    },
    'j8qzwd75': {
      'en': 'DONE',
      'ar': 'منتهي',
      'fr': 'FAIT',
    },
    'xrk4g7v1': {
      'en': 'Titre Tache',
      'ar': 'عنوان تاش',
      'fr': 'Titre Taché',
    },
    'j8qzoimm': {
      'en': 'ETAT',
      'ar': 'إت',
      'fr': 'ETAT',
    },
    '9tkfapcv': {
      'en': 'Action',
      'ar': 'فعل',
      'fr': 'Action',
    },
    'g2eekmkh': {
      'en': 'Taches',
      'ar': 'تاتش',
      'fr': 'Taches',
    },
    'ymjm921o': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // AfficherTacheDragDrop
  {
    'pb4m8uab': {
      'en': 'TODO',
      'ar': 'لكى يفعل',
      'fr': 'FAIRE',
    },
    'f6ir4bw9': {
      'en': 'DOING',
      'ar': 'عمل',
      'fr': 'FAIRE',
    },
    'fmnrr13v': {
      'en': 'DONE',
      'ar': 'منتهي',
      'fr': 'FAIT',
    },
    '60gssfjs': {
      'en': 'Taches',
      'ar': '',
      'fr': '',
    },
    '0c1zwvrk': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // AjouterTache
  {
    '0pkg4eoz': {
      'en': 'Categorie Tache',
      'ar': 'فئة تاش',
      'fr': 'Catégorie Taches',
    },
    'vds41gjv': {
      'en': 'Employe',
      'ar': 'موظف',
      'fr': 'Employé',
    },
    '41dc25gq': {
      'en': 'Responsable_Employe',
      'ar': 'Responsable_employe',
      'fr': 'Responsable_employé',
    },
    'hmb3siz8': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'q0pd4r27': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    '21dviwh3': {
      'en': 'Titre Tache',
      'ar': 'عنوان تاش',
      'fr': 'Titre Taché',
    },
    'mwz5wt7l': {
      'en': 'Titre Tache...',
      'ar': 'عنوان الموضوع...',
      'fr': 'Titre Taché...',
    },
    'nashj8vx': {
      'en': 'Date Debut',
      'ar': 'تاريخ الظهور الأول',
      'fr': 'Date de début',
    },
    '8o3d5gqj': {
      'en': 'Date Fin',
      'ar': 'تاريخ الزعنفة',
      'fr': 'Date Fin',
    },
    '4z5wjgnd': {
      'en': 'Description',
      'ar': 'وصف',
      'fr': 'Description',
    },
    '53aed67g': {
      'en': 'Description...',
      'ar': 'وصف...',
      'fr': 'Description...',
    },
    'cwi7ngbu': {
      'en': 'Etat',
      'ar': 'ولاية',
      'fr': 'État',
    },
    '6hozmyuk': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'qan0b1hi': {
      'en': 'TODO',
      'ar': 'لكى يفعل',
      'fr': 'FAIRE',
    },
    'j535rm6g': {
      'en': 'DOING',
      'ar': 'عمل',
      'fr': 'FAIRE',
    },
    'uv4tulb1': {
      'en': 'DONE',
      'ar': 'منتهي',
      'fr': 'FAIT',
    },
    '43nh6xbf': {
      'en': 'Ajouter',
      'ar': 'اجووتر',
      'fr': 'Ajouter',
    },
    'pgvj90sd': {
      'en': 'Clear',
      'ar': 'واضح',
      'fr': 'Clair',
    },
    'dy7eo45e': {
      'en': 'Titre Obligatoire',
      'ar': 'عنوان إلزامي',
      'fr': 'Titre Obligatoire',
    },
    'gn9d9slq': {
      'en': '>= 4 characteres',
      'ar': '>= 4 أحرف',
      'fr': '>= 4 caractères',
    },
    '20evypqc': {
      'en': '<= 25  characteres',
      'ar': '<= 25 حرفًا',
      'fr': '<= 25 caractères',
    },
    'yhksy5pg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'z7lfiab4': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'uncpkn71': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'akgm8yw6': {
      'en': 'Ajouter Tache',
      'ar': 'اجووتر تاش',
      'fr': 'Ajouter Taché',
    },
    '75i1oqrc': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // UpdateTache
  {
    'bfufah7p': {
      'en': 'Categorie Tache',
      'ar': 'فئة تاش',
      'fr': 'Catégorie Taches',
    },
    'gl4r7wvt': {
      'en': 'Employe',
      'ar': 'موظف',
      'fr': 'Employé',
    },
    '4pl2rnrj': {
      'en': 'Responsable_Employe',
      'ar': 'Responsable_employe',
      'fr': 'Responsable_employé',
    },
    '61f6ctlk': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'pfo2u5ol': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    'l7t3ip4j': {
      'en': 'Titre Tache',
      'ar': 'عنوان تاش',
      'fr': 'Titre Taché',
    },
    '7ygtd2i6': {
      'en': 'Date Debut',
      'ar': 'تاريخ الظهور الأول',
      'fr': 'Date de début',
    },
    '6ez83t3b': {
      'en': 'Date Fin',
      'ar': 'تاريخ الزعنفة',
      'fr': 'Date Fin',
    },
    'qp4dn5iu': {
      'en': 'Description',
      'ar': 'وصف',
      'fr': 'Description',
    },
    'y5ppwysu': {
      'en': 'Etat',
      'ar': 'ولاية',
      'fr': 'État',
    },
    'yec37lp0': {
      'en': 'TODO',
      'ar': 'لكى يفعل',
      'fr': 'FAIRE',
    },
    'vjj9o6b3': {
      'en': 'DOING',
      'ar': 'عمل',
      'fr': 'FAIRE',
    },
    'us1rbya3': {
      'en': 'DONE',
      'ar': 'منتهي',
      'fr': 'FAIT',
    },
    'zb0vcsfk': {
      'en': 'Update',
      'ar': 'تحديث',
      'fr': 'Mise à jour',
    },
    'bzbebfnz': {
      'en': 'Clear',
      'ar': 'واضح',
      'fr': 'Clair',
    },
    'a4gz5xtb': {
      'en': 'Titre Obligatoire',
      'ar': 'عنوان إلزامي',
      'fr': 'Titre Obligatoire',
    },
    '4e5ryprd': {
      'en': '>= 4 characteres',
      'ar': '>= 4 أحرف',
      'fr': '>= 4 caractères',
    },
    '6d441xcm': {
      'en': '<= 25  characteres',
      'ar': '<= 25 حرفًا',
      'fr': '<= 25 caractères',
    },
    '32h8uv5p': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'do6t80hx': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'wimvzb7j': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'b8jt2n2p': {
      'en': 'Update Tache',
      'ar': 'تحديث تاتش',
      'fr': 'Mettre à jour la tache',
    },
    'i9zriai7': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // DetailTache
  {
    'msb1v32n': {
      'en': 'Categorie Tache',
      'ar': 'فئة تاش',
      'fr': 'Catégorie Taches',
    },
    'w8e3jjtx': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'cdcbeycf': {
      'en': 'Titre Tache',
      'ar': 'عنوان تاش',
      'fr': 'Titre Taché',
    },
    '5gjekfy3': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'r2yiafdo': {
      'en': 'Date Debut',
      'ar': 'تاريخ الظهور الأول',
      'fr': 'Date de début',
    },
    'dnsqqbio': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '5g7zqiy7': {
      'en': 'Date Fin',
      'ar': 'تاريخ الزعنفة',
      'fr': 'Date Fin',
    },
    '5z85lsxr': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'gm1n4awc': {
      'en': 'Description',
      'ar': 'وصف',
      'fr': 'Description',
    },
    'wfbdrwkm': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'iwcb15ts': {
      'en': 'Etat',
      'ar': 'ولاية',
      'fr': 'État',
    },
    'rckol07g': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'yjq00v7j': {
      'en': 'Detail Tache',
      'ar': 'تاش التفاصيل',
      'fr': 'Tache de détail',
    },
    'zc0mhat6': {
      'en': 'Home',
      'ar': 'استقبال',
      'fr': 'Acceuil',
    },
  },
  // biometric
  {
    'hw7j7kbb': {
      'en': 'Button',
      'ar': 'زر',
      'fr': 'Bouton',
    },
    'jkt79lpo': {
      'en': 'Page Title',
      'ar': 'عنوان الصفحة',
      'fr': 'Titre de la page',
    },
    '3hn8ow8a': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // Commentaire
  {
    'zdgu7sns': {
      'en': 'Send',
      'ar': 'يرسل',
      'fr': 'Envoyer',
    },
    'e0arby55': {
      'en': 'Cancel',
      'ar': 'يلغي',
      'fr': 'Annuler',
    },
    'a3avi92o': {
      'en': '@andresfrans',
      'ar': '@أندريسفرانس',
      'fr': '@andresfrans',
    },
    'khqgdxrg': {
      'en': 'What\'s happening?',
      'ar': 'ماذا يحدث؟',
      'fr': 'Ce qui se passe?',
    },
    'itze12yj': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ListAvis
  {
    'a48ul3pt': {
      'en': '# of Ratings',
      'ar': '# من التقييمات',
      'fr': 'Nombre de notes',
    },
    'iqz7vzsb': {
      'en': 'Avg. Rating',
      'ar': 'متوسط تقييم',
      'fr': 'Moy. Notation',
    },
    'cd491pqx': {
      'en': 'List of feedbacks',
      'ar': '',
      'fr': '',
    },
    '4hfb2hs2': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // support
  {
    'nuqyqao2': {
      'en': 'Welcome to support',
      'ar': 'مرحبا بكم في الدعم',
      'fr': 'Bienvenue au support',
    },
    '6khaspuw': {
      'en': 'How can we help you?',
      'ar': 'كيف يمكننا مساعدتك؟',
      'fr': 'Comment pouvons-nous vous aider?',
    },
    'h7apxcew': {
      'en': 'Call Us',
      'ar': 'اتصل بنا',
      'fr': 'Appelez-nous',
    },
    '9ebj8mci': {
      'en': 'Email Us',
      'ar': 'ارسل لنا عبر البريد الإلكتروني',
      'fr': 'Envoyez-nous un email',
    },
    'uy6m2hvb': {
      'en': 'Review FAQ\'s below',
      'ar': 'قم بمراجعة الأسئلة الشائعة أدناه',
      'fr': 'Consultez la FAQ ci-dessous',
    },
    '409x93cf': {
      'en': 'Support Baladity',
      'ar': 'دعم بلديتي',
      'fr': 'Soutenez Baladité',
    },
    'lf213n6y': {
      'en':
          '\nBienvenue sur la page de support de Baladity ! Nous sommes là pour vous aider à tirer le meilleur parti de notre application et à résoudre tout problème que vous pourriez rencontrer.\n\nFoire Aux Questions (FAQ)\n\nConsultez notre FAQ pour trouver des réponses aux questions fréquemment posées sur Baladity. Nous avons rassemblé des informations utiles sur l\'utilisation de notre application, les fonctionnalités disponibles et bien plus encore.\n\n[Insérer le lien vers la FAQ ici]\n\nContactez-nous\n\nSi vous ne trouvez pas de réponse à votre question dans notre FAQ ou si vous rencontrez un problème technique, n\'hésitez pas à nous contacter directement. Notre équipe de support est là pour vous aider !\n\n[Insérer les coordonnées de contact ici]\n\nSignaler un Problème\n\nRencontré un bug ou un problème technique avec Baladity ? Signalez-le nous en fournissant autant de détails que possible sur le problème que vous rencontrez. Nous apprécions votre aide pour améliorer notre application !\n\n[Insérer le lien vers le formulaire de signalement de problème ici]\n\nSuggestions et Commentaires\n\nAvez-vous une idée pour améliorer Baladity ou des commentaires sur votre expérience d\'utilisation de notre application ? Nous sommes toujours ouverts à vos suggestions et commentaires. Faites-nous savoir ce que vous pensez !\n\n[Insérer le lien vers le formulaire de suggestions et commentaires ici]\n\nSuivez-nous sur les Réseaux Sociaux\n\nRestez informé des dernières nouveautés, mises à jour et annonces concernant Baladity en nous suivant sur nos réseaux sociaux. Rejoignez notre communauté en ligne dès aujourd\'hui !\n\n[Insérer les liens vers les réseaux sociaux de Baladity ici]\n\nRessources Supplémentaires\n\nBesoin d\'aide supplémentaire pour utiliser Baladity ? Consultez nos guides d\'utilisation et tutoriels pour obtenir des instructions détaillées sur les différentes fonctionnalités de notre application.\n\n[Insérer le lien vers les guides d\'utilisation et tutoriels ici]\n\nÀ Propos de Baladity\n\nEn savoir plus sur Baladity, notre mission et notre équipe en consultant la page À Propos sur notre site web.\n\n[Insérer le lien vers la page À Propos de Baladity ici]',
      'ar':
          'Bienvenue sur la page de support de Baladity! نحن نساعدك على تحسين الجزء الأفضل من تطبيقنا وحل جميع المشاكل التي ستواجهها.\n\nأسئلة Foire Aux (الأسئلة الشائعة)\n\nراجع الأسئلة الشائعة للعثور على إجابات للأسئلة الشائعة حول Baladity. نقوم بتجميع المعلومات المفيدة حول استخدام التطبيق الخاص بنا، والميزات المتاحة والظهور بشكل جيد.\n\n[أدخل الامتياز مقابل الأسئلة الشائعة ici]\n\nاتصل بنا\n\nإذا لم تتمكن من العثور على إجابة لسؤالك في الأسئلة الشائعة أو إذا واجهت مشكلة في التقنية، فلا تتردد في الاتصال بنا مباشرة. Notre équipe de support est là pour vous aider !\n\n[Insérer les coordonnées de contact ici]\n\nإشارة إلى مشكلة\n\nهل تواجه خطأً أو مشكلة تقنية مع Baladity؟ قم بإشارةنا إلى مزودنا بالتفاصيل الممكنة حول المشكلة التي ستواجهها. Nous apprécions votre aide pour améliorer notre application!\n\n[أدخل الامتياز مقابل صيغة الإشارة إلى المشكلة]\n\nاقتراحات وتعليقات\n\nهل لديك فكرة لتحسين Baladity أو تعليقات حول تجربتك في استخدام تطبيقنا؟ نحن نفتح دائمًا اقتراحاتك وتعليقاتك. اعرف ما الذي تفكر فيه!\n\n[أدخل الامتياز مقابل صيغة الاقتراحات والتعليقات]\n\nSuivez-nous sur les Réseaux Sociaux\n\nقم بإبلاغ آخر الأخبار والأخبار والإعلانات المتعلقة بـ Baladity على شبكاتنا الاجتماعية. Rejoignez notre communauté en ligne dès aujourd\'hui!\n\n[Insérer les liens vers les réseaux sociaux de Baladity ici]\n\nالموارد التكميلية\n\nهل تحتاج إلى مساعدة إضافية لاستخدام Baladity؟ راجع أدلة الاستخدام والبرامج التعليمية للحصول على الإرشادات التفصيلية حول ميزات التطبيق المختلفة.\n\n[أدخل الامتياز مقابل أدلة الاستخدام والبرامج التعليمية هنا]\n\n- اقتراح Baladity\n\nEn savoir plus sur Baladity, notre Mission et notre équipe en Consulting la page À Propos sur notre site web.\n\n[أدخل الامتياز في الصفحة À Propos de Baladity ici]',
      'fr':
          'Bienvenue sur la page de support de Baladity ! Nous sommes là pour vous aider à tirer le meilleur parti de notre application et à résoudre tout problème que vous pourriez rencontrer.\n\nFoire Aux Questions (FAQ)\n\nConsultez notre FAQ pour trouver des réponses aux questions fréquemment posées sur Baladity. Nous avons rassemblé des informations utiles sur l\'utilisation de notre application, les fonctionnalités disponibles et bien plus encore.\n\n[Insérer le lien vers la FAQ ici]\n\nContactez-nous\n\nSi vous ne trouvez pas de réponse à votre question dans notre FAQ ou si vous rencontrez un problème technique, n\'hésitez pas à nous contacter directement. Notre équipe de support est là pour vous aider !\n\n[Insérer les coordonnées de contact ici]\n\nSignaler un problème\n\nRencontré un bug ou un problème technique avec Baladity ? Signalez-le nous en fournissant autant de détails que possible sur le problème que vous rencontrez. Nous apprécions votre aide pour améliorer notre application !\n\n[Insérer le lien vers le formulaire de signalement de problème ici]\n\nSuggestions et commentaires\n\nAvez-vous une idée pour améliorer Baladity ou des commentaires sur votre expérience d\'utilisation de notre application ? Nous sommes toujours ouverts à vos suggestions et commentaires. Faites-nous savoir ce que vous pensez !\n\n[Insérer le lien vers le formulaire de suggestions et commentaires ici]\n\nSuivez-nous sur les Réseaux Sociaux\n\nRestez informé des dernières nouveautés, mises à jour et annonces concernant Baladity en nous suivant sur nos réseaux sociaux. Rejoignez notre communauté en ligne dès aujourd\'hui !\n\n[Insérer les liens vers les réseaux sociaux de Baladity ici]\n\nRessources supplémentaires\n\nBesoin d\'aide supplémentaire pour utiliser Baladity ? Consultez nos guides d\'utilisation et tutoriels pour obtenir des instructions détaillées sur les différentes fonctionnalités de notre application.\n\n[Insérer le lien vers les guides d\'utilisation et tutoriels ici]\n\nÀ propos de Baladity\n\nEn savoir plus sur Baladity, notre mission et notre équipe en consultant la page À Propos sur notre site web.\n\n[Insérer le lien vers la page À Propos de Baladity ici]',
    },
    '8gbhr187': {
      'en': 'Get support',
      'ar': 'احصل على الدعم',
      'fr': 'Obtenir de l\'aide',
    },
    '2idyik0s': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // Terms
  {
    '701fi13p': {
      'en': 'Conditions Générales d\'Utilisation de Baladity',
      'ar': 'الشروط العامة لاستخدام Baladity',
      'fr': 'Conditions Générales d\'Utilisation de Baladity',
    },
    'dt8gjdx3': {
      'en':
          '\nMerci d\'utiliser Baladity ! Ces Conditions Générales d\'Utilisation (CGU) régissent votre utilisation de l\'application Baladity. Veuillez les lire attentivement avant d\'utiliser notre service.\n\nEn utilisant Baladity, vous acceptez d\'être lié par ces CGU. Si vous n\'acceptez pas ces termes, veuillez ne pas utiliser Baladity.\n\n1. Utilisation du Service\n\nBaladity est conçu pour simplifier la gestion municipale et faciliter la communication entre les administrations municipales et les résidents. En utilisant Baladity, vous acceptez de respecter toutes les lois et réglementations applicables ainsi que ces CGU.\n\n2. Compte Utilisateur\n\nPour utiliser certaines fonctionnalités de Baladity, vous devrez créer un compte utilisateur. Vous êtes responsable de maintenir la confidentialité de votre compte et de votre mot de passe, ainsi que de toutes les activités qui se déroulent sous votre compte.\n\n3. Contenu Utilisateur\n\nEn utilisant Baladity, vous pouvez soumettre différents types de contenu, tels que des réclamations ou des commentaires. Vous conservez la propriété de tout contenu que vous soumettez à Baladity. En soumettant du contenu, vous accordez à Baladity une licence mondiale, non exclusive, gratuite et transférable pour utiliser, reproduire, distribuer et afficher ce contenu dans le cadre de la prestation de nos services.\n\n4. Responsabilités de l\'Utilisateur\n\nVous vous engagez à utiliser Baladity de manière responsable et légale. Vous ne devez pas utiliser Baladity pour diffuser du contenu illégal, diffamatoire, obscène, offensant ou autrement répréhensible.\n\n5. Limitation de Responsabilité\n\nBaladity s\'efforce de fournir un service de qualité, mais nous ne pouvons garantir que notre service sera toujours disponible, sûr, sécurisé, exempt d\'erreurs ou fonctionnera sans interruption. En aucun cas, Baladity ne pourra être tenu responsable des dommages directs, indirects, accessoires, spéciaux ou consécutifs découlant de votre utilisation ou de votre incapacité à utiliser Baladity.\n\n6. Modifications des CGU\n\nBaladity se réserve le droit de modifier ces CGU à tout moment. Les modifications seront effectives dès leur publication sur notre site web ou notre application. Votre utilisation continue de Baladity après la publication des modifications constitue votre acceptation de ces modifications.\n\n7. Droit Applicable\n\nCes CGU sont régies et interprétées conformément aux lois en vigueur dans votre juridiction, sans égard aux principes de conflit de lois.\n\nSi vous av',
      'ar':
          'رحمة الاستخدام Baladity! تحدد هذه الشروط العامة للاستخدام (CGU) استخدامك لتطبيق Baladity. يرجى الاطلاع على الاهتمام قبل استخدام الخدمة.\n\nباستخدام Baladity، يمكنك قبول وجود وحدة CGU هذه. إذا لم تقبل هذه الشروط، فلن تستخدم Baladity.\n\n1. الاستفادة من خدمة دو\n\nتم تصميم Baladity لتبسيط الإدارة البلدية وتسهيل الاتصال بين الإدارات البلدية والمقيمين. باستخدام Baladity، يمكنك قبول احترام جميع القوانين واللوائح المطبقة بالإضافة إلى وحدة CGU هذه.\n\n2. حساب المستخدم\n\nلاستخدام بعض ميزات Baladity، يجب عليك إنشاء حساب مستخدم. أنت مسؤول عن الحفاظ على سرية حسابك وكلمة المرور الخاصة بك، بالإضافة إلى جميع الأنشطة التي تدمر حسابك.\n\n3. محتوى المستخدم\n\nباستخدام Baladity، يمكنك العثور على أنواع مختلفة من المحتوى، مثل الاقتراحات أو التعليقات. أنت تحتفظ بملكية كل المحتوى الذي ستستمتع به. من خلال المحتوى، ستمنح Baladity ترخيصًا عالميًا، غير حصري، مجاني وقابل للتحويل لاستخدام هذا المحتوى وإعادة إنتاجه وتوزيعه وعرضه في إطار خدماتنا.\n\n4. مسؤوليات المستخدم\n\nأنت تشارك في استخدام أسلوب التصرف المسؤول والقانوني. لا يتعين عليك استخدام Baladity لنشر محتوى غير قانوني أو مثير للسخرية أو فاحش أو مسيء أو غير مقبول.\n\n5. حدود المسؤولية\n\nتتمثل الجدية في تقديم خدمة عالية الجودة، ولكن لا يمكننا ضمان أن الخدمة ستكون متاحة دائمًا، وآمنة، وخالية من الأخطاء، أو تعمل دون انقطاع. في هذه الحالة، لا يمكن أن تكون Baladity مسؤولة عن الأضرار المباشرة أو غير المباشرة أو الملحقات أو التفاصيل الخاصة أو الناتجة عن استخدامك أو عدم قدرتك على استخدام Baladity.\n\n6. تعديلات وحدة CGU\n\nتحتفظ الصلاحية بحق تعديل وحدة CGU هذه في كل لحظة. ستكون التعديلات فعالة من خلال نشرها على موقع الويب أو التطبيق. استمرار استخدام Baladity بعد نشر التعديلات يشكل قبولك لهذه التعديلات.\n\n7. القانون قابل للتطبيق\n\nإن هذه CGU هي قواعد وتفسيرات تتوافق مع القوانين السارية في نطاق اختصاصك القضائي، دون مراعاة مبادئ تعارض القوانين.\n\nسي vous av',
      'fr':
          'Merci d\'utiliser Baladity ! Ces Conditions Générales d\'Utilisation (CGU) régissent votre utilisation de l\'application Baladity. Veuillez les lire attentivement avant d\'utiliser notre service.\n\nEn utilisant Baladity, vous acceptez d\'être lié par ces CGU. Si vous n\'acceptez pas ces termes, veuillez ne pas utiliser Baladity.\n\n1. Utilisation du Service\n\nBaladity est conçu pour simplifier la gestion municipale et faciliter la communication entre les administrations municipales et les résidents. En utilisant Baladity, vous acceptez de respecter toutes les lois et réglementations applicables ainsi que ces CGU.\n\n2. Compte Utilisateur\n\nPour utiliser certaines fonctionnalités de Baladity, vous devrez créer un compte utilisateur. Vous êtes responsable du maintien de la confidentialité de votre compte et de votre mot de passe, ainsi que de toutes les activités qui se déroulent sous votre compte.\n\n3. Contenu Utilisateur\n\nEn utilisant Baladity, vous pouvez soumettre différents types de contenu, tels que des réclamations ou des commentaires. Vous conservez la propriété de tout contenu que vous soumettez à Baladity. En soumettant du contenu, vous accordez à Baladity une licence mondiale, non exclusive, gratuite et transférable pour utiliser, reproduire, distribuer et afficher ce contenu dans le cadre de la prestation de nos services.\n\n4. Responsabilités de l\'Utilisateur\n\nVous vous engagez à utiliser Baladity de manière responsable et légale. Vous ne devez pas utiliser Baladity pour diffuser du contenu illégal, diffamatoire, obscène, offensant ou autrement répréhensible.\n\n5. Limitation de responsabilité\n\nBaladity s\'efforce de fournir un service de qualité, mais nous ne pouvons garantir que notre service sera toujours disponible, sûr, sécurisé, exempt d\'erreurs ou fonctionnera sans interruption. En aucun cas, Baladity ne pourra être tenu responsable des dommages directs, indirects, accessoires, spéciaux ou indirects résultant de votre utilisation ou de votre incapacité à utiliser Baladity.\n\n6. Modifications des UGT\n\nBaladity se réserve le droit de modifier ces CGU à tout moment. Les modifications seront effectives dès leur publication sur notre site web ou notre application. Votre utilisation continue de Baladity après la publication des modifications constitue votre acceptation de ces modifications.\n\n7. Droit applicable\n\nCes CGU sont régies et interprétées conformément aux lois en vigueur dans votre juridiction, sans égard aux principes de conflit de lois.\n\nSi vous avez',
    },
    '07fce4jq': {
      'en': 'Home',
      'ar': 'استقبال',
      'fr': 'Acceuil',
    },
  },
  // ListeEventsRecherche
  {
    '8zv4azuh': {
      'en': 'Search listings...',
      'ar': 'قوائم البحث...',
      'fr': 'Rechercher des annonces...',
    },
    'jbx9zln1': {
      'en': 'Events',
      'ar': 'الأحداث',
      'fr': 'Événements',
    },
    'l5c8w2oq': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // holidays
  {
    'pgi187vy': {
      'en': 'Coming Up',
      'ar': 'قادم',
      'fr': 'À venir',
    },
    'lvege2ag': {
      'en': 'Holidays',
      'ar': 'العطل',
      'fr': 'Vacances',
    },
    '6bg4do2j': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ChatGPT
  {
    'qbtwlsg3': {
      'en': 'Message...',
      'ar': 'رسالة...',
      'fr': 'Message...',
    },
    '7zhx6vau': {
      'en': 'Baladity bot',
      'ar': '',
      'fr': '',
    },
    '0gf53rav': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // listEquipementRecherche
  {
    '9rtzdda9': {
      'en': 'Equipements list',
      'ar': 'قائمة المعدات',
      'fr': 'Liste des equipements',
    },
    '63dz1rr2': {
      'en': 'Search listings...',
      'ar': 'قوائم البحث...',
      'fr': 'Rechercher des annonces...',
    },
    '4cvxszrc': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ListReclamationRecherche
  {
    'jbxcvxzu': {
      'en': 'List of complaints',
      'ar': 'قائمة الشكاوى',
      'fr': 'Liste des réclamations',
    },
    'n8uwft7r': {
      'en': 'Search listings...',
      'ar': 'قوائم البحث...',
      'fr': 'Rechercher des annonces...',
    },
    'dcfk77d0': {
      'en': 'Home',
      'ar': 'إستقبال',
      'fr': 'Acceuil',
    },
  },
  // CommentaireTI
  {
    '7r31x00s': {
      'en': 'commentaire...',
      'ar': 'تعليق...',
      'fr': 'commentaire...',
    },
    'ylha8t25': {
      'en': 'Ajouter Commentaire',
      'ar': 'إضافة تعليق',
      'fr': 'Ajouter un commentaire',
    },
    'l08sdjaf': {
      'en': 'Clear',
      'ar': 'واضح',
      'fr': 'Clair',
    },
  },
  // Miscellaneous
  {
    '3qa14e02': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'mito2f10': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '5jgsf1nv': {
      'en': 'Give permission to use microphone',
      'ar': 'منح الإذن لاستخدام الميكروفون',
      'fr': 'Donner la permission d\'utiliser le microphone',
    },
    'ghu1vtzc': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'mwvknucl': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'v5ay5bhn': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'dh72f7et': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'odaeglpo': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'rqzbhj0c': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'k0kvwx6d': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'cbzzmq6b': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '50f1vw93': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'w03mggjf': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'n7ierh87': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'x5gqhoja': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '7pozeeqg': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    's5e9x8wi': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'susubjxj': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'pwn10amt': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'etmarik8': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'ghnhwvb8': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '49pk8es9': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '4fakffvf': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'gfq4lpqe': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'thehsuob': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'haucon6t': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '4u37s5mb': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'iiluo5ue': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'tmnn6bz6': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '6i2kpfit': {
      'en': '',
      'ar': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
