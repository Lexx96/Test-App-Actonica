/// Класс предоставления данных модуля main_screen
class MainScreenRepository {
  /// Получение списка всех товаров
  String getAllProductsRepository() {
    return '''
    [
    {
    "product" : "pizza",
    "info" : [
    {
         "title":"Супер острая с пепперони",
         "description":"Филе куриное, помидор, картофель фри, соус",
         "price":3000,
         "image":"https://www.culture.ru/storage/images/76d0236890dbbaf392af156d53295a75/476d8366995c5d7e26be5e112704bc17.jpeg"
    },
    {
         "title":"Большая Пицца '4 мяса' 1050 г",
         "description":"Филе куриное, помидор, картофель фри, соус",
         "price":2000,
         "image":"https://etopizza.ru/wp-content/uploads/2021/05/77-e1620050430774.jpg"
    },
    {
         "title":"Большая Пицца '4 сыра' 1050 г",
         "description":"Филе куриное, помидор, картофель фри, соус",
         "price":1000,
         "image":"https://ideireceptov.ru/wp-content/uploads/2021/10/pitstsa-syr-perets.jpg"
    },
    {
         "title":"Супер острая с пепперони",
         "description":"Филе куриное, помидор, картофель фри, соус",
         "price":2000,
         "image":"https://www.culture.ru/storage/images/76d0236890dbbaf392af156d53295a75/476d8366995c5d7e26be5e112704bc17.jpeg"
    },
    {
         "title":"Большая Пицца '4 мяса' 1050 г",
         "description":"Филе куриное, помидор, картофель фри, соус",
         "price":2000,
         "image":"https://etopizza.ru/wp-content/uploads/2021/05/77-e1620050430774.jpg"
    },
    {
         "title":"Большая Пицца '4 сыра' 1050 г",
         "description":"Филе куриное, помидор, картофель фри, соус",
         "price":2000,
         "image":"https://ideireceptov.ru/wp-content/uploads/2021/10/pitstsa-syr-perets.jpg"
    }
    ]
    },
    {
    "product" : "burgers",
    "info" : [
    {
         "title":"Бургер Вишневая девятка ( 310 г )",
         "description":"Бургер с сочной говяжьей котлетой, сыром Чеддер, пряной вишней и соусом на основе сыра Пармезан",
         "price":430,
         "image":"https://avatars.mds.yandex.net/get-zen_doc/3927246/pub_5f4f36c4994475374dbc79ae_5f4f388fc4282416a5389c4d/scale_1200"
    },
    {
         "title":"Бургер Варик ( 255 г )",
         "description":"Бургер с сочной говяжьей котлетой, сыром Чеддер, солеными огурцами, салатом и кетчупом",
         "price":600,
         "image":"https://static.tildacdn.com/tild6662-6366-4633-b332-613564376165/photo.jpg"
    },
    {
         "title":"Бургер Классика ( 300 г )",
         "description":"Бургер с сочной говяжьей котлетой, маринованными огурцами, миксом салата, сыром Чеддер и трюфельно-томатным соусом",
         "price":599,
         "image":"https://ideireceptov.ru/wp-content/uploads/2021/10/pitstsa-syr-perets.jpg"
    },
    {
         "title":"Бургер Цезарь ( 390 г )",
         "description":"Бургер с котлетой из куриного фарша, свежими овощами, луковыми хлопьями, сыром Чеддер и фирменным соусом",
         "price":300,
         "image":"https://piginfo.ru/upload/iblock/c13/burger.jpg"
    },
    {
         "title":"Бургер Jack Daniels ( 325 г )",
         "description":"Бургер с сочной говяжьей котлетой, свежими овощами, сыром Чеддер и легендарным соусом jack Daniels",
         "price":370,
         "image":"https://1.bp.blogspot.com/-4ByVQyRKcvA/YAbXlEIaxMI/AAAAAAAEphU/KO-aVDfga90jH2erlFn_HKEg8D9964q-ACLcBGAsYHQ/s1200/140737527614771_23c8.jpg"
    },
    {
         "title":"Бургер Гонолулу ( 305 г )",
         "description":"Бургер с котлетой из баранины, маринованными огурцами, свежими овощами, сыром Чеддер и соусом на основе острого перца и ткемали",
         "price":370,
         "image":"https://kartinkin.net/uploads/posts/2021-04/thumbs/1617232169_2-p-sochnii-burger-krasivo-2.jpg"
    }
    ]
    },
    {
    "product" : "snacks",
    "info" : [
    {
         "title":"Снежный краб ( 167 г )",
         "description":"Вариант «Крабового» салата в тарталетках: снежный краб, варёное яйцо, сыр, зеленый лук.",
         "price":270,
         "image":"https://caterme.ru/sites/default/files/styles/food_view/public/food_images/user_53173/food_388719.jpg?itok=X-pJZZZJ"
    },
    {
         "title":"Рулетики из баклажанов с творогом ( 1 800 г )",
         "description":"Хит на все времена! Рулетики из баклажанов гриль с начинкой из творога с со свежей зеленью.",
         "price":2300,
         "image":"https://caterme.ru/sites/default/files/styles/food_view/public/food_images/user_53173/food_388727.jpg?itok=syO4KHAZ"
    },
    {
         "title":"Блинные роллы с лососем и овощами ( 1 700 г )",
         "description":"Блинные роллы со слабосоленым лососем, огурцом, салатным листом, сливочным сыром.",
         "price":2600,
         "image":"https://caterme.ru/sites/default/files/styles/food_view/public/food_images/user_53173/food_403121.jpg?itok=x99n1aUy"
    },
        {
         "title":"«Бигуди» (1 500 г )",
         "description":"Нежные и сочные мини-рулетики из слайса свежего огурца, начиненные сливочным сыром и лососем слабой соли.",
         "price":3000,
         "image":"https://caterme.ru/sites/default/files/styles/food_view/public/food_images/user_53173/food_388722.jpg?itok=PvpwJF_2"
    },
    {
         "title":"Рулетики из кабачка с творогом ( 1 300 г )",
         "description":"Рулетики из кабачка с начинкой из фермерского творога с зеленью и специями.",
         "price":1900,
         "image":"https://caterme.ru/sites/default/files/styles/food_view/public/food_images/user_53173/food_403117.jpg?itok=PltFZyzJ"
    }
    ]
    },
    {
    "product" : "desserts",
    "info" : [
    {
         "title":"Тарталетки «Фруктовое чудо» ( 700 г )",
         "description":"Яркие десертные тарталетки из песочного теста с начинкой из фруктового микса и сладкого сырного крема с сочными фруктами.",
         "price":1590,
         "image":"https://canapeclub.ru/image/cache/webp/catalog/product/04-09-2019/fruktovoechudo-min-275x275.webp"
    },
    {
         "title":"Крокембуш «Малина-манго» в верринах ( 960 г ) ",
         "description":"Тающий во рту десерт из мини-профитроля с начинкой из малинового крема, залитого нежнейшим сметанным кремом под двумя видами фруктового пюре (малина и манго).",
         "price":1890,
         "image":"https://canapeclub.ru/image/cache/webp/catalog/product/08-04-2019/krokenbushvverrinah-275x275.webp"
    },
    {
         "title":"Клубника в шоколаде ( 375 г )",
         "description":"Ассорти из свежей сочной клубники в трех видах шоколада: темном, белом и розовом. Клубника в шоколаде станет прекрасным украшением и дополнением любого стола и порадует всех любителей свежих ягод. Десерт украшен шоколадной глазурью и кондитерской посыпкой, изготавливается на собственном производстве непосредственно перед доставкой, что позволяет ему оставаться свежим и тающим во рту.",
         "price":1990,
         "image":"https://canapeclub.ru/image/cache/webp/catalog/desert/klubnikavshokolade-275x275.webp"
    },
    {
         "title":"Торт «Медовк» (1 250 г )",
         "description":"Основу одного из наиболее популярных тортов «Медовик» составляют пропитанные цветочным медом бисквиты. Голубика и красная смородина оживляют классический рецепт и дают небольшую кислинку медовому десерту, а украшает торт нежнейшая сахарная пудра. Торт выпекается на собственном производстве непосредственно перед доставкой, что позволяет ему оставаться свежим и буквально таять во рту.",
         "price":1390,
         "image":"https://canapeclub.ru/image/cache/webp/catalog/desert/tortmedovik-275x275.webp"
    },
    {
         "title":"Десерт «Крем-брюле» ( 950 г )",
         "description":"Десерт из заварного ванильного крема с хрустящей карамельной корочкой. Крем-брюле подается в отдельных формах, что делает его отличным решением для банкетного стола. Десерт изготавливается на собственном производстве непосредственно перед доставкой, что позволяет ему оставаться свежим и тающим во рту.",
         "price":1590,
         "image":"https://canapeclub.ru/image/cache/webp/catalog/desert/desertkrem-brjule-464x464.webp"
    }
    ]
    }
    ]''';
  }
}
