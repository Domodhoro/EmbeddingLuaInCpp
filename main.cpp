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

        auto luaScript = std::make_unique<LuaScript>(scriptPath.c_str());

        cin.ignore();
        cin.get();
        return 0;
    } catch(const std::exception& e) {
        cerr << e.what();
        cin.ignore();
        cin.get();
        return 1;
    }
}
