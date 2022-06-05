#include <iostream>
#include <memory>

#include "luaScript.hpp"

int main() {
    std::string scriptPath;

    try {
        std::cout << "Digite o caminho do script lua: ";
        std::cin >> scriptPath;

        auto luaScript = std::make_unique<LuaScript>(scriptPath.c_str());

        std::cin.get();
        return 0;
    } catch(const std::exception& e) {
        std::cerr << e.what();
        return 1;
    }
}
