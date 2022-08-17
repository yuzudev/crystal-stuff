# I don't know how the fuck I did this but it works

# crystal build lib.cr -o lib --cross-compile --target "x86_64-unknown-linux-gnu" --static --release --link-flags "-dynamiclib"
# cc lib.o -o liblib.so -rdynamic -shared -W -lpcre -lm -lgc -lpthread -levent  -lrt -lpthread -ldl

# credits:
# https://gist.github.com/keplersj/3bd3aadd71db206e828f
fun add = Add(a: Int32, b: Int32): Int32
    GC.init

    LibCrystalMain.__crystal_main(0, Pointer(Pointer(UInt8)).null)

    (a + b)
end