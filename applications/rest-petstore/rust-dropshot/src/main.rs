use dropshot::{
    endpoint, ApiDescription, ConfigDropshot, ConfigLogging, ConfigLoggingLevel, HttpError,
    HttpResponseOk, HttpServer, PaginationParams, Path, Query, RequestContext, ResultsPage,
    TypedBody,
};
use schemars::JsonSchema;
use serde::{Deserialize, Serialize};
use std::sync::Arc;

#[tokio::main]
async fn main() -> Result<(), String> {
    // Set up a logger.
    let log = ConfigLogging::StderrTerminal {
        level: ConfigLoggingLevel::Info,
    }
    .to_logger("petstore")
    .map_err(|e| e.to_string())?;

    /*
     * Build a description of the API.
     */
    let mut api = ApiDescription::new();
    api.register(get_pet_by_id).unwrap();
    api.register(update_pet_with_form).unwrap();
    api.register(find_pets_by_tags).unwrap();

    // Start the server.
    let mut server = HttpServer::new(
        &ConfigDropshot {
            bind_address: "0.0.0.0:8080".parse().unwrap(),
        },
        api,
        Arc::new(()),
        &log,
    )
    .map_err(|error| format!("failed to start server: {}", error))?;

    let server_task = server.run();
    server.wait_for_shutdown(server_task).await
}

#[allow(dead_code)]
#[derive(Deserialize, Serialize, JsonSchema)]
#[serde(rename_all = "camelCase")]
struct Pet {
    id: Option<i64>,
    category: Option<Category>,
    name: String,
    photo_urls: Vec<String>,
    tags: Option<Vec<Tag>>,

    /// pet status in the store
    status: Option<PetStatus>,
}

#[allow(dead_code)]
#[derive(Deserialize, Serialize, JsonSchema)]
#[serde(rename_all = "camelCase")]
struct Category {
    id: i64,
    name: String,
}

#[allow(dead_code)]
#[derive(Deserialize, Serialize, JsonSchema)]
#[serde(rename_all = "camelCase")]
struct Tag {}

#[allow(dead_code)]
#[derive(Deserialize, Serialize, JsonSchema)]
#[serde(rename_all = "lowercase")]
enum PetStatus {
    Available,
    Pending,
    Sold,
}

#[allow(dead_code)]
#[derive(Deserialize, JsonSchema)]
#[serde(rename_all = "camelCase")]
struct PathParams {
    pet_id: i64,
}

#[allow(unused_variables)]
#[endpoint {
    method = GET,
    path = "/pet/{petId}",
    tags = [ "pet" ],
}]
/// Get the pet with the specified ID
async fn get_pet_by_id(
    rqctx: Arc<RequestContext>,
    path_params: Path<PathParams>,
) -> Result<HttpResponseOk<Pet>, HttpError> {
    let pet = Pet {
        id: None,
        category: None,
        name: "Brickley".to_string(),
        photo_urls: vec![],
        tags: None,
        status: None,
    };

    Ok(HttpResponseOk(pet))
}

#[allow(unused_variables)]
#[endpoint {
    method = POST,
    path = "/pet",
    tags = [ "pet" ],
}]
/// Add a new pet to the store
async fn update_pet_with_form(
    rqctx: Arc<RequestContext>,
    body: TypedBody<Pet>,
) -> Result<HttpResponseOk<()>, HttpError> {
    unimplemented!()
}

#[allow(dead_code)]
#[derive(Deserialize, JsonSchema)]
#[serde(rename_all = "camelCase")]
struct FindByTagsScanParams {
    /// Tags to filter for
    tags: String,
}

#[allow(dead_code)]
#[derive(Serialize, Deserialize, JsonSchema)]
#[serde(rename_all = "camelCase")]
struct FindByTagsPageSelector {
    tags: String,
    last: String,
}

// TODO update when we have array query params
#[allow(unused_variables)]
#[endpoint {
    method = GET,
    path = "/findPetsByTags",
    tags = [ "pet" ],
}]
/// Find pets by tags
async fn find_pets_by_tags(
    rqctx: Arc<RequestContext>,
    query: Query<PaginationParams<FindByTagsScanParams, FindByTagsPageSelector>>,
) -> Result<HttpResponseOk<ResultsPage<Pet>>, HttpError> {
    let pag_params = query.into_inner();
    let limit = rqctx.page_limit(&pag_params)?.get();
    let tmp;
    let (pets, scan_params) = match &pag_params.page {
        dropshot::WhichPage::First(scan_params) => {
            let pet = Pet {
                id: None,
                category: None,
                name: "Brickley".to_string(),
                photo_urls: vec![],
                tags: None,
                status: None,
            };
            (vec![pet], scan_params.clone())
        }
        dropshot::WhichPage::Next(page_selector) => {
            let pet = Pet {
                id: None,
                category: None,
                name: "Lizzie".to_string(),
                photo_urls: vec![],
                tags: None,
                status: None,
            };
            tmp = FindByTagsScanParams {
                tags: page_selector.tags.clone(),
            };
            (vec![pet], &tmp)
        }
    };
    Ok(HttpResponseOk(ResultsPage::new(
        pets,
        scan_params,
        |last, scan_params| FindByTagsPageSelector {
            tags: scan_params.tags.clone(),
            last: last.name.clone(),
        },
    )?))
}
