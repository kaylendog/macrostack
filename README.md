# macrostack

An example of a full-stack, microservice-based application written in Rust and TypeScript.

## OS-Level Dependencies

- [Rust](https://www.rust-lang.org/tools/install)
- [Node.js](https://nodejs.org/en/download/)
- [pnpm](https://pnpm.io/installation)

## Global PNPM Dependencies

- [buf](https://docs.buf.build/installation)

## Structure

Below is a brief overview of the structure of this repository.

- `/apps` - This directory contains the source code for applications deployed publicly.
- `/common` - This directory contains the source code for the common libraries in both TypeScript and Rust.
- `/crates` - This directory contains the source code for the crates written in Rust.
- `/infrastructure` - This directory contains the Terraform infrastructure-as-code for the project.
- `/packages` - This directory contains the source code for the packages written in TypeScript.
- `/services` - A dedicated directory containing the source code for the project's microservices.

## License

All code in this repository is licensed under a dual MIT/Apache-2.0 license, at your option. There are some exceptions to this, which are noted in the relevant projects' READMEs. See [LICENSE-MIT](LICENSE-MIT) and [LICENSE-APACHE](LICENSE-APACHE) for more details.
