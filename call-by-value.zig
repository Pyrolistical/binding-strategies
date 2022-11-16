const std = @import("std");

const Bar = struct { value: u8 };

const Foo = struct { bar: Bar };

fn add(foo: Foo, b: u8) u8 {
    return foo.bar.value + b;
}

pub fn main() void {
    var bar = Bar{ .value = 1 };
    const foo = Foo{ .bar = bar };
    bar.value = 2;

    const result = add(foo, 3);

    std.debug.print("{}\n", .{result});
}
