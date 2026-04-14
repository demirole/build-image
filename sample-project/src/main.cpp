#include <iostream>

int add(int a, int b) {
    return a + b;
}

int main(void) {
    std::cout << "Hello from the OpenShift C/C++ pipeline!\n";
    std::cout << "2 + 3 = " << add(2, 3) << std::endl;
    return 0;
}
