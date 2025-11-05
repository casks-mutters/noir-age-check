fn main(age: u8) -> pub bool {
    // Check that the private input age is at least 18.
    let ok = age >= 18u8;

    // If condition fails, proving will fail (assert triggers).
    assert(ok);

    // Public output: true (only when age >= 18).
    ok
}
