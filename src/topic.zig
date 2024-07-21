const Partition = @import("partition.zig").Partition;

/// Topic to subscribe
pub const Topic = struct {
    name: []const u8,
    partitions: []const Partition,
};
