// please look at lib.cr first, then do:
// deno run --unstable --allow-ffi demo.ts

// @ts-expect-error: unstable api
const dylib = Deno.dlopen(
    "./liblib.so",
    {
        "Add": { parameters: ["i32", "i32"], result: "i32" },
    },
);

console.log(dylib.symbols.Add(5, 5));