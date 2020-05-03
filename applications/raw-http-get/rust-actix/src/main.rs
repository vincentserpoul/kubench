use actix::clock;
use actix_web::{web, App, HttpRequest, HttpServer};
use std::time::Duration;

async fn index(_req: HttpRequest) -> &'static str {
    clock::delay_for(Duration::from_millis(26)).await;
    "!"
}

#[actix_rt::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| App::new().service(web::resource("/*").to(index)))
        .bind("0.0.0.0:8080")?
        .run()
        .await
}
