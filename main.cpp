#include <iostream>
#include <string>
#include <memory>

#include "luaScript.hpp"

int main() {
    std::string scriptPath;

    try {
        std::cout << "Script lua: ";
        std::cin >> scriptPath;

        auto luaScript = std::make_unique<LuaScript>(scriptPath.c_str());

        std::cin.ignore();
        std::cin.get();
        return 0;
    } catch (const std::exception& e) {
        std::cerr << e.what();
        std::cin.ignore();
        std::cin.get();
        return 1;
    }
}
