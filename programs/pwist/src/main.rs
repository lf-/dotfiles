fn main() {
    let f = std::env::args().skip(1).next().unwrap();

    println!("{:#x?}", plist::Value::from_file(f));
}
