import cffi


LIB_PATH = "../c/out/main.so"

ffi = cffi.FFI()
ffi.cdef("""
    struct greeting {
        char* greeting;
        char* greetee; 
    };
    struct greeting hello(char* greetee);
""")

lib = ffi.dlopen(LIB_PATH)
hello = lib.hello

c_return = hello(b"from Python with cffi")
greeting = f"{ffi.string(c_return.greeting).decode('utf-8')} {ffi.string(c_return.greetee).decode('utf-8')}"
print(greeting)
