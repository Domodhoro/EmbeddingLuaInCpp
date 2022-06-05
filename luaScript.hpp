#ifndef LUA_SCRIPT_HPP
#define LUA_SCRIPT_HPP

extern "C" {
#include "lualib/lauxlib.h"
}

class LuaScript {
    lua_State* m_L = nullptr;

public:
    LuaScript(const char*);
    LuaScript(const LuaScript&) = delete;
    LuaScript& operator=(const LuaScript&) = delete;

    ~LuaScript();
};

#endif
