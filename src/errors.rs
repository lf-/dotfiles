use requests;

#[derive(Debug, Fail)]
pub enum Error {
    #[fail(display = "requests error {}", _0)]
    Requests(#[cause] requests::Error),
}

impl From<requests::Error> for Error {
    fn from(err: requests::Error) -> Self {
        Error::Requests(err)
    }
}
