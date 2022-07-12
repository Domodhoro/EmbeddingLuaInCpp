#include <iostream>
#include <string>
#include <memory>

using std::cout;
using std::cin;
using std::cerr;
using std::string;
using std::exception;
using std::make_unique;

#include "luaScript.hpp"

int main() {
    string scriptPath;

    try {
        cout << "Script lua: ";
        cin >> scriptPath;

        auto luaScript = make_unique<LuaScript>(scriptPath.c_str());

        cin.ignore();
        cin.get();

        return 0;
    } catch (const exception& e) {
        cerr << e.what();
        cin.ignore();
        cin.get();

        return 1;
    }
}
