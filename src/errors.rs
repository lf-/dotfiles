use requests;

error_chain! {
    foreign_links {
        Requests(requests::Error);
    }
}
