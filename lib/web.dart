import 'package:http/http.dart' as http;

class Web
{
  String url;
  String user;
  String pass;
  Web (String url,  String user, String pass) 
  {
    this.url=url;
    this.user=user;
    this.pass=pass;
  }

  Future<http.Response> getInfo() {
    var response = http.get('https://portal.dlrg-oberursel.de/rest.php?user=andreas&pass=zampano&method=getApiVersion');
    response.then((resp){print(resp.body);});
    return response;
  }
}

