package com.mycompany.app;
import static spark.Spark.*;

public class App {
    public static void main(String[] args) {
        get("/hello", (req, res) -> "Hello World!\n");
        get("/", (req, res) -> "Hello World!\n");
        get("/hello/", (req, res) -> "Hello World!\n");
        get("/hello/:name", (request, response) -> {
          return "Why, Hello " + request.params(":name") + "!\n";
        });

    }
}
