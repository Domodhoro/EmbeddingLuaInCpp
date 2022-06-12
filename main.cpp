#include <iostream>
#include <string>
#include <memory>

#include "luaScript.hpp"

int main() {    
    using namespace std;

    string scriptPath;

    try {
        cout << "Digite o caminho do script lua: ";
        cin >> scriptPath;

        auto luaScript = make_unique<LuaScript>(scriptPath.c_str());

        cin.ignore();
        cin.get();
        return 0;
    } catch(const exception& e) {
        cerr << e.what();
        cin.ignore();
        cin.get();
        return 1;
    }
}
