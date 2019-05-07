package io.github.microservices.demo;

import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.is;

@QuarkusTest
public class ShoesResourceTest {

    @Test
    public void testHelloEndpoint() {
        given()
          .when().get("/shoes")
          .then()
             .statusCode(200)
             .body(is("hello"));
    }

}