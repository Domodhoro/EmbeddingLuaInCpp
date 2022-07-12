#ifndef LUA_SCRIPT_HPP
#define LUA_SCRIPT_HPP

extern "C" {
#include "lualib/lauxlib.h"
}

class LuaScript {
public:
    LuaScript(const char*);
    ~LuaScript();

private:
    lua_State* m_L = nullptr;
};

#endif
