#include <stdio.h>


struct greeting {
	char* greeting;
	char* greetee;
};


struct greeting hello(char* greetee) {
	struct greeting g = {"Hello", greetee};
	return g;
}


int main() {
   struct greeting greeting = hello("from C");
   printf("%s %s\n", greeting.greeting, greeting.greetee);
   return 0;
}
