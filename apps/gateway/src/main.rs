use anyhow::Result;

#[tokio::main]
async fn main() -> Result<()> {
	macrostack_tracing::init("example-service")?;
	Ok(())
}

