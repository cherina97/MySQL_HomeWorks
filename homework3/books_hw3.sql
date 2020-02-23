DROP DATABASE if exists library ;

CREATE DATABASE library;

USE library;

CREATE TABLE books (
id int not null primary key auto_increment,
title varchar (120) not null,
description text,
date_of_publication date not null default "2018-01-01",
category varchar (50) not null default "Категорія відсутня",
isbn bigint (30) unique not null,
count_of_pages int  not null,
name_of_author varchar (45) not null,
sername_of_author varchar (45) not null,
email_of_author varchar (50) not null unique,
age_of_author int(10) not null,
data_of_birthday date not null,
author_awards varchar(120),
price real not null 
);

INSERT INTO books (title, description, date_of_publication, category, isbn, count_of_pages, name_of_author, 
sername_of_author, email_of_author, age_of_author, data_of_birthday, author_awards, price)
VALUES 
("Маленькие женщины",
"У кожній з юних сестер Марч було щось особливе. Серйозна не по роках красуня Маргарет, життєрадісна Джо, добросерда Бет і чарівна Емі. Вони стали одна для одної міцною опорою і підтримкою, коли їхній батько відправився на війну. Всі радості ділилися на чотирьох. Всі прикрощі - теж. Але безтурботне дитинство змінюється новими дорослими проблемами і почуттями. І не всі вже можна поділити на чотирьох. Особливо якщо мова йде про кохання - перше і палке, привабливе і п'янке...",
"2005-06-10",
default,
"9786171247635",
"576",
"Луїза",
"Олкот",
"luiza@mail.com",
"50",
"1950-09-26",
"АБС-премия",
"56.5055"
),
("Хроніки Нарнії. Повна історія чарівного світу",
"Колись добіжить кінця вік чарівної яблуні і з її стовбура виготовлять велику платтяну шафу. Довгі роки вона слугуватиме лише для зберігання пальт і шуб у будинку самотнього професора. Та одного дощового дня Пітер, Сьюзан, Едмунд і Люсі заховаються в ній від суворої домогосподарки. І потраплять у Нарнію — країну, яка відчиняє потаємні двері лише тим, хто щиро вірить у дива. Могутній лев Аслан — цар звірів і володар усього сущого, зла Біла Чаклунка з крижаним серцем, дивовижні казкові істоти та звірі, що вміють розмовляти, четверо дітей, які стануть нарнійськими королями й королевами та раз у раз повертатимуться зі світу людей, щоб урятувати Нарнію від темних сил… На сторінках семи частин фентезійної хроніки герої Льюїса вкотре доведуть, що зло завжди буде переможене добром. Для цього треба лише повірити хоча б у малесеньке диво!",
"1969-08-07",
"Детям от 12 лет , Книги для подростков",
"9786171271227",
"912",
"Клайв",
"Льюїс",
"klaiv@mail.com",
"45",
"1964-07-04",
"Гонкуровская премия",
"99.9999"
),
("Чартер со смертью",
"Шкипер Алексей с напарником Тимуром по поручению хозяина перегоняют недавно купленную яхту в порт Дубровника. Узнав, что хозяин яхты отправился на трехнедельный отдых в Индокитай, Леша с Тимуром решают подзаработать — провести «левый» чартер. Через Интернет они находят желающих отправиться в Грецию. Но из-за личных обстоятельств Тимур отказывается от затеи. И напарницей Леши становится Света, с которой он случайно знакомится в аэропорту. Парень рассказывает ей о предстоящем путешествии на яхте, и Света соглашается на заманчивое предложение. Она и не догадывается, чем обернется для нее эта авантюра…",
"2015-09-07",
"Детективы",
"9786171271388",
"336",
"Сергей",
"Пономаренко",
"ponomarenko.s@mail.com",
"43",
"1965-12-05",
null,
"120"
),
("Колдовское Таро. Открой свою судьбу",
"Карты Таро — один из древнейших способов предсказания грядущего. Карты дадут ответы на вопросы о будущем, любви, деньгах, карьере и многом другом. Нужно только знать, как правильно задать вопросы и уметь прочесть ответы. Теперь и у вас будет своя колода карт Таро, чтобы сразу приступить к практике!",
 "2019-07-19",
"Эзотерика",
"9786171268852",
"304",
"Эллен",
"Друган",
"e.drugan@mail.com",
"32",
"1985-11-25",
null,
"50"
),
("Фиктивный брак",
"Штамп в паспорте, пара свадебных фотографий для прессы — и все, думала София. Больше ей не придется терпеть этого напыщенного и самолюбивого Андрея. По совместительству — ее мужа. Фиктивного. Родители настояли на выгодном браке, обещали, что жених — идеальный во всех отношениях мужчина из хорошей семьи. 
Но этот эгоистичный деспот не пропускал мимо ни одной юбки! София мечтала поскорее развязаться с Андреем. Только все чаще ревновала… И беспокоилась о том, где он и с кем. В этом фиктивном браке нет ничего настоящего. Однако блеск в глазах Андрея, это внезапно возникшее тепло — нет, подделать его невозможно…",
 "2019-09-29",
"Романы о любви",
"9786171274587",
"320",
"Наталья",
"Соболевская",
"nat.sob@mail.com",
"32",
"1985-09-26",
null,
"65.78"
),
("Подаруй мені зірку",
"Еліс просто хотіла бути щасливою. Гадала, що одруження подарує їй те, про що вона так мріяла. Але коли рідна Англія лишилася за океаном, Кентукі зустрів її задухою та консерватизмом. Чоловік, який в усьому слухався батька, почуття скутості — все, що отримала Еліс. Тож коли в містечку почали шукати волонтерів для кінної бібліотеки, вона не вагаючись зголосилася. Тут Еліс знайомиться з Марджері, яка не кориться закам’янілим традиціям і знає, як це — бути по-справжньому щасливою та вільною. Життя Еліс карколомно змінюється. І чоловік, який був для неї всім, виявляється чужим. Бо вона вже давно кохає іншого. Того, з ким зможе стати собою… ",
default,
default,
"9786171270961",
"400",
"Джоджо ",
"Мойєс ",
"jojo@mail.com",
"42",
"1978-07-26",
null,
"75"
),
("Агнес Грей",
"Юная Агнес вынуждена искать любую работу, чтобы помочь своей семье. Скромная и застенчивая, девушка видит свое призвание в воспитании детей. Агнес становится гувернанткой в богатой семье. Избалованные дети ужасают девушку своим бессердечием. Но у нее нет выбора, кроме как смириться и продолжать свою работу, несмотря ни на что. Однажды Агнес знакомится с молодым священником в местной церкви, Уэстоном. Его слова рождают в ней неведомые ранее чувства. Но вскоре девушка вынуждена покинуть родные края. Уэстон понимает, что, отпустив ее, рискует потерять навсегда. Если только судьба не даст им шанс встретиться снова…",
"2013-08-27",
"Классика",
"9786171276123",
"288",
"Энн  ",
"Бронте ",
"bronte@mail.com",
"74",
"1932-07-06",
"Пулитцеровская премия ",
"200.9898"
),
("Я всегда буду с тобой",
"Александр получает от старого друга Антона предложение занять высокий пост в фирме. Антон поднялся из самых низов и теперь задумал новый проект в столице. На новом месте Саша знакомится с Катей — главным бухгалтером фирмы Антона. В эту рыжеволосую зеленоглазую красавицу невозможно было не влюбиться. Да и сама Катя совсем не против ухаживаний со стороны Александра. Внезапно фирму Антона начинает атаковать опасный конкурент. На почту приходят анонимные угрозы с требованием продать бизнес и убраться с чужой территории. Чудом удается предотвратить теракт в цеху. Кажется, атака успешно отбита. Но кто-то похищает Лилию, жену Антона. Самое ценное, что есть у него в его жизни. Мужчины вступают в опасную игру…",
"2020-01-07",
"Романы о любви",
"9786171274655",
"400",
"Светлана",
"Алексеева",
"svet.alex@mail.com",
"34",
"1982-05-05",
null,
"40"
),
("Останнє полювання",
"Через кілька років після справи, яка зламала його фізично й душевно, легендарний детектив П’єр Ньєман нарешті знову в ділі. Зі своєю ученицею й напарницею Іваною він вирушає до Німеччини, у Чорнолісся — край легенд, де досі живуть привиди давно минулих років, гніздяться найтемніші кошмари, а під гіллям гінких сосен ховаються найстрашніші таємниці. Ньєман починає нове розслідування: про вбивство спадкоємця багатого аристократичного роду. Чоловіка було не просто вбито, а зарізано, неначе кабана, на якого він так любив полювати у своїх володіннях. Ньєманові не звикати до кривавих злочинів, але він іще не знає, що під час розслідування йому доведеться зустрітися з найбільшим страхом усього свого життя. І зазирнути в його чорні, мов ліс, очі… ",
"2017-02-27",
"Детективы",
"9786171274433",
"384",
"Жан-Крістоф",
"Ґранже",
"granggge@mail.com",
"37",
"1988-08-03",
null,
"85"
),
("Психологія впливу",
"Ця книга, яка вже давно стала підручником для менеджерів, підприємців і взагалі всіх, хто бажає опанувати мистецтво впливу, навчить вас розуміти поведінку інших, уникати маніпуляторів людською свідомістю та спілкуватися, завжди досягаючи поставлених задач.",
default,
"Психология , Бизнес и саморазвитие",
"9786171233522",
"352",
"Роберт",
"Чалдині",
"chaldini@mail.com",
"47",
"1978-10-29",
"Премия Х.К. Андерсена",
"280.65"
),
("Кристин, дочь Лавранса",
"Историческая трилогия норвежской писательницы Сигрид Унсет была удостоена Нобелевской премии 1929 года. Действие происходит в средневековой Норвегии. Юная Кристин – дочь богатого землевладельца Лавранса. Девушка живет, повинуясь голосу сердца. Вопреки условностям и традициям, она связала свою судьбу с легкомысленным рыцарем Эрландом. Много страданий выпадает на долю прекрасной женщины. С годами приходит к ней мудрость и сила духа. Это история о любви и верности, о высокой цене, которую порой приходится платить за исполнение желаний. В издание входят все три части романа — «Венец», «Хозяйка» и «Крест».",
"2005-09-28",
"Приключенческие",
"9785389135697",
"1120",
"Сингрид ",
"Унсет ",
"sinred@mail.com",
"36",
"1985-09-26",
"Премия Х.К. Андерсена",
"165"
),
("Я обіцяю тобі волю",
"Життя Сибіль Ширдон почало руйнуватися, наче картковий будиночок. Начальник поставив перед фактом: лише десять днів, щоб зберегти робоче місце, інакше — звільнення. Того ж вечора коханий чоловік Сибіль сказав, що їхні стосунки вичерпали себе. Вона була немов затиснута в лещатах болю, страху та відчаю. Їй не залишалося нічого іншого, окрім як звернутися до… загадкового чоловіка, члена братства — таємного ордену. Кажуть, що він успадкував знання предків про функціонування людської психіки й здатен змінювати життя. Заманлива перспектива, авжеж? Сибіль вирішує ризикнути. Вона крокує надзвичайним шляхом пізнання себе й інших. Та чи стане їй сил розірвати всі кайдани, віднайти себе й схопити за крила омріяну волю — бути собою?..",
"2005-02-07",
default,
"9786171274341",
"1120",
"Лоран ",
"Гунель ",
"lorrran68@mail.com",
"37",
"1988-08-15",
null,
"100.3205"
),
("Королівський убивця. Assassin 2",
"Позашлюбний син принца-наступника. Той, кого переслідувала смерть. Той, хто сам став смертю. Маленький хлопчик, що виріс у холоднокровного найманого вбивцю. На нього чекав шлях мовчазного найманця, покірного служки свого короля. Але тепер Фітц — мисливець на «перекованих», людей, у яких було знищено все людське. Його місія небезпечна. Одна похибка може вартувати життя. Та Фітц не сам. Слід у слід за ним ступає приручений та вихований ним вовк Нічноокий. Наближається час перевороту. Час, коли Фітц має виконати своє призначення. Його переслідуватимуть, на нього полюватимуть. І якщо він хоче врятуватися — він має забути про людську подобу. І стати вовком…",
"2009-10-08",
"Фантастика, фэнтези",
"9786171261891",
"688",
"Гобб  ",
"Робін  ",
"gobb.robin@mail.com",
"54",
"1968-09-26",
"Книжная премия Рунета",
"195"
),
("Позывной «Крест»",
"Виктор Лавров, бывший спецназовец КГБ, получает задание от настоятеля монастыря найти похищенную реликвию, десницу Иоанна Крестителя. Напарницей Лаврова становится Светлана Соломина, по легенде сербка из Белграда. Но настоящее прошлое девушки под грифом «секретно». Следы похищенной десницы ведут в Сирию, раздираемую гражданской войной. Лавров и Соломина оказываются в самом пекле. ",
"2003-11-01",
default,
"9786171274402",
"496",
"Константин",
"Стогний ",
"k.stognyn@mail.com",
"44",
"1988-02-16",
null,
"85.50"
),
("Простая правда",
"Плавно переходя от психологической драмы к описанию сцен в зале суда, «Простая правда» являет собой не только прекрасный рассказ о жизни такого закрытого и необычного сообщества, как амиши, но и волнующее исследование уз любви, дружбы и трудности правильного выбора.",
default,
default,
"9785389159631",
"544",
"Джоди",
"Пиколт ",
"pikolt5588@mail.com",
"55",
"1938-03-18",
null,
"100"
),
("Чарлі і великий скляний ліфт",
"Роальда Дала називають одним з найбільших дитячих письменників ХХ століття і «літературним батьком» Джоан Ролінґ. «Чарлі і великий скляний ліфт» — карколомне продовження найпопулярнішої повісті Р. Дала «Чарлі і шоколадна фабрика» — однієї з тих книжок, які необхідно прочитати кожній дитині. Великий скляний ліфт, створений незрівнянним містером Віллі Вонкою, злітає у відкритий космос, і тут починається просто неймовірний сюжет...",
"2014-06-18",
"Детям 7-12 лет",
"9786175851760",
"272",
"Роальд",
"Дал ",
"ro.dal@mail.com",
"55",
"1987-03-18",
null,
"55"
),
("Грозовой Перевал",
"Это история роковой любви Хитклифа, приемного сына владельца поместья Грозовой Перевал, к дочери хозяина Кэтрин.
Начало событиям положил один вроде бы добрый и безобидный поступок: хозяин поместья спас и приютил маленького беспризорного мальчика Хитклифа. Если бы он знал, к какому бурному круговороту событий это приведет...",
"2001-05-11",
"Классика",
"9786171270985",
"416",
"Эмили ",
"Бронте",
"brontee@mail.com",
"64",
"1968-03-18",
"200 лучших книг по версии BBC",
"320"
),
("Гніздо Кажана",
"Данило Кажанівський продав душу дияволу. Скільки дівочих душ він занапастив! Коли одна дівчина наклала на себе руки, козак Ілько Косозуб зібрав людей для помсти, і Данила спалили. 
Минуло майже сто років. У Миргороді планує весілля Роман Кажанівський, його наречена Ліза мала б радіти… якби не цей холод між ними. Натомість вона все частіше думає про Ярослава, кузена Романа та господаря маєтку «Гніздо Кажана». Чорні язики кажуть, що він ще гірший від свого предка. Та її нестримно тягне до нього. Між ними — прірва і гострі уламки минулого. Аби не втратити Лізу, Роман розповідає, що Ярослав — справжнє чудовисько. Та поступово Ліза усвідомлює, що справжній монстр не завжди той, що з чорними крилами…",
default,
"Историко-приключенческие",
"9786171271357",
"336",
"Дарина ",
"Гнатко",
"gnatko.d@mail.com",
"35",
"1985-03-18",
"Книжная премия Рунета ",
"210.999"
),
("Містер Мерседес",
"Спогади про нерозкритий злочин не дають спокою колишньому поліцейському Біллу Годжесу. Він мав упіймати злочинця, який на вкраденому «мерседесі» навмисне вбив та покалічив десятки людей, але… Одного дня Білл отримує листа від того самого таємничого вбивці. Він обіцяє, що наступного разу жертв буде більше! Це був тільки початок… Білл знову повертається до роботи. Ставки в цій смертельній грі надто високі…",
"2017-06-08",
"Современные авторы",
"9786171274754",
"544",
"Стивен ",
"Кинг",
"king@mail.com",
"55",
"1975-02-08",
"Букеровская премия",
"200"
),
("Аномалія",
"Гамбург, наші дні. Науковця Александера Бунге знаходять мертвим у власному кабінеті. Він був одним з учасників експериментів з виявлення гравітаційної аномалії в кристалах. Агент спецслужби Маркус Бруннер починає розслідування. ",
"2018-09-28",
default,
"9786171274358",
"384",
"Андрій ",
"Новік",
"anovik@mail.com",
"35",
"1990-02-08",
null,
"60"
),
("Кровь мага",
"Юрос и Антиопия разделены непроходимыми морями. Но раз в двенадцать лет, во время Лунного Прилива, вода опускается и открывается мост Левиафана, соединяющий восток с западом на короткие два года. Этого времени хватит, чтобы боевые маги Юроса навсегда поработили мир Антиопии. Вот только в их продуманном плане появляются непредвиденные обстоятельства — трое эмигрантов из Антиопии, оказавшиеся в самом сердце Юроса. Они — единственное спасение для своего края и гибель для захватчиков. Грядет новый священный поход. Император Юроса собирает все силы, ненависть и подлость в армии боевых магов. Но они не подозревают, с чем столкнутся, когда мост Левиафана распахнет свои врата в последний раз… ",
default,
default,
"9786171271159",
"384",
"Дэвид  ",
"Хаир ",
"d.hair@mail.com",
"38",
"1983-02-08",
"ТОП лучших книг по версии Amazon",
"180.9090"
),
("Мэри Бартон",
"Мэри Бартон — дочь манчестерского ткача. Она красива и ума, но бедна, как и вся ее семья. Девушка мечтает вырваться из нищеты. И ухаживания богатого Гарри Карсона оказываются очень кстати. Желая выйти за него замуж, девушка отвергает влюбленного в нее Джема Уилсона, простого парня и друга детства. Казалось бы, сделанный выбор подарит Мэри счастье. Ее семья больше не будет нуждаться и нищенствовать. Их будут почитать и уважать. Трагическая и внезапная смерть Гарри перечеркивает все. В убийстве юноши обвиняют Джема. Но он невиновен. И Мэри единственная может спасти его. И себя. Ведь только его она любила по-настоящему все это время…",
default,
default,
"9786171274518",
"528",
"Мэри",
"Бартон",
"bartoon@mail.com",
"33",
"1988-02-08",
null,
"55"
),
("Sapiens. Людина розумна. Історія людства від минулого до майбутнього",
"Дослідження, що ламає усталені уявлення про земну історію від появи людини й народження мови до наших днів та примушує задуматись: шлях розвитку наших предків міг бути зовсім іншим. Долучіться до історичної розвідки, і вас приголомшать неочікувані й сміливі припущення. У книжці ви не знайдете нудної хронології і сухих дат, але разом з автором будете розмірковувати про численні «чому?»",
"2015-06-18",
"Учебная литература",
"9786171215313",
"544",
"Юваль",
"Харари",
"hararari@mail.com",
"39",
"1981-02-08",
"Світовий бестселер № 1 за версією The New York Times",
"145"
),
("Фиктивный брак",
"Штамп в паспорте, пара свадебных фотографий для прессы — и все, думала София. Больше ей не придется терпеть этого напыщенного и самолюбивого Андрея. По совместительству — ее мужа. Фиктивного. Родители настояли на выгодном браке, обещали, что жених — идеальный во всех отношениях мужчина из хорошей семьи. ",
default,
"Романы о любви",
"9796171274587",
"320",
"Натали",
"Соболевская",
"sobol.nat@mail.com",
"30",
"1990-02-08",
null,
"50"
),
("Джедайські техніки",
"Щоб усе встигнути — розставляй пріоритети. Знайома істина? Ще б пак! Та коли папка «Вхідні» от-от вибухне непрочитаними листам, невиконані справи буквально засипають з головою, а запас мислепалива падає до нульової позначки, здається, що час кликати на допомогу джедаїв. Однак не такий страшний дедлайн, як його малюють. І від прокрастинації втекти легше, аніж від Дарта Вейдера. Головне — навчитися максимально ефективно користуватися ресурсами, «мозковими» та часовими. І тут вже не обійтися без Майстра Йоди у сфері продуктивності.",
"2015-06-06",
"Психология",
"9786171251106",
"240",
"Максим",
"Дорофеев",
"m.dorofee@mail.com",
"45",
"1987-02-08",
null,
"67"
);

select * from books;

set sql_safe_updates = 0;
update books set sername_of_author = "Petrov" where title = "Джедайські техніки";
update books set sername_of_author = "Novikov" where title = "Аномалія";
set sql_safe_updates = 1;

select count(*) from books where author_awards is not null;

select * from books where count_of_pages = (select min(count_of_pages) from books);
 
select max(count_of_pages) from books;
 
select avg(price) from books;
 
select count(*) from books where category = "Классика";
 
select min(price) from books;

select * from books where price = (select min(price) from books);

select * from books where price like '%.____' order by title;

select * from books order by date_of_publication limit 5, 5;
select * from books order by date_of_publication limit 10, 6;

select * from books where price like '%6.5%';
select * from books where isbn like '%17127%';
select * from books where date_of_publication like '2018%';

select * from books where price between 50 and 120;
select * from books where price not between 200 and 600;

select * from books;

set sql_safe_updates = 0;
delete from books where id = 5;
delete from books where title = "Джедайські техніки";
delete from books where isbn = "9796171274587";
set sql_safe_updates = 1;



 
 
 
