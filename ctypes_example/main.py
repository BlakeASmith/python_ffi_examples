import ctypes



class Greeting(ctypes.Structure):
    _fields_ = [
        ("greeting", ctypes.c_char_p),
        ("greetee", ctypes.c_char_p),
    ]

    def greet(self):
        return f"{self.greeting.decode('utf-8')} {self.greetee.decode('utf-8')}" #type: ignore[any]

lib = ctypes.CDLL("../c/out/main.so")

hello = lib.hello
hello.argtypes = [ctypes.c_char_p]
hello.restype = Greeting


greeting: Greeting = hello(
    b"from Python with ctypes" # This does have to be a byte string
    # a regular string "from Python with ctypes" will throw TypeError
)

print(greeting.greet())

