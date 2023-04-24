use anyhow::Result;
use warp::Filter;

#[tokio::main]
async fn main() -> Result<()> {
    macrostack_tracing::init("example-service")?;

    let hello = warp::path!("hello" / String).map(|name| format!("Hello, {}!", name));

    warp::serve(hello).run(([127, 0, 0, 1], 8080)).await;

    Ok(())
}
