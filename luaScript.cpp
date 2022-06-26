#include <stdexcept>

#include "luaScript.hpp"

extern "C" {
#include "lualib/lua.h"
#include "lualib/luaconf.h"
#include "lualib/lualib.h"
}

LuaScript::LuaScript(const char* scriptPath) : m_L(luaL_newstate()) {
    luaL_openlibs(m_L);

    if (luaL_dofile(m_L, scriptPath) != LUA_OK) {
        lua_close(m_L);

        throw std::runtime_error("Falha ao ler script Lua.");
    } else {
        lua_getglobal(m_L, "main");
        lua_isfunction(m_L, -1);

        const int numArgs = 0, numReturns = 0;

        lua_pcall(m_L, numArgs, numReturns, 0);
    }
}

LuaScript::~LuaScript() {
    lua_close(m_L);
}
