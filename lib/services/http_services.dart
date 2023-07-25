// import 'package:http/http.dart' as http;


// class HttpService {
//   // static var client = http.Client();

//   static Future<List<ProductModel>> fetchProducts() async {
//     var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));

//     if (response.statusCode == 200) {
//       var data = response.body;
//       return productModelFromJson(data);
//     } else {
//       // throw Exception();
//       var data = response.body;
//       return productModelFromJson(data);
//     }
//   }
// }