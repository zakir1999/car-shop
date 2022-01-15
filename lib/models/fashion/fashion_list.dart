import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/fashion/fashion.dart';

class FashionProvider with ChangeNotifier {
  String? _searchString;
  set setSearchString(String data) {
    _searchString = data;
    notifyListeners();
  }

  UnmodifiableListView<Fashion> get products => _searchString == null
      ? UnmodifiableListView(_productList)
      : UnmodifiableListView(_productList.where(
          (element) =>
              element.name
                  .toLowerCase()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.price
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()) ||
              element.brandName
                  .toString()
                  .contains(_searchString!.toLowerCase().toString()),
        ));

  final List<Fashion> _productList = [
    Fashion(
        productId: 'F-001',
        name: 'Jacket: J-569',
        price: 2150.0,
        discount: 50.0,
        categoryName: 'Fashion',
        subCategoryName: 'Jacket',
        brandName: 'Colourrose',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/269741576_4970419966330909_501717472537845676_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=730e14&_nc_ohc=hX50KLp1N4cAX-k8_gy&tn=3GpmfWT7cvuPzAht&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_uWnaAaObDOYhNedjaIiqzZQE_w_bMr4DgbEsD2ZvBBg&oe=61E69ED7',
        productDetails: 'in stock'),
    Fashion(
        productId: 'F-002',
        name: 'Jacket: J-568',
        price: 2150.0,
        discount: 50.0,
        categoryName: 'fashion',
        subCategoryName: 'jacket',
        brandName: 'Colourrose',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/269704178_4970420132997559_7601861901426932861_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=-Ueu3CODU7MAX8iDqhc&_nc_ht=scontent.fdac27-1.fna&oh=00_AT9NSPi28h2jQ6NKgSVy3Sv7R9D9O7V03eWaNMo6CuwLuQ&oe=61E6E808',
        productDetails: 'Old Television'),
    Fashion(
        productId: 'F-003',
        name: 'Jacket: J-566',
        price: 2150.0,
        discount: 30.0,
        categoryName: 'fashion',
        subCategoryName: 'jacket',
        brandName: 'Colourrose',
        // warrenty: '5 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/269766680_4970419919664247_162953596648872774_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=DrIWZ1b2klUAX_H6ksd&_nc_ht=scontent.fdac27-1.fna&oh=00_AT-G7H_hy6bFgt6A5LdTWK003JdjLDkMePDFATmIkyWxRA&oe=61E69CE7',
        productDetails: 'Smart Television'),
    Fashion(
        productId: 'F-004',
        name: 'Jacket : J-538',
        price: 2150.0,
        discount: 30.0,
        categoryName: 'fashion',
        subCategoryName: 'jacket',
        brandName: 'Sony',
        // warrenty: '5 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/266729019_4926725324033707_5756062628552104350_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_ohc=ocz7kVarDnsAX-Lj0ty&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_1NYLKSlULJ_3it6KPteFuc95S5PEnwSzJSUodVauw7g&oe=61E563A6',
        productDetails: 'Smart Television'),
    Fashion(
        productId: 'F-005',
        name: 'Jacket : J-557',
        price: 2150.0,
        discount: 30.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Sony',
        // warrenty: '5 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/266728787_4926725300700376_1424837502216018966_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=9hHQQ68Ra54AX85ngYT&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_A2bKuk8WFVuKsz-E-mzMA9k9lkA-4X4Xx6ntWEXSjmA&oe=61E5B606',
        productDetails: 'Non Smart Television'),
    Fashion(
        productId: 'F-006',
        name: 'Jacket : J-546',
        price: 350.0,
        discount: 30.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Vision',
        // warrenty: '5 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/265655634_4918894321483474_501286351780142396_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=730e14&_nc_ohc=wEmlhUCH65QAX8CRZBH&_nc_ht=scontent.fdac27-1.fna&oh=00_AT8_tRk7_AR6hfCAcCQEHQ7IdGmgAls3mlwj4spxkkXIsA&oe=61E72CE5',
        productDetails: 'Non Smart Television'),
    Fashion(
        productId: 'F-007',
        name: 'Jacket : J-545',
        price: 100.0,
        discount: 10.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/256092477_4842283365811237_8762444450345912902_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=7uyWupKkHNwAX8OB_-X&_nc_oc=AQnVIe5kGs39yN2hkjJa5rzCyV7q1kznX9iI8pqT75XlGU_XujE3wREM7YpOgCpx2kE&_nc_ht=scontent.fdac27-1.fna&oh=00_AT-OpAlEaK8xYC7Zz-5TTQvkicdZLECSWbaId9Z1BxtK4A&oe=61E59EA6',
        productDetails: 'TV Box'),
    Fashion(
        productId: 'F-008',
        name: 'Jacket : J-546',
        price: 650.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Vision',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/258055794_4842283529144554_1356019696718593641_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_ohc=69iO0K5VAdMAX_CiFCc&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_Hr75hH6Xhx843f8nHxK4WbbggtMUXkqI2fwo9qgj8Cg&oe=61E6A57E',
        productDetails: 'Refrigerator'),
    Fashion(
        productId: 'F-009',
        name: 'Jacket : J-539',
        price: 550.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Vision',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/255835662_4842283279144579_5769804056719845256_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_ohc=D5ld0pt8w4kAX-l2O_W&_nc_ht=scontent.fdac27-1.fna&oh=00_AT9mqcevgpjIS-cSitzz38LQYXb4LcEx6h0Q6oSrwjsBRA&oe=61E6095A',
        productDetails: 'Refrigerator'),
    Fashion(
        productId: '010',
        name: 'Panjabi: P-861',
        price: 650.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Vision',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244691661_4708402915865950_507432142550448962_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=no-3G5A23t4AX-64m_g&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_NKvXcsU4tLwnac5ONt7_naHzXIT3wbwkpdojj8DV4sg&oe=61E6A753',
        productDetails: 'Refrigerator and others'),
    Fashion(
        productId: '011',
        name: 'Panjabi: P-852',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244641895_4708402979199277_6382135535262666884_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=730e14&_nc_ohc=7KzSHyUOndoAX8QBJ0M&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_21T4jXcQxE31PocW0jB81e0EYBQjsVNbHi_uN1hrEcQ&oe=61E6AEA5',
        productDetails: 'Old Refrigerator'),
    Fashion(
        productId: '012',
        name: 'Panjabi: P-857',
        price: 350.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244692281_4708402842532624_3653673882950995426_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_ohc=uXZRQNJ51-QAX-jFWb-&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_ywp4gh5CbyJnKDcORVoKqh2pLyxldJURS6ukuTZVZbQ&oe=61E6C718',
        productDetails: 'Old Refrigerator'),
    Fashion(
        productId: '013',
        name: 'Panjabi: P-858',
        price: 850.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244631838_4708402805865961_942610189294175774_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=A9_XDIrElgYAX_SkRY6&_nc_ht=scontent.fdac27-1.fna&oh=00_AT8EqYGup0I5_6QEJWyuyriblCDl3B6rbTwwgtpzMIvgUw&oe=61E5B68D',
        productDetails: 'Heavy Drone'),
    Fashion(
        productId: '014',
        name: 'Panjabi: P-861',
        price: 550.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244691661_4708402915865950_507432142550448962_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=no-3G5A23t4AX-64m_g&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_NKvXcsU4tLwnac5ONt7_naHzXIT3wbwkpdojj8DV4sg&oe=61E6A753',
        productDetails: 'Drone'),
    Fashion(
        productId: '015',
        name: 'Panjabi: P-813',
        price: 350.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244681927_4708398752533033_1939377642667323054_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_ohc=MCeFyctpt78AX9G9q3Q&_nc_ht=scontent.fdac27-1.fna&oh=00_AT-G34MW1IclHeVxYAojdVp52aeiQSHrctZA5H0iCuFvcw&oe=61E59943',
        productDetails: 'Drone'),
    Fashion(
        productId: '016',
        name: 'Panjabi: P-810',
        price: 450.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244569662_4708397182533190_3385095447866561537_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=38Rrm71neoEAX_Lzl19&_nc_ht=scontent.fdac27-1.fna&oh=00_AT8jQkosPjBb_yPDOFWkE-gln2KJ-NwWrDXiMned64T8dA&oe=61E560BE',
        productDetails: 'Drone'),
    Fashion(
        productId: '017',
        name: 'Panjabi: P-859',
        price: 450.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'DJI',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244773236_4708397169199858_4140074495534879510_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_ohc=puA-KBY8mYgAX-5nZM3&_nc_ht=scontent.fdac27-1.fna&oh=00_AT-qMt5kyH937xUMKzCazzrD4awiYK-IdBD_RkrdwvbARw&oe=61E6EE8C',
        productDetails: 'Drone'),
    Fashion(
        productId: '018',
        name: 'Panjabi: P-849',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244683473_4708389459200629_1137773761891490941_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=AH-bvb-h_bAAX81iSI2&_nc_ht=scontent.fdac27-1.fna&oh=00_AT-XqC_A-Q9knyUQjc4MJWmYgjeKsPOxGfdb9Hm9jk8Hag&oe=61E5AE52',
        productDetails: 'Old Freezer'),
    Fashion(
        productId: '019',
        name: 'Panjabi: P-851',
        price: 200.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244744789_4708389409200634_6152176230071811688_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=ufPBg4Oy7DoAX_hrPgE&tn=3GpmfWT7cvuPzAht&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_jwLmJ5xWwkNVjsy2NEOneivxszOuCTkxGfOg7ucCSiw&oe=61E691D2',
        productDetails: 'Kitchen Item'),
    Fashion(
        productId: '020',
        name: 'Panjabi: P-839',
        price: 200.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244683853_4708389522533956_7543251737450355124_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=730e14&_nc_ohc=GZtS8T_QUNsAX_sOeAM&_nc_oc=AQn7mPo49HYzR45gsmbu3ZfRzIihXLQOKwhjGm3LRFxZrcjT6ToMPDa7gkKWJDd7cJI&_nc_ht=scontent.fdac27-1.fna&oh=00_AT-Pl7z3F4DZtp1wPnCqZa9cGm95Anj1L2TUSFe5ZpOwAw&oe=61E58F39',
        productDetails: 'Kitchen Item'),
    Fashion(
        productId: '021',
        name: 'Panjabi: P-825',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244759296_4708389355867306_580166768453911068_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=Am96mKA0eIoAX9UlUSO&_nc_ht=scontent.fdac27-1.fna&oh=00_AT86FmjbZL_ERCdEEIKRnPV9Smue9bJ17dFHSkuIOBApNQ&oe=61E60552',
        productDetails: 'Old Television'),
    Fashion(
        productId: '022',
        name: 'Panjabi: P-822',
        price: 300.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244693912_4708389345867307_7116280667573836632_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_ohc=BRfRtElKnZ4AX8_t_0d&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_QGIf2merShw4yTOExbSX_eDa3B8QR6G8OJxqOcMv3FQ&oe=61E5D4B4',
        productDetails: 'Kitchen Item'),
    Fashion(
        productId: '023',
        name: 'Panjabi: P-826',
        price: 350.0,
        discount: 30.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244724297_4708389412533967_5011132770097302789_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=HqsosVCXJ5EAX_Fv72R&_nc_ht=scontent.fdac27-1.fna&oh=00_AT9V3ZAbRJJpjzaikSzzBC4qdtB7vkJkU1QEk8JdZGX90g&oe=61E670B5',
        productDetails: 'Kitchen Item'),
    Fashion(
        productId: '024',
        name: 'Panjabi: P-821',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244738707_4708371772535731_8114978498227549041_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_ohc=zioo7oogNX0AX-NXCWo&tn=3GpmfWT7cvuPzAht&_nc_ht=scontent.fdac27-1.fna&oh=00_AT-BTP-bnfSYD-J_Te3xD74Uenbw3QCIyAXLVZMIfQXJkg&oe=61E72469',
        productDetails: 'Best Washing Machine'),
    Fashion(
        productId: '025',
        name: 'Panjabi: P-808',
        price: 150.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244646526_4708372499202325_5691182416863918078_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=8Vd5M1GCNsMAX-TrNeg&tn=3GpmfWT7cvuPzAht&_nc_ht=scontent.fdac27-1.fna&oh=00_AT8-SQcu_cSLMBpvoodr8aXyoft40CdYmHYBL7eiFRDmXQ&oe=61E613AE',
        productDetails: 'Washing Machine'),
    Fashion(
        productId: '026',
        name: 'Panjabi: P-829',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244611998_4708371812535727_5581247025500918575_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_ohc=LpH96M_fnZkAX-976ac&_nc_ht=scontent.fdac27-1.fna&oh=00_AT-UykSkjdCJ5RAWN4k6krvbovesEfAIAJVBBoz1xIT6Zw&oe=61E6CF70',
        productDetails: 'Best Washing Machine'),
    Fashion(
        productId: '027',
        name: 'Panjabi: P-817',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/p960x960/244713634_4708367329202842_553622117402582047_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_ohc=46Hn-ZoziR8AX_F5rmB&_nc_ht=scontent.fdac27-1.fna&oh=00_AT9ATw-jECfkqw_FSc9xayfCnt6ASyj4VHdmzlGrbkhqug&oe=61E5A6D2',
        productDetails: 'Best Washing Machine'),
    Fashion(
        productId: '028',
        name: 'Panjabi: P-819',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244718558_4708367295869512_9009003722739597804_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=S-bKox1IeFoAX88dGv6&_nc_ht=scontent.fdac27-1.fna&oh=00_AT9C76pOuB3wvs1iuDz1-Og1C2OEl6UgzikfYN3R0APx3g&oe=61E61871',
        productDetails: 'Best Washing Machine'),
    Fashion(
        productId: '029',
        name: 'Panjabi: P-801',
        price: 150.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244650406_4708367322536176_8317921657650877759_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=730e14&_nc_ohc=F9Dan1Yy1HYAX-o9mZf&_nc_ht=scontent.fdac27-1.fna&oh=00_AT8ynOTzS5UmmEFfMJrCELEW8FcWzDRHCZwSLPHwWlQxiw&oe=61E56961',
        productDetails: 'Best Choper'),
    Fashion(
        productId: '030',
        name: 'Panjabi: P-818',
        price: 120.0,
        discount: 20.0,
        categoryName: 'electronics',
        subCategoryName: 'robots',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244598041_4708367122536196_3363040410059542146_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=J9gPNHDVjtgAX863Lf1&tn=3GpmfWT7cvuPzAht&_nc_ht=scontent.fdac27-1.fna&oh=00_AT9-rildn3_k3ZGitoqarDXfHSdeGvBy60CipJqBRs6ahg&oe=61E6BD93',
        productDetails: 'Best Drill Mechine'),
    Fashion(
        productId: '031',
        name: 'Panjabi: P-847',
        price: 250.0,
        discount: 50.0,
        categoryName: 'electronics',
        subCategoryName: 'home appliance',
        brandName: 'Unknown',
        // warrenty: '2 years',
        imageUrl:
            'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/244607604_4702998619739713_2902483138830740527_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=Z2ZxwoKIy08AX-ZvlQ4&_nc_ht=scontent.fdac27-1.fna&oh=00_AT-ISvoShygpBsX3g4kvIOGnadscV0EUt9ifGpifhBFJzg&oe=61E618B7',
        productDetails: 'Best Washing Machine'),
  ];
}
