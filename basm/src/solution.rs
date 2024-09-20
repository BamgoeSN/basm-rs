<<<<<<< HEAD
use basm::prelude::*;

pub fn main() {
	let mut sc: Reader = Default::default();
	let mut wr: Writer = Default::default();
}
=======
use basm::platform::io::{Print, Reader, ReaderTrait, Writer};

use basm::utils::*;
pub fn main() {
    let mut reader: Reader = Default::default();
    let mut writer: Writer = Default::default();
    let a = reader.f64();
    let b = reader.f64();
    writer.println(a.atan2(b));
}

>>>>>>> 1bf3ef4 (Move f64 trait under utils/)
