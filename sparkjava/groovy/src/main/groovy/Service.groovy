import static spark.Spark.*

//class Service {
  //  static def main(args) {
        get('/', { req, res -> "Hello World!\n" })
        get('/hello', { req, res -> "Hello World!\n" })
        get('/hello/', { req, res -> "Hello World!\n" })
        get("/hello/:name", { req, res -> "Why, Hello ${req.params(":name")}!\n" })

  //  }
//}
