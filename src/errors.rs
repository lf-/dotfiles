use requests;

error_chain! {
    foreign_links {
        requests::Error, Requests;
    }
}
