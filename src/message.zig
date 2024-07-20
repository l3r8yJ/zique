const std = @import("std");
const Type = std.builtin.Type;
const ArrayList = std.ArrayList;

/// Just a message in queue.
pub fn Message(comptime T: type) type {
    return struct {
        data: *const T,

        /// Frees allocated memory for a message
        pub fn deinit(_: Message(T)) void {
            // @todo #1:45min\DEV Write dealloc mechanism for Message type.
            //  Current implementation, suddenly,  won't work.
            //  After implementation uncomment the defer section in
            //  "creates a message" test.
        }
    };
}
