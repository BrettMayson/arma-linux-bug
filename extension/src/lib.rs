use arma_rs::{rv, rv_handler};

#[macro_use]
extern crate arma_rs_macros;

#[rv(thread=true)]
fn ping(data: String) {
    rv_callback!(
        "test",
        "pong",
        data
    );
}

#[rv_handler]
fn init() {}
