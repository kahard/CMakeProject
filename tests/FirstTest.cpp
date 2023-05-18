#include "../libTest/libTest2/LibTest2.h"
#include "CppUTest/TestHarness.h"

TEST_GROUP(FirstTestGroup) {

  LibTest2 *libTest2 = new LibTest2();
  void setup() {
    // Init stuff
  }

  void teardown() { delete libTest2; }
};

TEST(FirstTestGroup, FirstTest) { CHECK_TRUE(true); }

TEST(FirstTestGroup, CheckNumber) { CHECK_EQUAL(5, libTest2->getNumber()); }