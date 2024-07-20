const std = @import("std");
const testing = std.testing;
const expectEqual = testing.expectEqual;
const testing_allocator = testing.allocator;
const ArrayList = std.ArrayList;
const Message = @import("message.zig").Message;

test "creates a message" {
    const Dog = struct { name: *const [4:0]u8 };

    const data = Dog{ .name = "Ruby" };
    const msg = Message(Dog){ .data = &data };

    // TODO: will be uncommented after puzzle will solved
    defer Message(Dog).deinit(msg);

    try expectEqual("Ruby", msg.data.name);
}
