import 'package:http/http.dart ' as http;
import 'package:untitled/models/post.dart';

class RemoteService {
  Future<List<Post>?> getPost() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
