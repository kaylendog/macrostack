use anyhow::Result;
use macrostack_protocol::hello::{
    greeter_server::{Greeter, GreeterServer},
    HelloReply, HelloRequest,
};

use tonic::{transport::Server, Request, Response, Status};

#[derive(Default)]
struct MacrostackGreeter;

#[tonic::async_trait]
impl Greeter for MacrostackGreeter {
    async fn say_hello(
        &self,
        request: Request<HelloRequest>,
    ) -> Result<Response<HelloReply>, Status> {
        Ok(Response::new(HelloReply {
            message: format!("Hello {}!", request.into_inner().name),
        }))
    }
}

#[tokio::main]
async fn main() -> Result<()> {
    let addr = "[::1]:50051".parse()?;
    let greeter = MacrostackGreeter::default();

    Server::builder()
        .add_service(GreeterServer::new(greeter))
        .serve(addr)
        .await?;

    Ok(())
}
