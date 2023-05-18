#include "first_folder/Foo.h"
// #include "second_folder/Boo.h"
#include "Loo.h"
#include "libTest/libTest2/LibTest2.h"
#include <iostream>

using namespace std;
int main() {
  cout << "Hello world!" << endl;
  Foo foo;
  foo.speak();

  Loo loo;
  loo.speak();
  return 0;
}