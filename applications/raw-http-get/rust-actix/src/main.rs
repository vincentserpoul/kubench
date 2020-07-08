use actix_web::{web, App, HttpRequest, HttpServer};

async fn index(_req: HttpRequest) -> &'static str {
    "!"
}

#[actix_rt::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| App::new().service(web::resource("/*").to(index)))
        .bind("0.0.0.0:8080")?
        .run()
        .await
}
