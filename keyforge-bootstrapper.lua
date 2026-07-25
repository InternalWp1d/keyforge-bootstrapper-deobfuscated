-- ts a file that came from discord.gg/tbjBPTRnph
-- keyforge bootstrap deobfuscated by wp1d & .bauchschmerzen
-- KeyForge protected bootstrap. Do not share. build=A99
local _kf_silent=true
pcall(function() rawset(_G,"_kf_silent",_kf_silent) end)
local _kf_hwid_env=type(gethwid)=="function" and gethwid or nil
if type(_kf_hwid_env)~="function" and type(Real)=="table" and type(Real.gethwid)=="function" then
 _kf_hwid_env=Real.gethwid
elseif type(_kf_hwid_env)~="function" and type(Potassium)=="table" and type(Potassium.gethwid)=="function" then
 _kf_hwid_env=Potassium.gethwid
end
local _kf_abort = false
local Afd = "rvrowAczukSzhASMIaChM7rwA2H_Dppt"
local A9d = "s88KOz8YZj3heObWfAyJ4e3wkrMe88qKcAUXgx_aEYo"
local Ab6 = "https://www.keyforge.win/v1/auth?e=1"

local function ffd(m)
    local _kf_msg = tostring(m or "authentication failed")
    if _kf_msg:sub(1, 16) == "[Keyforge Auth] " then _kf_msg = _kf_msg:sub(17) end
    local _kf_s = "[Keyforge Auth] " .. _kf_msg
    pcall(function() if type(warn) == "function" then warn(_kf_s) end end)
    pcall(function() if type(print) == "function" then print(_kf_s) end end)
    pcall(function()
      local _kf_ge=(getgenv and getgenv())or _G
      if type(_kf_ge)=="table" then
        _kf_ge.__KF_GATE_FAIL=true
        _kf_ge.__KF_GATE_ERR=_kf_msg
        _kf_ge.__KF_GATE_OK=false
      end
    end)
    _kf_abort = true
end
local function gfd(eb6)
    if _kf_silent==true then return end
    local k99 = "[Keyforge Auth] " .. tostring(eb6)
    pcall(function() if type(print) == "function" then print(k99) end end)
end
gfd("bootstrap started")
pcall(function()
 local prev=rawget(_G,"_kf_fp_hb_conn")
 if prev and type(prev.Disconnect)=="function" then pcall(function() prev:Disconnect() end) end
 rawset(_G,"_kf_fp_hb_conn",nil)
end)
pcall(function() rawset(_G,"_kf_hb_gen",((tonumber(rawget(_G,"_kf_hb_gen")) or 0)+1)) end)
pcall(function() rawset(_G,"_kf_skip_reqasync",nil) end)
pcall(function() rawset(_G,"script_key",nil) end)
pcall(function()
 local nf=rawget(_G,"_kf_native_getfenv")
 if type(nf)=="function" then getfenv=nf rawset(_G,"getfenv",nf) end
 local nr=rawget(_G,"_kf_native_getrenv")
 if type(nr)=="function" then getrenv=nr rawset(_G,"getrenv",nr) end
end)

-- 1) Confirm we are inside a real Roblox executor, not a browser.
local afd = pcall(function()
    assert(game and game.ClassName == "DataModel", "game")
    assert(workspace and type(workspace.GetChildren) == "function", "workspace")
    assert(Instance and Instance.new, "Instance")
    local e72 = Instance.new("Folder"); assert(e72.ClassName == "Folder", "instance.new")
    assert(type(workspace:GetChildren()) == "table", "workspace.children")
    game:GetService("Players")
end)
if not afd then ffd("this script must be run from a real Roblox executor") end
do
 local _kf_env_bad=false
 local function _kf_destroy_ok(t)
  if t==nil then return false end
  local ok=pcall(function() t:Destroy() end)
  return ok
 end
 for _,t in ipairs({game,workspace}) do
  if _kf_destroy_ok(t) then _kf_env_bad=true break end
 end
 if not _kf_env_bad then
  for _,n in ipairs({"Players","Lighting","ReplicatedStorage","ReplicatedFirst","StarterGui","StarterPack","StarterPlayer","SoundService","Teams","LocalizationService","MaterialService","TextChatService"}) do
   local ok,svc=pcall(game.GetService,game,n)
   if ok and _kf_destroy_ok(svc) then _kf_env_bad=true break end
  end
 end
 if _kf_env_bad then ffd("this script must be run from a real Roblox executor") end
end
if _kf_abort then return end
gfd("environment verified")
do
 if rawget(_G,"_kf_native_snap_ok") then
 else
  local function _kf_fn_src(fn)
   if type(fn)~="function" or type(debug)~="table" or type(debug.info)~="function" then return nil end
   local ok,src=pcall(debug.info,fn,"s")
   return ok and type(src)=="string" and src or nil
  end
  local function _kf_fn_is_c(fn)
   local s=_kf_fn_src(fn)
   return type(s)=="string" and s:sub(1,3)=="=[C"
  end
  local function _kf_fn_is_lua(fn)
   local s=_kf_fn_src(fn)
   return type(s)=="string" and s:sub(1,1)=="@"
  end
  local function _kf_is_opiumware()
   if type(Opiumware)=="table" then return true end
   local ge=nil
   if type(getgenv)=="function" then
    local ok,rv=pcall(getgenv)
    if ok and type(rv)=="table" then ge=rv end
   end
   if type(ge)=="table" and type(rawget(ge,"Opiumware"))=="table" then return true end
   for _,name in ipairs({"identifyexecutor","getexecutorname"}) do
    local fn=rawget(_G,name)
    if type(fn)~="function" and type(ge)=="table" then fn=rawget(ge,name) end
    if type(fn)=="function" then
     local ok,value=pcall(fn)
     if ok and type(value)=="string" and value:lower():find("opium",1,true) then return true end
    end
   end
   return false
  end
  local function _kf_ls_marked_hooked(fn)
   if type(fn)~="function" then return false end
   if type(ishookfunction)=="function" then
    local ok,h=pcall(ishookfunction,fn)
    if ok and h then return true end
   end
   if type(isfunctionhooked)=="function" then
    local ok,h=pcall(isfunctionhooked,fn)
    if ok and h then return true end
   end
   return false
  end
  local function _kf_unhook_ls(fn)
   if type(fn)~="function" then return nil end
   if type(oth)=="table" and type(oth.get_root_callback)=="function" then
    local ok,root=pcall(oth.get_root_callback,fn)
    if ok and type(root)=="function" then fn=root end
   end
   if _kf_ls_marked_hooked(fn) and type(restorefunction)=="function" then
    pcall(restorefunction,fn)
   end
   return fn
  end
  local function _kf_try_compile(fn)
   if type(fn)~="function" then return nil end
   local ok,res=pcall(function() return fn("return 1") end)
   if ok and type(res)=="function" then return fn end
   ok,res=pcall(function() return fn("return 1","=","t") end)
   if ok and type(res)=="function" then return fn end
   ok,res=pcall(function() return fn("return 1","=(kf)","t") end)
   if ok and type(res)=="function" then return fn end
   return nil
  end
  local function _kf_seal_compile(fn)
   return _kf_try_compile(_kf_unhook_ls(fn))
  end
  local function _kf_pick_exec_ls()
   if _kf_is_opiumware() then
    local ge=nil
    if type(getgenv)=="function" then
     local ok,rv=pcall(getgenv)
     if ok and type(rv)=="table" then ge=rv end
    end
    local ot=type(Opiumware)=="table" and Opiumware or (type(ge)=="table" and rawget(ge,"Opiumware") or nil)
    local direct=nil
    if type(ot)=="table" then direct=_kf_try_compile(ot.loadstring) end
    if type(direct)~="function" and type(ge)=="table" then direct=_kf_try_compile(ge.loadstring) end
    if type(direct)~="function" then direct=_kf_try_compile(loadstring) end
    if type(direct)~="function" and type(ot)=="table" then direct=_kf_try_compile(ot.load) end
    if type(direct)~="function" and type(ge)=="table" then direct=_kf_try_compile(ge.load) end
    if type(direct)~="function" then direct=_kf_try_compile(load) end
    if type(direct)~="function" and type(ot)=="table" then direct=_kf_try_compile(ot.__cload) end
    if type(direct)~="function" and type(ge)=="table" then direct=_kf_try_compile(ge.__cload) end
    if type(direct)=="function" then return direct end
   end
   local ls=_kf_seal_compile(rawget(_G,"_kf_native_text_ls"))
   local function prefer_public(fn)
    local c=_kf_seal_compile(fn)
    if type(c)~="function" then return end
    if type(ls)~="function" then ls=c return end
    if _kf_fn_is_c(c) and not _kf_fn_is_c(ls) then ls=c end
   end
   local function prefer_private(fn)
    local c=_kf_seal_compile(fn)
    if type(c)=="function" and type(ls)~="function" then ls=c end
   end
   if type(getgenv)=="function" then
    local ok,ge=pcall(getgenv)
    if ok and type(ge)=="table" then
     prefer_public(ge.loadstring) prefer_public(ge.load)
     for _,name in ipairs({"Delta","Xeno","Opiumware","Volt","volt","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
      local t=rawget(ge,name) if type(t)=="table" then prefer_public(t.loadstring) prefer_public(t.load) end
     end
    end
   end
   if type(Opiumware)=="table" then
    prefer_public(Opiumware.loadstring) prefer_public(Opiumware.load)
   end
   if type(Delta)=="table" then prefer_public(Delta.loadstring) prefer_public(Delta.load) end
   if type(Xeno)=="table" then prefer_public(Xeno.loadstring) prefer_public(Xeno.load) end
   if type(Volt)=="table" then prefer_public(Volt.loadstring) prefer_public(Volt.load) end
   if type(volt)=="table" then prefer_public(volt.loadstring) prefer_public(volt.load) end
   for _,name in ipairs({"Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
    local t=rawget(_G,name) if type(t)=="table" then prefer_public(t.loadstring) prefer_public(t.load) end
   end
   prefer_public(loadstring) prefer_public(load)
   prefer_private(rawget(_G,"_kf_native_ls")) prefer_private(rawget(_G,"_kf_pin_comp"))
   if type(getgenv)=="function" then
    local ok,ge=pcall(getgenv)
    if ok and type(ge)=="table" then prefer_private(ge.__cload) end
   end
   if type(Opiumware)=="table" then prefer_private(Opiumware.__cload) end
   if type(Delta)=="table" then prefer_private(Delta.__cload) end
   if type(Xeno)=="table" then prefer_private(Xeno.__cload) end
   if type(Volt)=="table" then prefer_private(Volt.__cload) end
   if type(volt)=="table" then prefer_private(volt.__cload) end
   for _,name in ipairs({"Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
    local t=rawget(_G,name) if type(t)=="table" then prefer_private(t.__cload) end
   end
   return ls
  end
  local ls=_kf_pick_exec_ls()
  if type(ls)=="function" then
   pcall(function() rawset(_G,"_kf_native_text_ls",ls) end)
   pcall(function() rawset(_G,"_kf_native_ls",ls) end)
  end
  if type(getfenv)=="function" then pcall(function() rawset(_G,"_kf_native_getfenv",getfenv) end) end
  if type(getrenv)=="function" then pcall(function() rawset(_G,"_kf_native_getrenv",getrenv) end) end
  pcall(function() rawset(_G,"_kf_native_snap_ok",true) end)
 end
end
do
 local _kf_bs_pin=nil
 local function _kf_bs_is_opiumware()
  if type(Opiumware)=="table" then return true end
  local ge=(type(getgenv)=="function" and getgenv()) or nil
  if type(ge)=="table" and type(rawget(ge,"Opiumware"))=="table" then return true end
  for _,name in ipairs({"identifyexecutor","getexecutorname"}) do
   local fn=rawget(_G,name)
   if type(fn)~="function" and type(ge)=="table" then fn=rawget(ge,name) end
   if type(fn)=="function" then
    local ok,value=pcall(fn)
    if ok and type(value)=="string" and value:lower():find("opium",1,true) then return true end
   end
  end
  return false
 end
 local function _kf_bs_seal(fn)
  if type(fn)~="function" then return nil end
  if type(oth)=="table" and type(oth.get_root_callback)=="function" then
   local ok,root=pcall(oth.get_root_callback,fn)
   if ok and type(root)=="function" then fn=root end
  end
  if type(isfunctionhooked)=="function" and type(restorefunction)=="function" then
   local ok,h=pcall(isfunctionhooked,fn)
   if ok and h then pcall(restorefunction,fn) end
  end
  if not _kf_bs_is_opiumware() and type(clonefunction)=="function" then
   local ok,c=pcall(clonefunction,fn)
   if ok and type(c)=="function" then fn=c end
  end
  local ok,res=pcall(function() return fn("return 1") end)
  if ok and type(res)=="function" then return fn end
  ok,res=pcall(function() return fn("return 1","=(kf)","t") end)
  if ok and type(res)=="function" then return fn end
  return nil
 end
 local ge=(type(getgenv)=="function" and getgenv()) or nil
 if type(ge)=="table" then
  _kf_bs_pin=_kf_bs_seal(ge.loadstring) or _kf_bs_seal(ge.load) or _kf_bs_pin
 end
 if _kf_bs_pin==nil and type(Opiumware)=="table" then
  _kf_bs_pin=_kf_bs_seal(Opiumware.loadstring) or _kf_bs_seal(Opiumware.load) or _kf_bs_pin
 end
 if _kf_bs_pin==nil and type(Volt)=="table" then
  _kf_bs_pin=_kf_bs_seal(Volt.loadstring) or _kf_bs_seal(Volt.load) or _kf_bs_pin
 end
 if _kf_bs_pin==nil then _kf_bs_pin=_kf_bs_seal(loadstring) or _kf_bs_seal(load) end
 if _kf_bs_pin==nil and type(ge)=="table" then _kf_bs_pin=_kf_bs_seal(ge.__cload) end
 if _kf_bs_pin==nil and type(Opiumware)=="table" then _kf_bs_pin=_kf_bs_seal(Opiumware.__cload) end
 if _kf_bs_pin==nil and type(Volt)=="table" then _kf_bs_pin=_kf_bs_seal(Volt.__cload) end
 if _kf_bs_pin~=nil then
  pcall(function() rawset(_G,"_kf_native_text_ls",_kf_bs_pin) end)
  pcall(function() rawset(_G,"_kf_native_ls",_kf_bs_pin) end)
 end
end
if _kf_skip_reqasync==nil then
 _kf_skip_reqasync=false
 pcall(function()
  local function _kf_env_table(name)
   if type(_G[name])=="table" then return _G[name] end
   if type(getgenv)=="function" then
    local ok,ge=pcall(getgenv)
    if ok and type(ge)=="table" and type(ge[name])=="table" then return ge[name] end
   end
   return nil
  end
  if _kf_env_table("Opiumware") or _kf_env_table("Opium") then
   _kf_skip_reqasync=true
   return
  end
  if _kf_env_table("Delta") or _kf_env_table("Gloop") or _kf_env_table("Gloopintosh") then
   _kf_skip_reqasync=true
   return
  end
  -- Real: keep RequestAsync enabled. Real.request / hooked HttpGet use WinINet
  -- and often print "InternetConnect failed (87)" (ERROR_INVALID_PARAMETER).
  -- Roblox HttpService:RequestAsync is the reliable path on Real.
  if _kf_env_table("Real") then
   return
  end
  -- Executors expose their own request implementation. Prefer it over the
  -- Roblox HttpService route can be hooked, blocked, or behave
  -- inconsistently in live executor clients.
  if type(request)=="function" or type(http_request)=="function" then
   _kf_skip_reqasync=true
   return
  end
  local ex=""
  if type(identifyexecutor)=="function" then
   local a,b=identifyexecutor()
   ex=tostring(a or "").." "..tostring(b or "")
  elseif type(getexecutorname)=="function" then ex=tostring(getexecutorname())
  elseif _kf_env_table("Opiumware") then ex="Opiumware"
  elseif _kf_env_table("Delta") then ex="Delta"
  elseif _kf_env_table("Madium") then ex="Madium"
  elseif _kf_env_table("Potassium") then ex="Potassium"
  elseif _kf_env_table("Xeno") then ex="Xeno"
  end
  local exl=ex:lower()
  if exl:find("opium",1,true) or exl:find("delta",1,true) or exl:find("gloop",1,true) or exl:find("volt",1,true) or exl:find("wave",1,true) or exl:find("cryptic",1,true) or exl:find("potassium",1,true) or exl:find("madium",1,true) or exl:find("solara",1,true) or exl:find("xeno",1,true) or exl:find("hydrogen",1,true) then
   _kf_skip_reqasync=true
  end
 end)
end
do
 local function _kf_bs_probe()
  local t={}
  for i=1,8 do t[i]=string.char(math.random(65,90)) end
  return "@"..table.concat(t)
 end
 local function _kf_bs_native(fn)
  if type(fn)~="function" or type(debug)~="table" or type(debug.info)~="function" then return false end
  local ok,s=pcall(debug.info,fn,"s")
  if not ok or type(s)~="string" then return false end
  return s:sub(1,3)=="=[C"
 end
 local function _kf_bs_works(fn)
  if type(fn)~="function" then return false end
  local ok,res=pcall(function() return fn("return 1") end)
  if ok and type(res)=="function" then return true end
  ok,res=pcall(function() return fn("return 1",_kf_bs_probe(),"t") end)
  return ok and type(res)=="function"
 end
 local function _kf_bs_has_native()
  if type(getgenv)=="function" then
   local ok,ge=pcall(getgenv)
   if ok and type(ge)=="table" then
    if _kf_bs_native(ge.__cload) and _kf_bs_works(ge.__cload) then return true end
    if _kf_bs_native(ge.loadstring) and _kf_bs_works(ge.loadstring) then return true end
    if _kf_bs_native(ge.load) and _kf_bs_works(ge.load) then return true end
    for _,name in ipairs({"Delta","Xeno","Opiumware","Volt","volt","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
     local t=rawget(ge,name)
     if type(t)=="table" then
      if _kf_bs_native(t.loadstring) and _kf_bs_works(t.loadstring) then return true end
      if _kf_bs_native(t.load) and _kf_bs_works(t.load) then return true end
     end
    end
   end
  end
  for _,name in ipairs({"Delta","Xeno","Opiumware","Volt","volt","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
   local t=rawget(_G,name)
   if type(t)=="table" then
    if _kf_bs_native(t.loadstring) and _kf_bs_works(t.loadstring) then return true end
    if _kf_bs_native(t.load) and _kf_bs_works(t.load) then return true end
   end
  end
  if _kf_bs_native(load) and _kf_bs_works(load) then return true end
  if _kf_bs_native(loadstring) and _kf_bs_works(loadstring) then return true end
  return false
 end
 local function _kf_bs_lua(fn)
  if type(fn)~="function" or type(debug)~="table" or type(debug.info)~="function" then return false end
  local ok,s=pcall(debug.info,fn,"s")
  if not ok or type(s)~="string" then return false end
  return s:sub(1,1)=="@"
 end
 if _kf_bs_has_native() then
  if _kf_bs_lua(loadstring) then ffd("compiler integrity check failed") end
  if _kf_bs_lua(load) then ffd("compiler integrity check failed") end
  local _kf_ge=(type(getgenv)=="function" and getgenv()) or nil
  if type(_kf_ge)=="table" then
   if type(_kf_ge.loadstring)=="function" and _kf_bs_lua(_kf_ge.loadstring) then ffd("compiler integrity check failed") end
   if type(_kf_ge.load)=="function" and _kf_bs_lua(_kf_ge.load) then ffd("compiler integrity check failed") end
  end
 end
end
if _kf_abort then return end

local f9d = function(eda)
    if eda == nil then return false end
    local e99, e06 = pcall(debug.info, eda, "s")
    if not e99 or type(e06) ~= "string" then return true end
    return e06:sub(1, 3) == "=[C"
end

local a9d = (getgenv and getgenv()) or _G
local function fb6(e55)
    local eda = a9d[e55]
    if eda == nil then eda = _G[e55] end
    return eda ~= nil
end

-- 2) Resolve an HTTP request function across executors.
local HttpService = game:GetService("HttpService")
local function f99(k9d)
    if _kf_skip_reqasync then return nil end
    if not HttpService.RequestAsync then return nil end
    local e99, d55 = pcall(function()
        return HttpService:RequestAsync({
            Url = k9d.Url,
            Method = k9d.Method or "GET",
            Headers = k9d.Headers or {},
            Body = k9d.Body,
        })
    end)
    if not e99 or type(d55) ~= "table" then return nil end
    return {
        StatusCode = d55.StatusCode or 0,
        Body = d55.Body or "",
        body = d55.Body or "",
    }
end
local ab6 = ((function() if type(Real)=="table" then return nil end return (type(request)=="function" and request)or(type(http_request)=="function" and http_request)or(type(http)=="table" and type(http.request)=="function" and http.request)or(type(Volt)=="table" and type(Volt.request)=="function" and Volt.request)or(type(volt)=="table" and type(volt.request)=="function" and volt.request)or(type(Potassium)=="table" and type(Potassium.request)=="function" and Potassium.request)or(type(Xeno)=="table" and type(Xeno.request)=="function" and Xeno.request)or(type(Velocity)=="table" and type(Velocity.request)=="function" and Velocity.request)or(type(Opiumware)=="table" and type(Opiumware.request)=="function" and Opiumware.request)or(type(Opium)=="table" and type(Opium.request)=="function" and Opium.request)or(type(Delta)=="table" and type(Delta.request)=="function" and Delta.request)or(type(Gloop)=="table" and type(Gloop.request)=="function" and Gloop.request)or(type(Gloopintosh)=="table" and type(Gloopintosh.request)=="function" and Gloopintosh.request)or(type(Madium)=="table" and type(Madium.request)=="function" and Madium.request)or(type(Cryptic)=="table" and type(Cryptic.request)=="function" and Cryptic.request)or(type(Solara)=="table" and type(Solara.request)=="function" and Solara.request)or(type(Wave)=="table" and type(Wave.request)=="function" and Wave.request)or(type(wave)=="table" and type(wave.request)=="function" and wave.request)or(type(Codex)=="table" and type(Codex.request)=="function" and Codex.request)or(type(codex)=="table" and type(codex.request)=="function" and codex.request)or(type(KRNL)=="table" and type(KRNL.request)=="function" and KRNL.request)or(type(krnl)=="table" and type(krnl.request)=="function" and krnl.request)or(type(syn)=="table" and type(syn.request)=="function" and syn.request)or(type(fluxus)=="table" and type(fluxus.request)=="function" and fluxus.request)or(function() local ok,ge=pcall(function() return type(getgenv)=="function" and getgenv() or nil end) if not ok or type(ge)~="table" then return nil end if type(rawget(ge,"Real"))=="table" then return nil end if type(ge.request)=="function" then return ge.request end return nil end)() end)())
if type(ab6) ~= "function" then
    ab6 = function(k9d)
        local mb6 = f99(k9d)
        if mb6 then return mb6 end
        local e99, d9d = pcall(function()
            if (k9d.Method or "GET")=="GET" then
                if type(httpget)=="function" then return httpget(k9d.Url) end
                if game.HttpGetAsync then return game:HttpGetAsync(k9d.Url) end
                return game:HttpGet(k9d.Url, true)
            end
            return game:HttpPost(k9d.Url, k9d.Body or '', 'application/json')
        end)
        if not e99 and game.HttpPostAsync then
            e99, d9d = pcall(function() return game:HttpPostAsync(k9d.Url, k9d.Body or '', 'application/json') end)
        end
        if not e99 then return { StatusCode = 500, Body = tostring(d9d) } end
        return { StatusCode = 200, Body = d9d }
    end
end

if _kf_skip_reqasync==nil then
 _kf_skip_reqasync=false
 pcall(function()
  local function _kf_env_table(name)
   if type(_G[name])=="table" then return _G[name] end
   if type(getgenv)=="function" then
    local ok,ge=pcall(getgenv)
    if ok and type(ge)=="table" and type(ge[name])=="table" then return ge[name] end
   end
   return nil
  end
  if _kf_env_table("Opiumware") or _kf_env_table("Opium") then
   _kf_skip_reqasync=true
   return
  end
  if _kf_env_table("Delta") or _kf_env_table("Gloop") or _kf_env_table("Gloopintosh") then
   _kf_skip_reqasync=true
   return
  end
  -- Real: keep RequestAsync enabled. Real.request / hooked HttpGet use WinINet
  -- and often print "InternetConnect failed (87)" (ERROR_INVALID_PARAMETER).
  -- Roblox HttpService:RequestAsync is the reliable path on Real.
  if _kf_env_table("Real") then
   return
  end
  -- Executors expose their own request implementation. Prefer it over the
  -- Roblox HttpService route can be hooked, blocked, or behave
  -- inconsistently in live executor clients.
  if type(request)=="function" or type(http_request)=="function" then
   _kf_skip_reqasync=true
   return
  end
  local ex=""
  if type(identifyexecutor)=="function" then
   local a,b=identifyexecutor()
   ex=tostring(a or "").." "..tostring(b or "")
  elseif type(getexecutorname)=="function" then ex=tostring(getexecutorname())
  elseif _kf_env_table("Opiumware") then ex="Opiumware"
  elseif _kf_env_table("Delta") then ex="Delta"
  elseif _kf_env_table("Madium") then ex="Madium"
  elseif _kf_env_table("Potassium") then ex="Potassium"
  elseif _kf_env_table("Xeno") then ex="Xeno"
  end
  local exl=ex:lower()
  if exl:find("opium",1,true) or exl:find("delta",1,true) or exl:find("gloop",1,true) or exl:find("volt",1,true) or exl:find("wave",1,true) or exl:find("cryptic",1,true) or exl:find("potassium",1,true) or exl:find("madium",1,true) or exl:find("solara",1,true) or exl:find("xeno",1,true) or exl:find("hydrogen",1,true) then
   _kf_skip_reqasync=true
  end
 end)
end
local function _kf_asstr(v)
 if type(v)=="string" then return v end
 if v==nil then return "" end
 if type(v)=="number" or type(v)=="boolean" then return tostring(v) end
 if type(v)=="table" then
  local ok,enc=pcall(function()
   local hs=game:GetService("HttpService")
   return hs and hs:JSONEncode(v) or nil
  end)
  if ok and type(enc)=="string" then return enc end
  return ""
 end
 -- Never tostring(userdata/table) — yields "table: 0x…" and breaks unlock parsing.
 return ""
end
local function _kf_http_body(res)
 if type(res)~="table" then return "" end
 -- Some executors (Xeno HttpPost) return the decoded JSON object as the response itself.
 if type(res.rt)=="string" and res.rt~="" and res.Body==nil and res.body==nil and res.StatusCode==nil and res.status_code==nil then
  return _kf_asstr(res)
 end
 local b=res.Body or res.body or res.Response or res.response or res.Data or res.data or res.Content or res.content or res.Text or res.text or res.ResponseBody or res.responseBody or res.Result or res.result or res.Message or res.message
 return _kf_asstr(b)
end
local function _kf_http_status(res)
 if type(res)~="table" then return 0 end
 local st=res.StatusCode or res.status_code or res.Status or res.status or res.HttpStatus or res.http_status
 if type(st)=="string" then st=tonumber(st:match("%d+")) end
 if type(st)=="number" then return st end
 return 0
end
local function _kf_http_ok(res,method)
 if type(res)~="table" then return false end
 if res.Success==false then return false end
 local st=_kf_http_status(res)
 if st~=0 and (st<200 or st>=300) then return false end
 local body=_kf_http_body(res)
 if (method or "GET")~="GET" and body=="" then return false end
 return true
end
local function _kf_http_norm(res)
 if type(res)~="table" then return nil end
 local st=_kf_http_status(res)
 local body=_kf_http_body(res)
 local hdrs=res.Headers or res.headers
 if type(hdrs)=="table" then return {StatusCode=st,status_code=st,Body=body,body=body,Headers=hdrs,headers=hdrs} end
 return {StatusCode=st,status_code=st,Body=body,body=body}
end
local _kf_auth_hook_hard=true
local _kf_auth_timeout_sec=55
local function _kf_auth_empty_post_body(body)
 if type(body)~="string" or body=="" then return true end
 local t=(body:match("^%s*(.-)%s*$") or body):lower()
 if t=="malformed request" or t:find("malformed request",1,true) then return true end
 if t=="missing nonce" then return true end
 if t:find("request body was not valid json",1,true) then return true end
 return false
end
local function _kf_httppost_json(url,body)
 if type(url)~="string" or url=="" then return nil end
 local b=body
 if type(b)~="string" then b=_kf_asstr(b) end
 if type(b)~="string" or b=="" then return nil end
 local function _kf_hp_wrap(pbody)
  if type(pbody)=="string" then
   if pbody=="" then return nil end
   return {StatusCode=200,status_code=200,Body=pbody,body=pbody}
  end
  if type(pbody)~="table" then return nil end
  if type(pbody.rt)=="string" and pbody.rt~="" and pbody.Body==nil and pbody.body==nil and pbody.StatusCode==nil and pbody.status_code==nil then
   local enc=_kf_asstr(pbody)
   if enc~="" then return {StatusCode=200,status_code=200,Body=enc,body=enc} end
  end
  local raw=pbody.Body or pbody.body or pbody.Response or pbody.response or pbody.Data or pbody.data or pbody.Text or pbody.text or pbody.Content or pbody.content or pbody.ResponseBody or pbody.responseBody or pbody.Result or pbody.result or pbody.Message or pbody.message
  if type(raw)=="string" and raw~="" then
   local st=pbody.StatusCode or pbody.status_code or 200
   return {StatusCode=st,status_code=st,Body=raw,body=raw}
  end
  if type(raw)=="table" then
   local enc=_kf_asstr(raw)
   if enc~="" then
    local st=pbody.StatusCode or pbody.status_code or 200
    return {StatusCode=st,status_code=st,Body=enc,body=enc}
   end
  end
  return nil
 end
 local function _kf_hp_try(fn)
  local pack={pcall(fn)}
  if pack[1]~=true then
   local err=pack[2]
   if type(err)=="string" and err~="" then
    local low=err:lower()
    if low:find("http",1,true) or low:find("403",1,true) or low:find("404",1,true) or low:find("429",1,true) or low:find("503",1,true) or low:find("timed",1,true) or low:find("timeout",1,true) then
     return {StatusCode=200,status_code=200,Body=err,body=err}
    end
   end
   return nil
  end
  for i=2,#pack do
   local w=_kf_hp_wrap(pack[i])
   if w and not _kf_auth_empty_post_body(w.Body or w.body) then return w end
  end
  local best=nil
  for i=2,#pack do
   local v=pack[i]
   if type(v)=="string" and not _kf_auth_empty_post_body(v) and (best==nil or #v>#best) then best=v end
  end
  if type(best)=="string" and best~="" then return {StatusCode=200,status_code=200,Body=best,body=best} end
  return nil
 end
 local w=nil
 do local hs=game:GetService("HttpService")
  if hs and type(hs.PostAsync)=="function" then
   w=_kf_hp_try(function()
    local ok,ct=pcall(function() return Enum.HttpContentType.ApplicationJson end)
    if ok and ct~=nil then return hs:PostAsync(url,b,ct) end
    return hs:PostAsync(url,b)
   end)
   if w then return w end
   w=_kf_hp_try(function() return hs:PostAsync(url,b) end)
   if w then return w end
  end
 end
 if game.HttpPostAsync then
  w=_kf_hp_try(function() return game:HttpPostAsync(url,b,"application/json") end)
  if w then return w end
  w=_kf_hp_try(function() return game:HttpPostAsync(url,b) end)
  if w then return w end
 end
 w=_kf_hp_try(function() return game:HttpPost(url,b) end)
 if w then return w end
 w=_kf_hp_try(function() return game:HttpPost(url,b,true) end)
 if w then return w end
 w=_kf_hp_try(function() return game:HttpPost(url,b,"application/json") end)
 if w then return w end
 if type(HttpPost)=="function" then
  w=_kf_hp_try(function() return HttpPost(url,b) end)
  if w then return w end
  w=_kf_hp_try(function() return HttpPost(url,b,true) end)
  if w then return w end
  w=_kf_hp_try(function() return HttpPost(url,b,"application/json") end)
  if w then return w end
 end
 return nil
end
local function _kf_is_auth_post(o)
 if type(o)~="table" or (o.Method or o.method or "GET")~="POST" then return false end
 local u=type(o.Url)=="string" and o.Url or (type(o.url)=="string" and o.url or "")
 return u:find("/v1/auth",1,true)~=nil
end
local function _kf_auth_body_bypass_fake(body)
 if type(body)~="string" or body=="" then return false end
 if body:sub(1,1)~="{" then return false end
 if body:find('"success"',1,true) or body:find('"token"',1,true) or body:find("bypassed",1,true) then return true end
 if #body>=320 then return false end
 if body:find('"error"',1,true) or body:find('"message"',1,true) or body:find('"detail"',1,true) then return false end
 return true
end
local function _kf_auth_should_use(res)
 if type(res)~="table" then return false end
 local body=_kf_http_body(res)
 if body=="" then return false end
 if _kf_auth_empty_post_body(body) then return false end
 if _kf_auth_body_bypass_fake(body) then return false end
 local st=_kf_http_status(res)
 if #body>=320 and body:sub(1,1)~="{" then return true end
 if st>=300 and st<600 then return true end
 if body:find('"error"',1,true) or body:find('"message"',1,true) or body:find('"detail"',1,true) then return true end
 if body:find("^%-%- KeyForge:",1,true) then return true end
 if body:sub(1,1)~="{" and #body<320 and not body:find("local ",1,true) and not body:find("function",1,true) and not body:find("return ",1,true) then return true end
 return false
end
local function _kf_exec_request_fn()
 return ((function() if type(Real)=="table" then return nil end return (type(request)=="function" and request)or(type(http_request)=="function" and http_request)or(type(http)=="table" and type(http.request)=="function" and http.request)or(type(Volt)=="table" and type(Volt.request)=="function" and Volt.request)or(type(volt)=="table" and type(volt.request)=="function" and volt.request)or(type(Potassium)=="table" and type(Potassium.request)=="function" and Potassium.request)or(type(Xeno)=="table" and type(Xeno.request)=="function" and Xeno.request)or(type(Velocity)=="table" and type(Velocity.request)=="function" and Velocity.request)or(type(Opiumware)=="table" and type(Opiumware.request)=="function" and Opiumware.request)or(type(Opium)=="table" and type(Opium.request)=="function" and Opium.request)or(type(Delta)=="table" and type(Delta.request)=="function" and Delta.request)or(type(Gloop)=="table" and type(Gloop.request)=="function" and Gloop.request)or(type(Gloopintosh)=="table" and type(Gloopintosh.request)=="function" and Gloopintosh.request)or(type(Madium)=="table" and type(Madium.request)=="function" and Madium.request)or(type(Cryptic)=="table" and type(Cryptic.request)=="function" and Cryptic.request)or(type(Solara)=="table" and type(Solara.request)=="function" and Solara.request)or(type(Wave)=="table" and type(Wave.request)=="function" and Wave.request)or(type(wave)=="table" and type(wave.request)=="function" and wave.request)or(type(Codex)=="table" and type(Codex.request)=="function" and Codex.request)or(type(codex)=="table" and type(codex.request)=="function" and codex.request)or(type(KRNL)=="table" and type(KRNL.request)=="function" and KRNL.request)or(type(krnl)=="table" and type(krnl.request)=="function" and krnl.request)or(type(syn)=="table" and type(syn.request)=="function" and syn.request)or(type(fluxus)=="table" and type(fluxus.request)=="function" and fluxus.request)or(function() local ok,ge=pcall(function() return type(getgenv)=="function" and getgenv() or nil end) if not ok or type(ge)~="table" then return nil end if type(rawget(ge,"Real"))=="table" then return nil end if type(ge.request)=="function" then return ge.request end return nil end)() end)())
end
local function _kf_auth_request_fns()
 local out,seen={},{}
 local function add(fn)
  if type(fn)=="function" and not seen[fn] then seen[fn]=true; out[#out+1]=fn end
 end
 if type(Real)=="table" then return out end
 add(type(request)=="function" and request or nil)
 add(type(http_request)=="function" and http_request or nil)
 add(type(http)=="table" and http.request or nil)
 add(type(Volt)=="table" and Volt.request or nil)
 add(type(volt)=="table" and volt.request or nil)
 add(type(Potassium)=="table" and Potassium.request or nil)
 add(type(Xeno)=="table" and Xeno.request or nil)
 add(type(Velocity)=="table" and Velocity.request or nil)
 add(type(Opiumware)=="table" and Opiumware.request or nil)
 add(type(Opium)=="table" and Opium.request or nil)
 add(type(Delta)=="table" and Delta.request or nil)
 add(type(Gloop)=="table" and Gloop.request or nil)
 add(type(Gloopintosh)=="table" and Gloopintosh.request or nil)
 add(type(Madium)=="table" and Madium.request or nil)
 add(type(Cryptic)=="table" and Cryptic.request or nil)
 add(type(Solara)=="table" and Solara.request or nil)
 add(type(Wave)=="table" and Wave.request or nil)
 add(type(wave)=="table" and wave.request or nil)
 add(type(Codex)=="table" and Codex.request or nil)
 add(type(codex)=="table" and codex.request or nil)
 add(type(KRNL)=="table" and KRNL.request or nil)
 add(type(krnl)=="table" and krnl.request or nil)
 add(type(syn)=="table" and syn.request or nil)
 add(type(fluxus)=="table" and fluxus.request or nil)
 if type(getgenv)=="function" then
  local ok,ge=pcall(getgenv)
  if ok and type(ge)=="table" and type(rawget(ge,"Real"))~="table" then add(rawget(ge,"request")) end
 end
 return out
end
local function _kf_request_hooked()
 local fn=_kf_exec_request_fn()
 if type(fn)~="function" or type(ishookfunction)~="function" then return false end
 local ok,h=pcall(ishookfunction,fn)
 return ok and h==true
end
local function _kf_reqasync(o)
 if _kf_skip_reqasync then return nil end
 local hs=game:GetService("HttpService")
 if not hs.RequestAsync then return nil end
 local ok,res=pcall(function()
  return hs:RequestAsync({Url=o.Url or o.url,Method=o.Method or o.method or "GET",Headers=o.Headers or o.headers or {},Body=o.Body or o.body})
 end)
 if not ok then
  if type(res)=="string" and res:lower():find("malicious",1,true) then _kf_skip_reqasync=true end
  return nil
 end
 if type(res)~="table" then return nil end
 if _kf_is_auth_post(o) then
  local body=_kf_http_body(res)
  if body~="" then return _kf_http_norm(res) end
 end
 if not _kf_http_ok(res,o.Method or o.method or "GET") then return nil end
 return _kf_http_norm(res)
end
local function _kf_auth_executor_http(o)
 local method=o.Method or o.method or "POST"
 local url=o.Url or o.url
 local body=o.Body or o.body
 local headers=o.Headers or o.headers
 if type(Real)=="table" and method=="POST" and url and not _kf_skip_reqasync then
  local ra=_kf_reqasync({Url=url,Method=method,Body=body,Headers=headers})
  if ra and _kf_auth_should_use(ra) then return ra end
  if ra and _kf_http_body(ra)~="" and not _kf_auth_empty_post_body(_kf_http_body(ra)) then return ra end
 end
 local function _kf_auth_request_only()
  if type(Opiumware)=="table" or type(Opium)=="table" or type(Delta)=="table" or type(Gloop)=="table" or type(Gloopintosh)=="table" then return true end
  local ge=nil
  if type(getgenv)=="function" then
   local ok,rv=pcall(getgenv)
   if ok and type(rv)=="table" then ge=rv end
  end
  if type(ge)=="table" and (type(rawget(ge,"Opiumware"))=="table" or type(rawget(ge,"Opium"))=="table" or type(rawget(ge,"Delta"))=="table" or type(rawget(ge,"Gloop"))=="table" or type(rawget(ge,"Gloopintosh"))=="table") then return true end
  local ex=""
  if type(identifyexecutor)=="function" then
   local a,b=identifyexecutor()
   ex=tostring(a or "").." "..tostring(b or "")
  elseif type(getexecutorname)=="function" then
   ex=tostring(getexecutorname())
  end
  local exl=ex:lower()
  return exl:find("opium",1,true)~=nil or exl:find("delta",1,true)~=nil or exl:find("gloop",1,true)~=nil
 end
 local _kf_request_only=_kf_auth_request_only()
 local _kf_http_post_only=false
 if method=="POST" and url and type(Potassium)=="table" then
  local fn=_kf_exec_request_fn()
  if type(fn)=="function" then
   local ok,res=pcall(fn,{Url=url,Method=method,Body=body,Headers=headers})
   if ok and type(res)=="table" then
    if _kf_auth_should_use(res) then return _kf_http_norm(res) end
    if _kf_http_body(res)~="" then return _kf_http_norm(res) end
   end
   if ok and type(res)=="string" and res~="" then return {StatusCode=200,status_code=200,Body=res,body=res} end
  end
 end
 local _kf_is_xeno=type(Xeno)=="table"
 if method=="POST" and url and _kf_is_xeno then
  local fn=_kf_exec_request_fn()
  if type(fn)=="function" then
   local ok,res=pcall(fn,{Url=url,Method=method,Body=body,Headers=headers})
   if ok and type(res)=="table" then
    if _kf_auth_should_use(res) then return _kf_http_norm(res) end
    if _kf_http_body(res)~="" then return _kf_http_norm(res) end
    -- Empty body but a real response table: still return it so the auth
    -- gate can report the failure. Do NOT HttpPost-retry (nonce may be spent).
    return _kf_http_norm(res)
   end
   if ok and type(res)=="string" and res~="" then return {StatusCode=200,status_code=200,Body=res,body=res} end
  end
  return nil
 end
 local function try_recover()
  if method~="POST" or type(url)~="string" or url=="" or type(body)~="string" then return nil end
  local nonce=""
  local decodedOk,decoded=pcall(function() return game:GetService("HttpService"):JSONDecode(body) end)
  if decodedOk and type(decoded)=="table" then nonce=decoded.nonce end
  if type(nonce)~="string" or nonce=="" then return nil end
  local sep=url:find("?",1,true) and "&" or "?"
  local ok,res=pcall(function() return game:HttpGet(url..sep.."recover="..nonce,true) end)
  if ok and type(res)=="string" and res~="" then
   return {StatusCode=200,status_code=200,Body=res,body=res}
  end
  return nil
 end
 local function try_request(opts)
  local fns=_kf_auth_request_fns()
  if #fns==0 then return nil,false end
  for i=1,#fns do
   -- A few "100 UNC" bridges send the POST but return (nil, body),
   -- (status, body), or (success, status, body) instead of the documented
   -- SUNC response table. Preserve multiple values so the large auth body
   -- is not discarded and misreported as "no executor http response".
   local ok,a,b,c,d=pcall(fns[i],opts)
   if ok then
    local vals={a,b,c,d}
    local best=""
    local status=0
    for j=1,4 do
     local res=vals[j]
     if type(res)=="number" and res>=100 and res<=599 then status=res end
     if type(res)=="table" then
      local responseBody=_kf_http_body(res)
      -- Empty/malformed means this shim did not return a usable auth body.
      -- KeyForge coalesces exact valid-body retries, so another bridge is safe
      -- even when the first bridge sent the POST but lost only its response.
      if not _kf_auth_empty_post_body(responseBody) then
       if _kf_http_ok(res,method) then return _kf_http_norm(res),true end
       -- Non-2xx / atypical but carries a body: keep the real server error.
       if responseBody~="" then return _kf_http_norm(res),true end
      end
     elseif type(res)=="string" and not _kf_auth_empty_post_body(res) and #res>#best then
      best=res
     end
    end
    if best~="" then
     if status==0 then status=200 end
     return {StatusCode=status,status_code=status,Body=best,body=best},true
    end
   end
   -- Some WinInet-backed bridges send POST successfully and return no values.
   -- Recover the cached response with the same nonce and source IP before
   -- sending the one-time authentication request through another alias.
   local recovered=try_recover()
   if recovered then return recovered,true end
  end
  return nil,false
 end
 if method=="POST" and url and _kf_request_only then
  local res,contacted=try_request({Url=url,Method=method,Body=body,Headers=headers})
  if res then return res end
  if contacted then return nil end
  res,contacted=try_request({url=url,method=method,body=body,headers=headers})
  if res then return res end
  return nil
 end
 if method=="POST" and url and _kf_skip_reqasync and not _kf_http_post_only then
  local res,contacted=try_request({Url=url,Method=method,Body=body,Headers=headers})
  if res then return res end
  if contacted then return nil end
  res,contacted=try_request({url=url,method=method,body=body,headers=headers})
  if res then return res end
  if contacted then return nil end
 end
 if _kf_skip_reqasync and method=="POST" and url and _kf_http_post_only then
  local hp=_kf_httppost_json(url,body)
  if hp and _kf_auth_should_use(hp) then return hp end
  if hp and _kf_http_body(hp)~="" and not _kf_auth_empty_post_body(_kf_http_body(hp)) then return hp end
 elseif _kf_skip_reqasync and method=="POST" and url then
  -- Only HttpPost when executor request() never contacted the server.
  local hp=_kf_httppost_json(url,body)
  if hp and _kf_auth_should_use(hp) then return hp end
  if hp and _kf_http_body(hp)~="" and not _kf_auth_empty_post_body(_kf_http_body(hp)) then return hp end
 end
 local base={Url=url,Method=method,Body=body,Headers=headers}
 local res,contacted=try_request(base)
 if res then return res end
 if contacted then return nil end
 if url then
  res,contacted=try_request({url=url,method=method,body=body,headers=headers})
  if res then return res end
  if contacted then return nil end
 end
 if url and not _kf_is_xeno then
  local hp=_kf_httppost_json(url,body)
  if hp and _kf_http_body(hp)~="" and not _kf_auth_empty_post_body(_kf_http_body(hp)) then return hp end
 end
 return nil
end
local function _kf_exec_http(o)
 local method=o.Method or "GET"
 if type(Real)=="table" then
  local ra=_kf_reqasync(o)
  if ra then return ra end
 end
 local fn=_kf_exec_request_fn()
 if type(fn)=="function" then
  local ok,res=pcall(fn,o)
  if ok and type(res)=="table" then
   local body=_kf_http_body(res)
   if type(body)=="string" and body~="" then
    return {Success=res.Success,StatusCode=res.StatusCode or res.status_code or 0,status_code=res.StatusCode or res.status_code or 0,Body=body,body=body,Headers=res.Headers or res.headers}
   end
  elseif ok and type(res)=="string" and res~="" then
   return {Success=true,StatusCode=200,status_code=200,Body=res,body=res}
  end
 end
 local ra=_kf_reqasync(o)
 if ra then return ra end
 if method=="GET" then
  local getters={
   function() if type(httpget)=="function" and type(Real)~="table" then return httpget(o.Url) end end,
   function() if game.HttpGetAsync then return game:HttpGetAsync(o.Url) end end,
   function() return game:HttpGet(o.Url,true) end,
  }
  for i=1,#getters do
   local ok,body=pcall(getters[i])
   if ok and type(body)=="string" and body~="" then return {StatusCode=200,status_code=200,Body=body,body=body} end
  end
 end
 if method=="POST" then
  local ok,body=pcall(function() return game:HttpPost(o.Url,o.Body or "","application/json") end)
  if not ok and game.HttpPostAsync then
   ok,body=pcall(function() return game:HttpPostAsync(o.Url,o.Body or "","application/json") end)
  end
  if ok then return {StatusCode=200,status_code=200,Body=body or "",body=body or ""} end
 end
 error("[Keyforge Auth] no executor http function",0)
end
local function _kf_auth_reject_reason(res)
 if type(res)~="table" then return "no executor http response" end
 local body=_kf_http_body(res)
 local st=_kf_http_status(res)
 if body=="" then return "empty auth response (status "..tostring(st)..")" end
 if _kf_auth_body_bypass_fake(body) then return "rejected suspicious json auth body" end
 if #body<220 and body:sub(1,1)~="{" and not body:find("local ",1,true) and not body:find("function",1,true) then return body end
 return "rejected auth response (status "..tostring(st)..", len="..tostring(#body)..")"
end
local function _kf_auth_transient_body(body)
 if type(body)~="string" or body=="" then return false end
 if _kf_auth_empty_post_body(body) then return true end
 local b=body:lower()
 return b:find("temporarily unavailable",1,true)~=nil
  or b:find("retry in a moment",1,true)~=nil
  or b:find("retry shortly",1,true)~=nil
  or b:find("rate limited",1,true)~=nil
end
local function _kf_auth_r_inner(o)
 local reason="no executor http response"
 if _kf_auth_hook_hard and _kf_request_hooked() and not _kf_skip_reqasync and not game:GetService("HttpService").RequestAsync then
  ffd("executor verification failed")
 end
 local res=_kf_auth_executor_http(o)
 if res and _kf_auth_should_use(res) then return res end
 local res_reason=_kf_auth_reject_reason(res)
 reason=res_reason
 if res and _kf_auth_transient_body(_kf_http_body(res)) then return res end
 -- Do not retry a contacted executor response with HttpService: auth nonces are one-time.
 if res~=nil then ffd(reason) return nil end
 if not _kf_skip_reqasync then
  local ra=_kf_reqasync(o)
  if ra and _kf_auth_should_use(ra) then return ra end
  reason=_kf_auth_reject_reason(ra)
  if ra and _kf_auth_transient_body(_kf_http_body(ra)) then return ra end
  if ra~=nil then ffd(reason) return nil end
 end
 ffd(reason)
 return nil
end
local function _kf_auth_r(o)
 if not _kf_is_auth_post(o) then return _kf_exec_http(o) end
 local _kf_wait=(task and task.wait) or wait or function() end
 local function _kf_auth_once()
  if _kf_skip_reqasync then
   local ok,r=pcall(_kf_auth_r_inner,o)
   if ok then
    if r~=nil then return r end
    if _kf_abort then return nil end
    ffd("no executor http response")
    return nil
   end
   ffd(tostring(r))
   return nil
  end
  local _kf_res,_kf_err,_kf_done=nil,nil,false
  local _kf_spawn=(task and task.spawn) or spawn or function(f) if f then f() end end
  _kf_spawn(function()
   local ok,r=pcall(_kf_auth_r_inner,o)
   if ok then _kf_res=r else _kf_err=r end
   _kf_done=true
  end)
  local _kf_now=tonumber(os.clock()) or 0
  local _kf_dead=_kf_now+(tonumber(_kf_auth_timeout_sec) or 0)
  while not _kf_done and (tonumber(os.clock()) or _kf_now)<_kf_dead do _kf_wait(0.05) end
  if not _kf_done then
   ffd("authentication timed out (server or executor HTTP blocked)")
   return nil
  end
  if _kf_err~=nil then ffd(tostring(_kf_err)) end
  if _kf_res==nil and not _kf_abort then ffd("no executor http response") end
  return _kf_res
 end
 for _kf_try=1,2 do
  local res=_kf_auth_once()
  if res==nil then return nil end
  if _kf_auth_should_use(res) then return res end
  if _kf_try<2 and _kf_auth_transient_body(_kf_http_body(res)) then
   _kf_wait(0.45)
  else
   return res
  end
 end
 return nil
end
if _kf_abort then return end

-- HTTP hook canary removed: mobile executors (Delta, etc.) implement request in
-- Lua and ishookfunction falsely reports hooked — that silently blocked scripts.

-- 3) Build the environment fingerprint.
local a55 = {
    "getgenv","getrenv","hookfunction","hookmetamethod","getrawmetatable",
    "setreadonly","newcclosure","checkcaller","readfile","writefile","isfile",
    "listfiles","request","http_request","crypt","getgc","getreg",
    "identifyexecutor","getexecutorname","Drawing","gethwid",
}
local ada = 0
for _, j99 in ipairs(a55) do if fb6(j99) then ada = ada + 1 end end

local m55 = {}
local mda = 0
for _, n in ipairs({"saveinstance","getscriptbytecode","dumpbytecode","dumpstring","decompile","getconstants","getproto","getgc","islclosure","isluaclosure"}) do
  if fb6(n) then
    mda = mda + 1
    m55[#m55 + 1] = n
  end
end
local m06 = mda > 0

local a06
pcall(function()
    if identifyexecutor then
        local j72, kfd = identifyexecutor()
        a06 = kfd and (tostring(j72) .. ' ' .. tostring(kfd)) or tostring(j72)
    elseif getexecutorname then
        a06 = tostring(getexecutorname())
    elseif type(Potassium)=="table" then
        a06 = "Potassium"
    elseif type(Madium)=="table" then
        a06 = "Madium"
    elseif type(Real)=="table" then
        a06 = "Real"
    elseif type(Opiumware)=="table" then
        a06 = "Opiumware"
    end
end)

local a99
pcall(function()
    a99 = tostring(game:GetService("RbxAnalyticsService"):GetClientId())
end)

local a72
    do
     local _kf_analytics=""
     pcall(function() _kf_analytics=tostring(game:GetService("RbxAnalyticsService"):GetClientId()) end)
     local function _kf_hex128(s)
      if type(s)~="string" then return false end
      return #s==128 and s:match("^[a-f0-9]+$")~=nil
     end
     local function _kf_skip_getgc_hwid()
      if type(Opiumware)=="table" or type(Opium)=="table" or type(Delta)=="table" or type(Gloop)=="table" or type(Gloopintosh)=="table" or type(Potassium)=="table" or type(Real)=="table" then return true end
      if type(getgenv)=="function" then
       local ok,ge=pcall(getgenv)
       if ok and type(ge)=="table" then
        if type(rawget(ge,"Opiumware"))=="table" or type(rawget(ge,"Opium"))=="table" then return true end
        if type(rawget(ge,"Delta"))=="table" or type(rawget(ge,"Gloop"))=="table" or type(rawget(ge,"Gloopintosh"))=="table" then return true end
        if type(rawget(ge,"Potassium"))=="table" or type(rawget(ge,"Real"))=="table" then return true end
       end
      end
      local ex=""
      if type(identifyexecutor)=="function" then
       local a,b=identifyexecutor()
       ex=tostring(a or "").." "..tostring(b or "")
      elseif type(getexecutorname)=="function" then
       ex=tostring(getexecutorname())
      end
      local exl=ex:lower()
      return exl:find("opium",1,true)~=nil or exl:find("delta",1,true)~=nil or exl:find("gloop",1,true)~=nil or exl:find("potassium",1,true)~=nil or exl:find("real",1,true)~=nil
     end
     local function _kf_find_c_gethwid()
      if _kf_skip_getgc_hwid() then return nil end
      if type(getgc)~="function" or type(debug)~="table" or type(debug.info)~="function" then return nil end
      local ok,objs=pcall(getgc,true)
      if not ok or type(objs)~="table" then return nil end
      for _,obj in ipairs(objs) do
       if type(obj)=="function" then
        local ok2,src=pcall(debug.info,obj,"s")
        if ok2 and type(src)=="string" and src:sub(1,3)=="=[C]" then
         local ok3,nm=pcall(debug.info,obj,"n")
         if ok3 and nm=="gethwid" then return obj end
        end
       end
      end
      return nil
     end
     local function _kf_try_hwid_fn(fn)
      if type(fn)~="function" then return "" end
      local ok,v=pcall(fn)
      if not ok or v==nil then return "" end
      if type(v)=="string" and v~="" then return v end
      local t=tostring(v)
      return type(t)=="string" and t or ""
     end
     local _kf_fn=_kf_hwid_env
     if type(_kf_fn)~="function" and type(Real)=="table" and type(Real.gethwid)=="function" then
      _kf_fn=Real.gethwid
     elseif type(_kf_fn)~="function" and type(Potassium)=="table" and type(Potassium.gethwid)=="function" then
      _kf_fn=Potassium.gethwid
     end
     if not _kf_skip_getgc_hwid() then
      if type(_kf_fn)~="function" then
       _kf_fn=_kf_find_c_gethwid()
      elseif type(gethwid)=="function" and not rawequal(_kf_fn,gethwid) then
       local _kf_alt=_kf_find_c_gethwid()
       if type(_kf_alt)=="function" then _kf_fn=_kf_alt end
      end
     end
     local _kf_raw=""
     if type(_kf_fn)=="function" then
      pcall(function() _kf_raw=_kf_try_hwid_fn(_kf_fn) end)
     end
     pcall(function()
      if type(_kf_hwid_env)=="function" and type(gethwid)=="function" and not rawequal(_kf_hwid_env,gethwid) then
       local vG=_kf_try_hwid_fn(gethwid)
       local vE=_kf_try_hwid_fn(_kf_hwid_env)
       if vG~="" and vE~="" and vG~=vE then
        if _kf_hex128(vG) and not _kf_hex128(vE) then _kf_raw=vE
        elseif not _kf_hex128(vG) and _kf_hex128(vE) then _kf_raw=vG
        else _kf_raw=vE
        end
       end
      end
     end)
     local function _kf_hwid_global_spoofed()
      if type(gethwid)~="function" or type(debug.info)~="function" then return false end
      local ok,src=pcall(debug.info,gethwid,"s")
      if not ok or type(src)~="string" then return false end
      return src:sub(1,3)~="=[C]"
     end
     if _kf_hex128(_kf_raw) then
      local _kf_drop=false
      if _kf_hwid_global_spoofed() then _kf_drop=true end
      if not _kf_drop and _kf_analytics~="" and _kf_raw:lower()==_kf_analytics:lower() then _kf_drop=true end
      if _kf_drop then _kf_raw=_kf_analytics end
     end
     if type(_kf_raw)~="string" or _kf_raw=="" then _kf_raw=_kf_analytics end
     a72=_kf_raw
    end

local m9d
pcall(function()
  local UGS = UserSettings():GetService("UserGameSettings")
  local key = "nil  nil  "
  local charset = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"
  local function readBits()
    local state = UGS:GetTutorialState(key)
    local out = ""
    for i = 1, 16 do
      local base = (i - 1) * 5
      local byteIndex = math.floor(base / 8) + 1
      local shift = base % 8
      local v = bit32 and bit32.band(bit32.rshift(state[byteIndex] or 0, shift), 31) or 0
      out = out .. charset:sub(v + 1, v + 1)
    end
    return out
  end
  local existing = readBits()
  if type(existing)=="string" and existing:match("^[%w]+$") and #existing == 16 then
    m9d = existing
    return
  end
  local seed = (os.clock and os.clock() or tick()) * 100000
  local state = {}
  for i = 1, 10 do state[i] = 0 end
  for i = 1, 16 do
    seed = (seed * 1103515245 + 12345) % 2147483648
    local v = seed % 32
    local base = (i - 1) * 5
    local byteIndex = math.floor(base / 8) + 1
    local shift = base % 8
    if bit32 then
      state[byteIndex] = bit32.bor(state[byteIndex] or 0, bit32.lshift(v, shift))
    end
  end
  UGS:SetTutorialState(key, state)
  m9d = readBits()
end)

local bfd
local b9d
local bb6
local b55
local bda
local b06
local b99
local b72
local cfd
local c9d = 0
local cb6 = 0
pcall(function() rawset(_G,"_kf_fp_hb",{c=0,ms=0}) end)
local c55
local cda
pcall(function()
  local _kf_context_deadline=os.clock()+0.6
  local _kf_rs=game:GetService("RunService")
  repeat
    pcall(function()
      local _kf_place=tonumber(game.PlaceId)
      if _kf_place and _kf_place>0 then bfd=_kf_place end
    end)
    pcall(function()
      local _kf_universe=tonumber(game.GameId)
      if _kf_universe and _kf_universe>0 then b9d=_kf_universe end
    end)
    pcall(function() b06=game:IsLoaded() end)
    if bfd and b9d then break end
    if os.clock()>=_kf_context_deadline then break end
    local _kf_tick=pcall(function() _kf_rs.Heartbeat:Wait() end)
    if not _kf_tick then
      if task and task.wait then task.wait(0.03)
      elseif type(wait)=="function" then wait(0.03) end
    end
  until false
end)
pcall(function() c55 = game.PlaceVersion end)
pcall(function()
    local RunService = game:GetService("RunService")
    bda = RunService:IsStudio()
    b99 = RunService:IsClient()
    b72 = RunService:IsServer()
    cfd = RunService:IsRunning()
end)
pcall(function()
    local RunService = game:GetService("RunService")
    local kb6
    kb6 = RunService.Heartbeat:Connect(function(k55)
        local m72=rawget(_G,"_kf_fp_hb")
        if type(m72)~="table" then return end
        m72.c=(tonumber(m72.c) or 0)+1
        m72.ms=(tonumber(m72.ms) or 0)+math.floor(((tonumber(k55) or 0)*1000)+0.5)
    end)
    pcall(function() rawset(_G,"_kf_fp_hb_conn",kb6) end)
    local kda = os.clock()
    while (tonumber((type(rawget(_G,"_kf_fp_hb"))=="table" and rawget(_G,"_kf_fp_hb").c) or 0) or 0) < 1 and (os.clock() - kda) < 0.25 do
        pcall(function() RunService.Heartbeat:Wait() end)
        if (tonumber((type(rawget(_G,"_kf_fp_hb"))=="table" and rawget(_G,"_kf_fp_hb").c) or 0) or 0) < 1 then
            if task and task.wait then task.wait(0.05)
            elseif type(wait)=="function" then wait(0.05) end
        end
    end
    do local m72=rawget(_G,"_kf_fp_hb")
     if type(m72)=="table" then
      c9d=tonumber(m72.c) or 0
      cb6=tonumber(m72.ms) or 0
     end
    end
if kb6 ~= nil then
  pcall(function()
    if type(kb6) == "table" or type(kb6) == "userdata" then
      if type(kb6.Disconnect) == "function" then kb6:Disconnect()
      elseif type(kb6.disconnect) == "function" then kb6:disconnect()
      end
    end
  end)
  kb6 = nil
end
end)
pcall(function()
    local Players = game:GetService("Players")
    local k06 = Players.LocalPlayer
    if not k06 then
        local kda = os.clock()
        while not k06 and (os.clock() - kda) < 0.5 do
            local e99 = pcall(function() game:GetService("RunService").Heartbeat:Wait() end)
            if not e99 and task and task.wait then task.wait(0.05) end
            k06 = Players.LocalPlayer
        end
    end
    if k06 then b55 = tostring(k06.UserId) end
end)
pcall(function() b06 = game:IsLoaded() end)
pcall(function() cda = workspace.CurrentCamera ~= nil end)
pcall(function()
  local function _kf_wait_tick()
    pcall(function() game:GetService("RunService").Heartbeat:Wait() end)
    if task and task.wait then task.wait(0.05) elseif type(wait)=="function" then wait(0.05) end
  end
  local function _kf_poll_job(_kf_deadline)
    while os.clock()<_kf_deadline do
      local _kf_j=tostring(game.JobId or "")
      if _kf_j~="" and _kf_j~="00000000-0000-0000-0000-000000000000" then
        bb6=_kf_j
        return true
      end
      _kf_wait_tick()
    end
    return false
  end
  local _kf_wait=2
  pcall(function() if type(Opiumware)=="table" then _kf_wait=math.max(_kf_wait,5) end end)
  if not _kf_poll_job(os.clock()+_kf_wait) and game.IsLoaded and type(game.IsLoaded)=="function" and not game:IsLoaded() then
    pcall(function()
      local _kf_conn
      local _kf_done=false
      _kf_conn=game.Loaded:Connect(function() _kf_done=true end)
      local _kf_t0=os.clock()
      while not _kf_done and not game:IsLoaded() and (os.clock()-_kf_t0)<math.min(_kf_wait+2,8) do
        _kf_wait_tick()
      end
      if _kf_conn then pcall(function() _kf_conn:Disconnect() end) end
    end)
    _kf_poll_job(os.clock()+_kf_wait)
  end
  bb6=tostring(game.JobId or "")
end)

local function f55(eda)
    if eda == nil then return '' end
    local m72 = tostring(eda)
    return type(m72) == "string" and m72 or ""
end
local function fda(k99)
    if type(k99) ~= "string" then
        local m72 = tostring(k99)
        k99 = type(m72) == "string" and m72 or ""
    end
    local k72 = 0
    for i = 1, #k99 do
        k72 = (k72 * 131 + string.byte(k99, i)) % 1000000007
    end
    return tostring(k72)
end
local c06 = fda(table.concat({
    Afd, A9d,
    f55(bb6), f55(bfd), f55(b9d),
    f55(b55), f55(a99),
    f55(b99), f55(b72),
    f55(cfd), f55(b06), f55(c9d),
}, '|'))

local c99 = "497e9e81eb6b0a5acf22f3f6fa5d0558e728e928683db8080b79c0e01abe5122"

local c72 = 1784942324

local function f06(eda)
    if type(eda) == "string" then return eda end
    if eda == nil then return "" end
    local m72 = tostring(eda)
    return type(m72) == "string" and m72 or ""
end
local function f72(eb6)
    eb6 = f06(eb6)
    if eb6 == "" then return "authentication failed" end
    if #eb6 > 220 then return "server error during authentication, try again" end
    if eb6:find("couldn't be loaded", 1, true) or eb6:find("<!DOCTYPE", 1, true) or eb6:find("__NEXT_DATA__", 1, true) then
        return "server error during authentication, try again"
    end
    local hint = eb6:match("^%-%- KeyForge: ([^\r\n]+)")
    if hint then return hint end
    if not eb6:find("return %(function%(", 1, true) and #eb6 < 180 then return eb6 end
    return "authentication failed"
end
local d9d = HttpService:JSONEncode({
    nonce = Afd,
    signature = A9d,
    fingerprint = {
        executor = a06,
        isRobloxEnv = true,
        hasHttp = true,
        hasFilesystem = fb6('readfile') or fb6('writefile') or fb6('isfile'),
        hasHooks = fb6('hookfunction') or fb6('hookmetamethod'),
        hasDrawing = fb6('Drawing'),
        hasClosures = fb6('newcclosure'),
        globalCount = ada,
        dumperGlobals = m55,
        dumperGlobalCount = mda,
        hasDumperGlobals = m06,
        hwid = a72,
        deviceId = m9d,
        analyticsClientId = a99,
        placeId = bfd,
        gameId = b9d,
        jobId = bb6,
        localPlayerUserId = b55,
        isStudio = bda,
        isLoaded = b06,
        runServiceIsClient = b99,
        runServiceIsServer = b72,
        runServiceIsRunning = cfd,
        heartbeatCount = c9d,
        heartbeatDeltaMs = cb6,
        placeVersion = c55,
        cameraReady = cda,
        rp = c06,
        serverProof = c99,
        buildTimestamp = c72,
    },
})

-- 4) Exchange the nonce for the protected source.
gfd("sending authentication request")
gfd("waiting for auth response")
local db6 = tonumber(os.clock()) or 0
local d55 = _kf_auth_r({
    Url = Ab6,
    Method = "POST",
    Headers = { ["Content-Type"] = "application/json", ["Ada"] = "1", ["A06"] = Afd },
    Body = d9d,
})
if _kf_abort then return end
local function _kf_auth_res_field(_kf_t,...)
 if type(_kf_t)~="table" then return nil end
 for _kf_i=1,select("#",...) do
  local _kf_k=select(_kf_i,...)
  local _kf_v=_kf_t[_kf_k]
  if _kf_v~=nil then return _kf_v end
 end
 return nil
end
local function _kf_auth_status(_kf_r)
 if type(_kf_r)~="table" then return 200 end
 local _kf_st=_kf_auth_res_field(_kf_r,"StatusCode","status_code","status","Status","Code","code","ResponseCode","response_code")
 if type(_kf_st)=="string" then _kf_st=tonumber(_kf_st:match("%d+")) end
 if type(_kf_st)=="number" then return _kf_st end
 local _kf_ok=_kf_auth_res_field(_kf_r,"Success","success","Ok","ok")
 if _kf_ok==false then return 500 end
 return 200
end
local function _kf_auth_body(_kf_r)
 if type(_kf_r)=="string" or type(_kf_r)=="number" then return f06(_kf_r) end
 if type(_kf_r)~="table" then return "" end
 return f06(_kf_auth_res_field(_kf_r,"Body","body","ResponseBody","responseBody","Text","text","Data","data","Content","content","Result","result","Message","message") or "")
end
local function _kf_auth_plain_err(_kf_b)
 if type(_kf_b)~="string" or _kf_b=="" then return false end
 if _kf_b:find("^%-%- KeyForge:",1,true) then return true end
 if #_kf_b>320 then return false end
 if _kf_b:find("local ",1,true) or _kf_b:find("function",1,true) then return false end
 if _kf_b:find("return ",1,true) or _kf_b:find("\n",1,true) then return false end
 return true
end
local function _kf_auth_delivery_ok(_kf_b,_kf_st)
 if type(_kf_b)~="string" or _kf_b=="" then return false end
 if _kf_b:sub(1,1)=="{" then return false end
 if _kf_auth_plain_err(_kf_b) then return false end
 if _kf_st<200 or _kf_st>=300 then return false end
 if #_kf_b<320 then return false end
 return true
end
local dda=_kf_auth_status(d55)
local d06=_kf_auth_body(d55)
if d55==nil then ffd("authentication request failed (no response)") end
if not _kf_auth_delivery_ok(d06,dda) then
 local _kf_msg=f72(d06)
 if _kf_msg=="" or _kf_msg=="authentication failed" then
  if type(d55)~="table" and type(d55)~="string" then _kf_msg="authentication request failed (bad response type "..type(d55)..")"
  elseif d06=="" then _kf_msg="authentication rejected ("..tostring(dda)..", empty response)"
  else _kf_msg="authentication rejected ("..tostring(dda)..", len="..tostring(#d06)..")" end
 end
 ffd(_kf_msg)
end
if type(d55)=="table" and type(d55.Headers)=="table" then
 local _kf_dh=d55.Headers["X-KeyForge-Delivery"] or d55.Headers["x-keyforge-delivery"]
 local _kf_dl=d55.Headers["X-KeyForge-Delivery-Len"] or d55.Headers["x-keyforge-delivery-len"]
 if _kf_dh=="1" and (not _kf_dl or tonumber(_kf_dl)~=#d06) then
  ffd("authentication failed")
 end
end
if dda<200 or dda>=300 then ffd("authentication failed") end
if d06:sub(1,1)=="{" or d06:find('"success"',1,true) or d06:find('"token"',1,true) then
 ffd("authentication failed")
end
if d06:find("couldn't be loaded",1,true) or d06:find("<!DOCTYPE",1,true) or (d06:sub(1,1)=="{" and d06:find("digest",1,true)) then
 ffd("server error during authentication, try again")
end
if _kf_abort then return end
local _kf_ki=""
local _kf_sec_t=""
if type(d55)=="table" and type(d55.Headers)=="table" then
 local _kf_hdr=d55.Headers
 local _kf_kid=_kf_hdr["X-KeyForge-Key-Id"] or _kf_hdr["x-keyforge-key-id"]
 if type(_kf_kid)=="string" and _kf_kid~="" then _kf_ki=_kf_kid end
 local _kf_rt=_kf_hdr["X-KeyForge-Report-Ticket"] or _kf_hdr["x-keyforge-report-ticket"]
 if type(_kf_rt)=="string" and _kf_rt~="" then _kf_sec_t=_kf_rt end
end
local d99 = math.floor((((tonumber(os.clock()) or db6) - db6) * 1000) + 0.5)
gfd("auth response received in " .. tostring(d99) .. "ms")
gfd("authed successfully in " .. tostring(d99) .. "ms")
pcall(function()
  local _kf_ge=(getgenv and getgenv())or _G
  if type(_kf_ge)=="table" then
    _kf_ge.__KF_GATE_OK=true
    _kf_ge.__KF_GATE_FAIL=false
    _kf_ge.__KF_GATE_ERR=nil
  end
end)

-- 5) Run the protected script.
gfd("loading protected script")
if _kf_abort then return end
if _kf_abort then return end
local _kf_r = ab6
local _kf_n = tostring(Afd)
local _kf_poison_comp=0
local _kf_soft_hook_poison=false
local function _kf_mark_hook(fn)
 if type(ishookfunction)~="function" or type(fn)~="function" then return end
 local ok,hooked=pcall(ishookfunction,fn)
 if ok and hooked then _kf_report_hook("http_hook") end
end
local function _kf_poison_byte(b)
 if _kf_soft_hook_poison and _kf_compiler_hook_hard and _kf_poison_comp>0 then return (b+_kf_poison_comp*5+17)%256 end
 return b
end
local _kf_sec_url="https://www.keyforge.win/v1/security/report"
local function _kf_report_hook(sig)
 pcall(function()
  if type(_kf_sec_url)~="string" or _kf_sec_url=="" then return end
  if type(_kf_r)~="function" then return end
  local _kf_sec_body={n=_kf_n or "",k=_kf_ki or "",signal=sig or "hook"}
  if type(_kf_sec_t)=="string" and _kf_sec_t~="" then _kf_sec_body.t=_kf_sec_t end
  _kf_r({Url=_kf_sec_url,Method="POST",
   Headers={["Content-Type"]="application/json",["X-KeyForge-Executor"]="1"},
   Body=game:GetService("HttpService"):JSONEncode(_kf_sec_body)})
 end)
end
local function _kf_fn_is_lua_closure(fn)
 if type(fn)~="function" then return false end
 if type(debug)~="table" or type(debug.info)~="function" then return false end
 local ok,src=pcall(debug.info,fn,"s")
 if not ok or type(src)~="string" then return false end
 return src:sub(1,1)=="@"
end
local function _kf_fn_native(fn)
 if type(fn)~="function" then return false end
 if type(debug)~="table" or type(debug.info)~="function" then return false end
 local ok,src=pcall(debug.info,fn,"s")
 if not ok or type(src)~="string" then return false end
 return src:sub(1,3)=="=[C"
end
local function kfCollectCompilerCandidates()
  local candidates = {}
  local function add(fn)
    if type(fn) == "function" then candidates[#candidates + 1] = fn end
  end
  local ge = nil
  if type(getgenv) == "function" then local ok,v=pcall(getgenv) if ok and type(v)=="table" then ge=v end end
  if type(ge) == "table" then add(ge.loadstring) add(ge.load) end
  local named = {}
  for _,name in ipairs({"Delta","Xeno","Opiumware","Volt","volt","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara"}) do
    local t=rawget(_G,name)
    if type(t)~="table" and type(ge)=="table" then t=rawget(ge,name) end
    if type(t)=="table" then named[#named+1]=t add(t.loadstring) add(t.load) end
  end
  if type(loadstring) == "function" then add(loadstring) end
  if type(load) == "function" then add(load) end
  if type(ge) == "table" then add(ge.__cload) end
  for _,t in ipairs(named) do add(t.__cload) end
  return candidates
end
local function kfProbeChunkName()
  local t = {}
  for i = 1, 8 do t[i] = string.char(math.random(65, 90)) end
  return "@" .. table.concat(t)
end
local function kfCompilerUnhooked(fn)
  if type(fn) ~= "function" then return false end
  if type(ishookfunction) == "function" then
    local ok, h = pcall(ishookfunction, fn)
    if ok and h then return false end
  end
  return true
end
local function kfCompilerNative(fn)
  if type(fn) ~= "function" then return false end
  if type(debug) ~= "table" or type(debug.info) ~= "function" then return false end
  local ok, src = pcall(debug.info, fn, "s")
  if not ok or type(src) ~= "string" then return false end
  return src:sub(1, 3) == "=[C"
end
local function kfCompilerOriginal(fn)
  if type(fn) ~= "function" then return fn end
  if type(getoriginalfunction) == "function" then
    local ok, orig = pcall(getoriginalfunction, fn)
    if ok and type(orig) == "function" then return orig end
  end
  return fn
end
local function kfCompilerHookedNative(fn)
  if type(fn) ~= "function" or not kfCompilerNative(fn) then return false end
  if type(getoriginalfunction) ~= "function" then return false end
  local ok, orig = pcall(getoriginalfunction, fn)
  return ok and type(orig) == "function" and orig ~= fn
end
local function kfCompilerRobloxSandbox(fn)
  if type(fn) ~= "function" then return false end
  local ok, res = pcall(fn, "return 1")
  if ok and type(res) == "function" then return false end
  local msg = tostring(res or "")
  if msg:find("RobloxScript", 1, true) ~= nil or msg:find("not available", 1, true) ~= nil then return true end
  if type(debug) == "table" and type(debug.info) == "function" then
    local okSrc, src = pcall(debug.info, fn, "s")
    if okSrc and type(src) == "string" and src:find("RobloxScript", 1, true) then return true end
  end
  return false
end
local function kfTryCompiler(fn)
  if type(fn) ~= "function" or kfCompilerRobloxSandbox(fn) then return nil end
  local ok, res = pcall(function() return fn("return 1") end)
  if ok and type(res) == "function" then return fn end
  ok, res = pcall(function() return fn("return 1", kfProbeChunkName(), "t") end)
  if ok and type(res) == "function" then return fn end
  ok, res = pcall(function() return fn("return 1", "=(kf)", "t") end)
  if ok and type(res) == "function" then return fn end
  return nil
end
local function kfPickCompiler(fn)
  if type(fn) ~= "function" then return nil end
  local orig = fn
  if type(getoriginalfunction) == "function" then
    local ok, o = pcall(getoriginalfunction, fn)
    if ok and type(o) == "function" then orig = o end
  end
  if kfTryCompiler(orig) then return orig end
  if kfTryCompiler(fn) then return fn end
  return nil
end
local function kfSealCompiler(fn)
  if type(fn) ~= "function" then return nil end
  if type(isfunctionhooked) == "function" and type(restorefunction) == "function" then
    local ok, h = pcall(isfunctionhooked, fn)
    if ok and h then pcall(restorefunction, fn) end
  elseif type(ishookfunction) == "function" and type(restorefunction) == "function" then
    local ok, h = pcall(ishookfunction, fn)
    if ok and h then pcall(restorefunction, fn) end
  end
  return kfPickCompiler(fn)
end
local _kf_pin_comp = nil
local function kfSanitizeCompilerGlobals()
  if _kf_pin_comp == nil or type(_kf_pin_comp) ~= "function" then return end
  pcall(function() rawset(_G, "_kf_native_text_ls", _kf_pin_comp) end)
end
local function kfPinCompiler()
  if _kf_pin_comp ~= nil then return end
  local candidates=kfCollectCompilerCandidates()
  if type(candidates)~="table" then return end
  for _, fn in ipairs(candidates) do
    if kfCompilerNative(fn) and kfTryCompiler(fn) then
      local picked = kfSealCompiler(fn)
      if picked ~= nil then
        _kf_pin_comp = picked
        kfSanitizeCompilerGlobals()
        return
      end
    end
  end
  for _, fn in ipairs(candidates) do
    if kfCompilerUnhooked(fn) and kfTryCompiler(fn) then
      local picked = kfSealCompiler(fn)
      if picked ~= nil then
        _kf_pin_comp = picked
        kfSanitizeCompilerGlobals()
        return
      end
    end
  end
end
local function kfResolveCompiler()
  kfPinCompiler()
  if _kf_pin_comp ~= nil and kfTryCompiler(_kf_pin_comp) then
    if kfCompilerUnhooked(_kf_pin_comp) then return _kf_pin_comp end
    if kfCompilerNative(_kf_pin_comp) then return _kf_pin_comp end
  end
  local candidates = kfCollectCompilerCandidates()
  if type(candidates)~="table" then return nil end
  local shim = nil
  local native_available = false
  for _, fn in ipairs(candidates) do
    if kfCompilerNative(fn) and kfTryCompiler(fn) then native_available = true break end
  end
  for _, fn in ipairs(candidates) do
    if kfCompilerUnhooked(fn) and kfTryCompiler(fn) then
      if kfCompilerNative(fn) then return fn end
      if not native_available and shim == nil then shim = fn end
    end
  end
  return shim
end
local _kf_ls = kfResolveCompiler()
local _kf_compiler_hook_hard=false
local function _kf_env_has_native_compiler()
 if type(kfCollectCompilerCandidates)~="function" or type(kfTryCompiler)~="function" then return false end
 local _kf_cands=kfCollectCompilerCandidates()
 if type(_kf_cands)~="table" then return false end
 for _,fn in ipairs(_kf_cands) do
  if _kf_fn_native(fn) and kfTryCompiler(fn) then return true end
 end
 return false
end
local function _kf_compiler_integrity(ls)
 if type(ls)~="function" then return false,"no compiler" end
 local ge=(type(getgenv)=="function" and getgenv()) or nil
 local function block_assignment(fn,sig)
  if type(fn)~="function" or fn==ls or fn==_kf_pin_comp then return false end
  if not _kf_env_has_native_compiler() then return false end
  if _kf_fn_is_lua_closure(fn) then
   _kf_report_hook(sig or "compiler_lua_closure_global")
   if _kf_compiler_hook_hard then _kf_poison_comp=1 return true end
  elseif type(ishookfunction)=="function" then
   local ok,hooked=pcall(ishookfunction,fn)
   if ok and hooked then
    _kf_report_hook(sig or "compiler_ishook_global")
    if _kf_compiler_hook_hard then _kf_poison_comp=1 return true end
   end
  end
  return false
 end
 if type(load)=="function" and load~=ls then
  if block_assignment(load,"load_assignment") then return false,"compiler integrity check failed" end
 end
 if type(loadstring)=="function" and loadstring~=ls then
  if block_assignment(loadstring,"loadstring_assignment") then return false,"compiler integrity check failed" end
 end
 if type(ge)=="table" then
  if type(ge.load)=="function" and ge.load~=ls then
   if block_assignment(ge.load,"compiler_lua_closure_global") then return false,"compiler integrity check failed" end
  end
  if type(ge.loadstring)=="function" and ge.loadstring~=ls then
   if block_assignment(ge.loadstring,"compiler_lua_closure_global") then return false,"compiler integrity check failed" end
  end
 end
 if type(load)=="function" and type(loadstring)=="function" and load==loadstring and load~=ls then
  _kf_report_hook("compiler_alias")
 end
 if type(ge)=="table" and type(ge.load)=="function" and type(ge.loadstring)=="function" and ge.load==ge.loadstring then
  if ge.load~=ls then _kf_report_hook("compiler_alias") end
 end
 if type(kfCompilerHookedNative)=="function" and kfCompilerHookedNative(ls) then
  _kf_report_hook("compiler_native_hooked")
  if _kf_compiler_hook_hard then _kf_poison_comp=1 return false,"compiler integrity check failed" end
 end
 if type(debug)=="table" and type(debug.info)=="function" then
  if not _kf_fn_native(ls) then
   local block=false
   if _kf_fn_is_lua_closure(ls) then
    if _kf_env_has_native_compiler() then block=true
    elseif type(ishookfunction)=="function" then
     local ok,h=pcall(ishookfunction,ls)
     if ok and h then block=true end
    end
   end
   if block then
    if _kf_fn_is_lua_closure(ls) then _kf_report_hook("compiler_lua_closure")
    else _kf_report_hook("compiler_ishook") end
    if _kf_compiler_hook_hard then _kf_poison_comp=1 return false,"compiler integrity check failed" end
   end
  elseif type(ishookfunction)=="function" then
   local ok,hooked=pcall(ishookfunction,ls)
   if ok and hooked then
    _kf_report_hook("compiler_ishook")
    if _kf_compiler_hook_hard then _kf_poison_comp=1 return false,"compiler integrity check failed" end
   end
  end
 elseif type(ishookfunction)=="function" then
  local ok,hooked=pcall(ishookfunction,ls)
  if ok and hooked then
   _kf_report_hook("compiler_ishook")
   if _kf_compiler_hook_hard then _kf_poison_comp=1 return false,"compiler integrity check failed" end
  end
 end
 return true
end
local function _kf_assignment_sweep()
 if type(_kf_env_has_native_compiler)~="function" or not _kf_env_has_native_compiler() then return true end
 local ge=(type(getgenv)=="function" and getgenv()) or nil
 local function chk(fn,sig)
  if type(fn)~="function" or fn==_kf_pin_comp then return true end
  if _kf_fn_is_lua_closure(fn) then
   _kf_report_hook(sig or "compiler_lua_closure_global")
   if _kf_compiler_hook_hard then return false,"compiler integrity check failed" end
  end
  if type(ishookfunction)=="function" then
   local ok,h=pcall(ishookfunction,fn)
   if ok and h then
    _kf_report_hook(sig or "compiler_ishook_global")
    if _kf_compiler_hook_hard then return false,"compiler integrity check failed" end
   end
  end
  return true
 end
 local ok,err
 if type(load)=="function" then ok,err=chk(load,"load_assignment") if not ok then return false,err end end
 if type(loadstring)=="function" then ok,err=chk(loadstring,"loadstring_assignment") if not ok then return false,err end end
 if type(ge)=="table" then
  if type(ge.load)=="function" then ok,err=chk(ge.load,"compiler_lua_closure_global") if not ok then return false,err end end
  if type(ge.loadstring)=="function" then ok,err=chk(ge.loadstring,"compiler_lua_closure_global") if not ok then return false,err end end
 end
 return true
end
local _kf_comp_n=0
local function _kf_rchunk()
 local t={}
 for i=1,10 do t[i]=string.char(math.random(65,90)) end
 return "@"..table.concat(t)
end
local function _kf_wipe_bytes(b)
 if type(b)~="table" then return end
 for i=1,#b do b[i]=0 end
end
local function _kf_load(src)
 if type(src)~="string" then return nil,"bad source" end
 kfPinCompiler()
 kfSanitizeCompilerGlobals()
 local ls=_kf_pin_comp
 if type(ls)~="function" or not kfTryCompiler(ls) then
  ls=kfResolveCompiler()
  if type(ls)=="function" and _kf_pin_comp==nil then _kf_pin_comp=ls end
 end
 if type(ls)~="function" or not kfTryCompiler(ls) then return nil,"no compiler" end
 local sweep_ok,sweep_err=_kf_assignment_sweep()
 if not sweep_ok then return nil,sweep_err end
 local ok,err=_kf_compiler_integrity(ls)
 if not ok then return nil,err end
 _kf_comp_n=(_kf_comp_n or 0)+1
 local cname=_kf_rchunk()
 local fn,er
 local function _kf_try_load(body,cn,mode)
  local _kf_ok,_kf_a,_kf_b
  local _kf_source_er=nil
  if mode=="t" then
   _kf_ok,_kf_a,_kf_b=pcall(function() return ls(body) end)
   if _kf_ok and type(_kf_a)=="function" then return _kf_a,_kf_b end
   _kf_source_er=tostring(_kf_b or _kf_a or "load failed")
  end
  _kf_ok,_kf_a,_kf_b=pcall(function() return ls(body,cn,mode) end)
  if _kf_ok and type(_kf_a)=="function" then return _kf_a,_kf_b end
  return nil,_kf_source_er or tostring(_kf_b or _kf_a or "load failed")
 end
 if #src>65536 then
  pcall(function()
   local s="[Keyforge Auth] compiler feed len="..tostring(#src)
   if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
  end)
  if _kf_luraph then
   fn,er=_kf_try_load(src,"=(kf)","t")
   if type(fn)~="function" then fn,er=_kf_try_load(src,"=","t") end
  else
   fn,er=_kf_try_load(src,cname,"t")
   if type(fn)~="function" then fn,er=_kf_try_load(src,"=(kf)","t") end
  end
  src=nil
  return fn,er
 end
 local _kf_bytes={}
 for i=1,#src do _kf_bytes[i]=src:byte(i) end
 src=nil
 local _kf_body=""
 for i=1,#_kf_bytes,4096 do
  local s={}
  for j=i,math.min(i+4095,#_kf_bytes) do s[#s+1]=string.char(_kf_bytes[j]) end
  _kf_body=_kf_body..table.concat(s)
 end
 if _kf_luraph then
  fn,er=_kf_try_load(_kf_body,"=(kf)","t")
  if type(fn)~="function" then fn,er=_kf_try_load(_kf_body,"=","t") end
  _kf_wipe_bytes(_kf_bytes)
  _kf_bytes=nil _kf_body=nil
  return fn,er
 end
 fn,er=_kf_try_load(_kf_body,cname,"t")
 if type(fn)~="function" then fn,er=_kf_try_load(_kf_body,"=(kf)","t") end
 _kf_wipe_bytes(_kf_bytes)
 _kf_bytes=nil _kf_body=nil
 return fn,er
end
do
 kfPinCompiler()
 if type(_kf_pin_comp)~="function" then
  local _kf_rs=kfResolveCompiler()
  if type(_kf_rs)=="function" then _kf_pin_comp=_kf_rs end
 end
 if type(_kf_pin_comp)=="function" then
  local _kf_ci_ok,_kf_ci_err=_kf_compiler_integrity(_kf_pin_comp)
  if not _kf_ci_ok then error("[Keyforge Auth] "..tostring(_kf_ci_err or "compiler integrity check failed"),0) end
 end
end
do
 local function _kf_pre_native_env()
  if type(kfCollectCompilerCandidates)~="function" or type(kfTryCompiler)~="function" then return false end
  local _kf_cands=kfCollectCompilerCandidates()
  if type(_kf_cands)~="table" then return false end
  for _,fn in ipairs(_kf_cands) do
   if _kf_fn_native(fn) and kfTryCompiler(fn) then return true end
  end
  return false
 end
 local function _kf_pre_chk(fn)
  if type(fn)~="function" or fn==_kf_pin_comp then return end
  if type(ishookfunction)=="function" then
   local _kf_ok,_kf_h=pcall(ishookfunction,fn)
   if _kf_ok and _kf_h then ffd("compiler integrity check failed") end
  end
  if _kf_pre_native_env() and _kf_fn_is_lua_closure(fn) then ffd("compiler integrity check failed") end
 end
 if type(load)=="function" then _kf_pre_chk(load) end
 if type(loadstring)=="function" then _kf_pre_chk(loadstring) end
 local _kf_ge=(type(getgenv)=="function" and getgenv()) or nil
 if type(_kf_ge)=="table" then
  if type(_kf_ge.load)=="function" then _kf_pre_chk(_kf_ge.load) end
  if type(_kf_ge.loadstring)=="function" then _kf_pre_chk(_kf_ge.loadstring) end
 end
end
if _kf_abort then return end
if type(d06)~="string" or #d06<320 then ffd("authentication failed") end
if _kf_abort then return end
local _kf_body = d06
d06 = nil
gfd("running protected script")
pcall(function()
 if _kf_silent==true or rawget(_G,"_kf_silent")==true then return end
 local s="[Keyforge Auth] pre-fetch body_len="..tostring(type(_kf_body)=="string" and #_kf_body or -1)
 if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
end)
rawset(_G,"_kf_hold_luraph",true)
rawset(_G,"_kf_pending_luraph",nil)
rawset(_G,"_kf_defer_luraph",true)
local _kf_deferred_luraph=nil
pcall(function()
 if _kf_silent==true or rawget(_G,"_kf_silent")==true then return end
 local s="[Keyforge Auth] invoke gate"
 if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
end)
local _kf_ok, _kf_runerr = pcall(function()
 local function _kf_ls_roblox_sandbox(fn)
  if type(fn)~="function" then return true end
  local ok,res=pcall(fn,"return 1")
  if ok then return false end
  local msg=tostring(res or "")
  return msg:find("RobloxScript",1,true)~=nil or msg:find("not available",1,true)~=nil
 end
 local function _kf_ls_try(fn)
  if type(fn)~="function" or _kf_ls_roblox_sandbox(fn) then return nil end
  local ok,a=pcall(function() return fn("return 1","=(kf)","t") end)
  if ok and type(a)=="function" then return fn end
  ok,a=pcall(function() return fn("return 1") end)
  if ok and type(a)=="function" then return fn end
  return nil
 end
 local function _kf_collect_protected_ls()
  local out,seen={},{}
  local function push(fn,trust)
   if type(fn)~="function" then return end
   for i=1,#seen do if seen[i]==fn then return end end
   seen[#seen+1]=fn
   if trust and not _kf_ls_roblox_sandbox(fn) then out[#out+1]=fn return end
   local picked=_kf_ls_try(fn)
   if picked then out[#out+1]=picked end
  end
  push(rawget(_G,"_kf_native_text_ls"),true)
  if type(getgenv)=="function" then
   local ok,ge=pcall(getgenv)
   if ok and type(ge)=="table" then
    push(ge.loadstring,true) push(ge.load,true) push(ge.loadstring,false) push(ge.load,false)
    for _,name in ipairs({"Delta","Xeno","Opiumware","Volt","volt","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
     local t=rawget(ge,name) if type(t)=="table" then push(t.loadstring,true) push(t.load,true) push(t.loadstring,false) push(t.load,false) end
    end
   end
  end
  if type(Opiumware)=="table" then
   push(Opiumware.loadstring,true) push(Opiumware.load,true)
   push(Opiumware.loadstring,false) push(Opiumware.load,false)
  end
  if type(Delta)=="table" then
   push(Delta.loadstring,true) push(Delta.load,true)
   push(Delta.loadstring,false) push(Delta.load,false)
  end
  if type(Xeno)=="table" then
   push(Xeno.loadstring,true) push(Xeno.load,true)
   push(Xeno.loadstring,false) push(Xeno.load,false)
  end
  if type(Real)=="table" then
   push(Real.loadstring,true) push(Real.load,true)
   push(Real.loadstring,false) push(Real.load,false)
  end
  push(_kf_ls,true)
  push(_kf_pin_comp,false)
  if type(kfResolveCompiler)=="function" then push(kfResolveCompiler(),false) end
  push(loadstring,false)
  push(load,false)
  push(rawget(_G,"_kf_native_ls"),true)
  if type(getgenv)=="function" then
   local ok,ge=pcall(getgenv)
   if ok and type(ge)=="table" then
    push(ge.__cload,true) push(ge.__cload,false)
    for _,name in ipairs({"Delta","Xeno","Opiumware","Volt","volt","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
     local t=rawget(ge,name) if type(t)=="table" then push(t.__cload,true) push(t.__cload,false) end
    end
   end
  end
  if type(Opiumware)=="table" then push(Opiumware.__cload,true) push(Opiumware.__cload,false) end
  if type(Delta)=="table" then push(Delta.__cload,true) push(Delta.__cload,false) end
  if type(Xeno)=="table" then push(Xeno.__cload,true) push(Xeno.__cload,false) end
  if type(Real)=="table" then push(Real.__cload,true) push(Real.__cload,false) end
  if #out==0 then
   push(rawget(_G,"_kf_native_text_ls"),true)
   push(rawget(_G,"_kf_native_ls"),true)
   push(_kf_ls,true)
   push(_kf_pin_comp,true)
   if type(kfResolveCompiler)=="function" then push(kfResolveCompiler(),true) end
   if type(Delta)=="table" then push(Delta.loadstring,true) push(Delta.load,true) push(Delta.__cload,true) end
   if type(Xeno)=="table" then push(Xeno.loadstring,true) push(Xeno.load,true) push(Xeno.__cload,true) end
  end
  return out
 end
 local function _kf_load_with_ls(ls,body,cname,mode,env)
  if type(ls)~="function" then return nil,"no loader function" end
  local ok,a,b
  local source_err=nil
  if mode=="t" then
   ok,a,b=pcall(function() return ls(body) end)
   if ok and type(a)=="function" then return a,b end
   source_err=tostring(b or a or "load failed")
  end
  if env~=nil then
   ok,a,b=pcall(function() return ls(body,cname,mode,env) end)
   if ok and type(a)=="function" then return a,b end
  end
  ok,a,b=pcall(function() return ls(body,cname,mode) end)
  if ok and type(a)=="function" then return a,b end
  ok,a,b=pcall(function() return ls(body,"=(kf)",mode) end)
  if ok and type(a)=="function" then return a,b end
  return nil,source_err or tostring(b or a or "load failed")
 end
 local function _kf_run_fatal(err)
  local msg=tostring(err or "")
  return msg:find("chunk ticket",1,true)~=nil
   or msg:find("websocket",1,true)~=nil
   or msg:find("ws delivery",1,true)~=nil
   or msg:find("session timeout",1,true)~=nil
  end
 local function _kf_run_with_compilers(body,mode,cname,env,apply_env)
  if type(_kf_load)=="function" then
   local fn,er=_kf_load(body)
   if type(fn)=="function" then
    if type(apply_env)=="function" then fn=apply_env(fn) end
    local ok,runer=pcall(fn)
    if ok then return end
    error(tostring(runer or "run failed"),0)
   end
  end
  local cands=_kf_collect_protected_ls()
  if #cands==0 then error("no loader function",0) end
  local last_err="no loader function"
  for i=1,#cands do
   local ls=cands[i]
   local fn,er=_kf_load_with_ls(ls,body,cname,mode,env)
   if type(fn)~="function" and mode=="t" then fn,er=_kf_load_with_ls(ls,body,"=(kf)",mode,env) end
   if type(fn)=="function" then
    if type(apply_env)=="function" then fn=apply_env(fn) end
    local ok,runer=pcall(fn)
    if ok then return end
    last_err=tostring(runer or "run failed")
    if _kf_run_fatal(last_err) then error(last_err,0) end
   else
    last_err=tostring(er or last_err)
   end
  end
  error(last_err,0)
 end
 local function _kf_bridge_table(dst,src,force)
  if type(dst)~="table" or type(src)~="table" then return end
  for k,v in pairs(src) do
   if v~=nil and (force or rawget(dst,k)==nil) then
    local cur=rawget(dst,k)
    if type(v)=="boolean" then
    elseif type(cur)=="function" and type(v)~="function" then
    else
     pcall(function() rawset(dst,k,v) end)
    end
   end
  end
 end
 local function _kf_executor_env()
  local ge=(type(getgenv)=="function" and getgenv()) or nil
  local re=nil
  if type(getrenv)=="function" then
   local ok,rv=pcall(getrenv)
   if ok and type(rv)=="table" then re=rv end
  end
  local fe=nil
  if type(getfenv)=="function" then
   local ok,rv=pcall(getfenv,0)
   if ok and type(rv)=="table" then fe=rv end
  end
  local env=(type(ge)=="table" and ge) or fe or re or _G
  if type(env)~="table" then env=_G end
  if type(getfenv)=="function" then
   local _kf_real_getfenv=rawget(_G,"_kf_native_getfenv")
   if type(_kf_real_getfenv)~="function" then _kf_real_getfenv=getfenv end
   getfenv=function(level)
    local base=(type(ge)=="table" and ge) or env
    if type(level)=="function" or type(level)=="thread" then
     local ok,rv=pcall(_kf_real_getfenv,level)
     if ok and type(rv)=="table" then return rv end
     return base
    end
    if type(level)~="number" or level<=5 then
     if type(base)=="table" then return base end
     return env
    end
    local ok,rv=pcall(_kf_real_getfenv,level)
    if ok and type(rv)=="table" then
     _kf_bridge_table(rv,ge,true)
     _kf_bridge_table(rv,env,true)
     return rv
    end
    return base
   end
   pcall(function() rawset(_G,"getfenv",getfenv) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"getfenv",getfenv) end) end
   if type(env)=="table" and env~=ge then pcall(function() rawset(env,"getfenv",getfenv) end) end
  end
  _kf_bridge_table(_G,ge,true)
  _kf_bridge_table(env,ge,true)
  _kf_bridge_table(env,_G,false)
  if type(Opiumware)=="table" then
   pcall(function() rawset(_G,"Opiumware",Opiumware) end)
   if rawget(env,"Opiumware")==nil then pcall(function() rawset(env,"Opiumware",Opiumware) end) end
   if type(Opiumware.request)=="function" then
    if rawget(_G,"request")==nil then pcall(function() rawset(_G,"request",Opiumware.request) end) end
    if rawget(env,"request")==nil then pcall(function() rawset(env,"request",Opiumware.request) end) end
   end
  end
  if type(syn)=="table" then
   if rawget(_G,"syn")==nil then pcall(function() rawset(_G,"syn",syn) end) end
   if rawget(env,"syn")==nil then pcall(function() rawset(env,"syn",syn) end) end
  end
  for _,tbl in ipairs({"Potassium","Madium","Delta","Volt","fluxus","Wave","Cryptic","Solara","Xeno"}) do
   local t=rawget(_G,tbl)
   if type(t)=="table" then
    if rawget(env,tbl)==nil then pcall(function() rawset(env,tbl,t) end) end
    if type(t.request)=="function" then
     if rawget(_G,"request")==nil then pcall(function() rawset(_G,"request",t.request) end) end
     if rawget(env,"request")==nil then pcall(function() rawset(env,"request",t.request) end) end
    end
   end
  end
  local function _kf_lookup_src(name)
   if type(ge)=="table" then
    local v=rawget(ge,name)
    if v~=nil then return v end
   end
   local v=rawget(_G,name)
   if v~=nil then return v end
   if type(re)=="table" then
    v=rawget(re,name)
    if v~=nil then return v end
   end
   return nil
  end
  if rawget(env,"request")==nil then
   local _kf_http_req=(type(http)=="table" and http.request) or nil
   for _,fn in ipairs({request,http_request,_kf_http_req}) do
    if type(fn)=="function" then
     if rawget(_G,"request")==nil then pcall(function() rawset(_G,"request",fn) end) end
     pcall(function() rawset(env,"request",fn) end)
     break
    end
   end
  end
  for _,name in ipairs({"getgenv","getrenv","getfenv","setfenv","hookfunction","hookmetamethod","getrawmetatable","setreadonly","newcclosure","checkcaller","readfile","writefile","isfile","listfiles","request","http_request","httpget","HttpGet","crypt","getgc","getreg","identifyexecutor","getexecutorname","Drawing","gethwid","loadstring","load","debug","game","workspace","script","task","wait","delay","spawn","tick","Instance","typeof","Enum","Vector3","CFrame","Color3","bit32","bit","coroutine","string","table","math","os","pcall","xpcall","assert","error","type","tostring","tonumber","select","unpack","pack","pairs","ipairs","next","rawget","rawset","rawequal","rawlen","print","warn","gcinfo","collectgarbage","setmetatable","getmetatable"}) do
   local v=_kf_lookup_src(name)
   if v~=nil and rawget(env,name)==nil then pcall(function() rawset(env,name,v) end) end
  end
  local _kf_task=_kf_lookup_src("task")
  if type(_kf_task)~="table" then _kf_task=rawget(env,"task") end
  local _kf_wait_fn=_kf_lookup_src("wait")
  if type(_kf_wait_fn)~="function" and type(_kf_task)=="table" and type(_kf_task.wait)=="function" then _kf_wait_fn=_kf_task.wait end
  if type(_kf_wait_fn)~="function" then
   _kf_wait_fn=function() pcall(function() game:GetService("RunService").Heartbeat:Wait() end) end
  end
  if type(_kf_task)=="table" then
   if type(_kf_task.wait)~="function" then pcall(function() rawset(_kf_task,"wait",_kf_wait_fn) end) end
   if type(_kf_task.delay)~="function" then
    local _kf_delay_fn=_kf_lookup_src("delay")
    if type(_kf_delay_fn)~="function" then
     _kf_delay_fn=function(s,f) if type(f)=="function" then if type(_kf_task.spawn)=="function" then _kf_task.spawn(function() _kf_wait_fn(s) f() end) else f() end end end
    end
    pcall(function() rawset(_kf_task,"delay",_kf_delay_fn) end)
   end
   if type(_kf_task.spawn)~="function" then
    local _kf_spawn_fn=_kf_lookup_src("spawn")
    if type(_kf_spawn_fn)~="function" and type(coroutine)=="table" and type(coroutine.wrap)=="function" then
     _kf_spawn_fn=function(f) if type(f)=="function" then coroutine.wrap(f)() end end
    end
    if type(_kf_spawn_fn)=="function" then pcall(function() rawset(_kf_task,"spawn",_kf_spawn_fn) end) end
   end
   pcall(function() rawset(env,"task",_kf_task) end)
  elseif rawget(env,"wait")==nil then
   pcall(function() rawset(env,"wait",_kf_wait_fn) end)
  end
  local function _kf_seed_compiler_env(tbl)
   if type(tbl)~="table" then return end
   local ls=rawget(_G,"_kf_native_text_ls")
   if type(ls)~="function" then ls=_kf_pin_comp end
   if type(ls)~="function" then ls=rawget(_G,"_kf_native_ls") end
   if type(ls)=="function" and _kf_ls_roblox_sandbox(ls) then ls=nil end
   if type(ls)~="function" and type(Opiumware)=="table" then
    ls=Opiumware.loadstring or Opiumware.load or Opiumware.__cload
    if _kf_ls_roblox_sandbox(ls) then ls=nil end
   end
   if type(ls)~="function" and type(kfResolveCompiler)=="function" then ls=kfResolveCompiler() end
   if type(ls)=="function" and _kf_ls_roblox_sandbox(ls) then ls=nil end
   if type(ls)~="function" then return end
   if type(rawget(tbl,"loadstring"))~="function" then pcall(function() rawset(tbl,"loadstring",ls) end) end
   if type(rawget(tbl,"load"))~="function" then pcall(function() rawset(tbl,"load",ls) end) end
  end
  _kf_seed_compiler_env(env)
  if type(ge)=="table" then _kf_seed_compiler_env(ge) end
  _kf_seed_compiler_env(_G)
  local function _kf_clipboard_ok(s)
   if type(s)~="string" then return true end
   if #s>512 then return false end
   if s:find("KF_",1,true) or s:find("X%-KeyForge",1,true) then return false end
   if s:find("proof",1,true) and s:find("Hash",1,true) then return false end
   if s:find("runtime",1,true) and s:find("Proof",1,true) then return false end
   return true
  end
  local function _kf_file_dump_ok(s)
   if type(s)~="string" then return true end
   if #s<2048 then return true end
   if s:find("_kf_enc",1,true) or s:find("[KeyForge",1,true) or s:find("[Keyforge Auth]",1,true) then return false end
   if s:find("Luraph",1,true) and s:find("protected",1,true) then return false end
   if s:find("_kf_",1,true) and s:find("loadstring",1,true) and #s>8192 then return false end
   if #s>262144 and (s:find("loadstring",1,true) or s:find("HttpGet",1,true)) then return false end
   return true
  end
  local function _kf_wrap_clipboard(tbl)
   if type(tbl)~="table" then return end
   local function guard(fn)
    if type(fn)~="function" then return fn end
    return function(s,...)
     if not _kf_clipboard_ok(s) then error("clipboard blocked",0) end
     return fn(s,...)
    end
   end
   for _,k in ipairs({"setclipboard","toclipboard","write_clipboard"}) do
    local v=rawget(tbl,k)
    if type(v)=="function" then pcall(function() rawset(tbl,k,guard(v)) end) end
   end
  end
  local function _kf_wrap_writefile(tbl)
   if type(tbl)~="table" then return end
   local function guard(fn)
    if type(fn)~="function" then return fn end
    return function(path,data,...)
     if rawget(_G,"_kf_spill_io")==true then return fn(path,data,...) end
     if type(path)=="string" and path:sub(1,6)=="kf_sp_" and path:sub(-4)==".kft" then return fn(path,data,...) end
     if not _kf_file_dump_ok(data) then
      pcall(_kf_report_hook,"writefile_dump")
      error("filesystem blocked",0)
     end
     return fn(path,data,...)
    end
   end
   for _,k in ipairs({"writefile","appendfile"}) do
    local v=rawget(tbl,k)
    if type(v)=="function" then pcall(function() rawset(tbl,k,guard(v)) end) end
   end
  end
  _kf_wrap_clipboard(_G)
  _kf_wrap_clipboard(env)
  if type(ge)=="table" then _kf_wrap_clipboard(ge) end
  _kf_wrap_writefile(_G)
  _kf_wrap_writefile(env)
  if type(ge)=="table" then _kf_wrap_writefile(ge) end
  if type(syn)=="table" and type(syn.setclipboard)=="function" then
   pcall(function()
    local _kf_syn_clip=syn.setclipboard
    syn.setclipboard=function(s,...) if not _kf_clipboard_ok(s) then error("clipboard blocked",0) end return _kf_syn_clip(s,...) end
   end)
  end
  if type(WYNF_ENC_FUNC)~="function" then
   WYNF_ENC_FUNC=LPH_ENC_FUNC or LPH_ENCFUNC or function(f,...) return f end
   pcall(function() rawset(_G,"WYNF_ENC_FUNC",WYNF_ENC_FUNC) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"WYNF_ENC_FUNC",WYNF_ENC_FUNC) end) end
   pcall(function() rawset(env,"WYNF_ENC_FUNC",WYNF_ENC_FUNC) end)
  end
  if type(LPH_ENCFUNC)~="function" then
   LPH_ENCFUNC=function(f,...) return f end
   pcall(function() rawset(_G,"LPH_ENCFUNC",LPH_ENCFUNC) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_ENCFUNC",LPH_ENCFUNC) end) end
   pcall(function() rawset(env,"LPH_ENCFUNC",LPH_ENCFUNC) end)
  end
  if type(LPH_ENC_FUNC)~="function" then
   LPH_ENC_FUNC=LPH_ENCFUNC or function(f,...) return f end
   pcall(function() rawset(_G,"LPH_ENC_FUNC",LPH_ENC_FUNC) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_ENC_FUNC",LPH_ENC_FUNC) end) end
   pcall(function() rawset(env,"LPH_ENC_FUNC",LPH_ENC_FUNC) end)
  end
  if type(LPH_FUNCENC)~="function" then
   LPH_FUNCENC=LPH_ENCFUNC or LPH_ENC_FUNC or function(f,...) return f end
   pcall(function() rawset(_G,"LPH_FUNCENC",LPH_FUNCENC) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_FUNCENC",LPH_FUNCENC) end) end
   pcall(function() rawset(env,"LPH_FUNCENC",LPH_FUNCENC) end)
  end
  if type(LPH_NO_VIRTUALIZE)~="function" then
   LPH_NO_VIRTUALIZE=function(f) return f end
   pcall(function() rawset(_G,"LPH_NO_VIRTUALIZE",LPH_NO_VIRTUALIZE) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_NO_VIRTUALIZE",LPH_NO_VIRTUALIZE) end) end
   pcall(function() rawset(env,"LPH_NO_VIRTUALIZE",LPH_NO_VIRTUALIZE) end)
  end
  if type(LPH_JIT)~="function" then
   LPH_JIT=function(f) return f end
   pcall(function() rawset(_G,"LPH_JIT",LPH_JIT) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_JIT",LPH_JIT) end) end
   pcall(function() rawset(env,"LPH_JIT",LPH_JIT) end)
  end
  if type(LPH_JIT_MAX)~="function" then
   LPH_JIT_MAX=function(f) return f end
   pcall(function() rawset(_G,"LPH_JIT_MAX",LPH_JIT_MAX) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_JIT_MAX",LPH_JIT_MAX) end) end
   pcall(function() rawset(env,"LPH_JIT_MAX",LPH_JIT_MAX) end)
  end
  if type(LPH_JIT_ULTRA)~="function" then
   LPH_JIT_ULTRA=function(f) return f end
   pcall(function() rawset(_G,"LPH_JIT_ULTRA",LPH_JIT_ULTRA) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_JIT_ULTRA",LPH_JIT_ULTRA) end) end
   pcall(function() rawset(env,"LPH_JIT_ULTRA",LPH_JIT_ULTRA) end)
  end
  if type(LPH_HOOK_FIX)~="function" then
   LPH_HOOK_FIX=function(f) return f end
   pcall(function() rawset(_G,"LPH_HOOK_FIX",LPH_HOOK_FIX) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_HOOK_FIX",LPH_HOOK_FIX) end) end
   pcall(function() rawset(env,"LPH_HOOK_FIX",LPH_HOOK_FIX) end)
  end
  if type(LPH_CRASH)~="function" then
   LPH_CRASH=function() end
   pcall(function() rawset(_G,"LPH_CRASH",LPH_CRASH) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_CRASH",LPH_CRASH) end) end
   pcall(function() rawset(env,"LPH_CRASH",LPH_CRASH) end)
  end
  if type(LPH_STRENC)~="function" then
   LPH_STRENC=LPH_ENCSTR or function(s) return s end
   pcall(function() rawset(_G,"LPH_STRENC",LPH_STRENC) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_STRENC",LPH_STRENC) end) end
   pcall(function() rawset(env,"LPH_STRENC",LPH_STRENC) end)
  end
  if type(LPH_NUMENC)~="function" then
   LPH_NUMENC=LPH_ENCNUM or function(n) return n end
   pcall(function() rawset(_G,"LPH_NUMENC",LPH_NUMENC) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_NUMENC",LPH_NUMENC) end) end
   pcall(function() rawset(env,"LPH_NUMENC",LPH_NUMENC) end)
  end
  if LPH_LINE==nil then
   LPH_LINE=0
   pcall(function() rawset(_G,"LPH_LINE",0) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_LINE",0) end) end
   pcall(function() rawset(env,"LPH_LINE",0) end)
  end
  if type(LPH_ENCSTR)~="function" then
   LPH_ENCSTR=function(s) return s end
   pcall(function() rawset(_G,"LPH_ENCSTR",LPH_ENCSTR) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_ENCSTR",LPH_ENCSTR) end) end
   pcall(function() rawset(env,"LPH_ENCSTR",LPH_ENCSTR) end)
  end
  if type(LPH_ENCNUM)~="function" then
   LPH_ENCNUM=function(n) return n end
   pcall(function() rawset(_G,"LPH_ENCNUM",LPH_ENCNUM) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_ENCNUM",LPH_ENCNUM) end) end
   pcall(function() rawset(env,"LPH_ENCNUM",LPH_ENCNUM) end)
  end
  if type(LPH_NO_UPVALUES)~="function" then
   LPH_NO_UPVALUES=function(f) return f end
   pcall(function() rawset(_G,"LPH_NO_UPVALUES",LPH_NO_UPVALUES) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_NO_UPVALUES",LPH_NO_UPVALUES) end) end
   pcall(function() rawset(env,"LPH_NO_UPVALUES",LPH_NO_UPVALUES) end)
  end
  if LPH_OBFUSCATED==nil then
   LPH_OBFUSCATED=false
   pcall(function() rawset(_G,"LPH_OBFUSCATED",false) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"LPH_OBFUSCATED",false) end) end
   pcall(function() rawset(env,"LPH_OBFUSCATED",false) end)
  end
  if type(WYNF_ENC_FUNC_SEED)~="function" then
   WYNF_ENC_FUNC_SEED=function(f,...) return f end
   pcall(function() rawset(_G,"WYNF_ENC_FUNC_SEED",WYNF_ENC_FUNC_SEED) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"WYNF_ENC_FUNC_SEED",WYNF_ENC_FUNC_SEED) end) end
   pcall(function() rawset(env,"WYNF_ENC_FUNC_SEED",WYNF_ENC_FUNC_SEED) end)
  end
  if type(WYNF_GET_RNG_SEED)~="function" then
   WYNF_GET_RNG_SEED=function()
    local t=(os and os.clock and os.clock()) or tick() or 0
    return math.floor(((t%1)*2147483647)+(t*1000))%2147483647+1
   end
   pcall(function() rawset(_G,"WYNF_GET_RNG_SEED",WYNF_GET_RNG_SEED) end)
   if type(ge)=="table" then pcall(function() rawset(ge,"WYNF_GET_RNG_SEED",WYNF_GET_RNG_SEED) end) end
   pcall(function() rawset(env,"WYNF_GET_RNG_SEED",WYNF_GET_RNG_SEED) end)
  end
  return env
 end
  local _kf_is_kf_wrap=type(_kf_body)=="string" and (
   _kf_body:find("[KeyForge v4 -- ws payload]",1,true)~=nil
   or _kf_body:find("[KeyForge fast embed]",1,true)~=nil
   or _kf_body:find("_kf_kf_wrap",1,true)~=nil
   or _kf_body:find("_kf_kf_embed",1,true)~=nil
   or (_kf_body:find("_kf_wsu",1,true)~=nil and _kf_body:find("_kf_ws_deliver",1,true)~=nil)
  )
  local _kf_is_gate=type(_kf_body)=="string" and not _kf_is_kf_wrap and (_kf_body:find("_kf_enc",1,true)~=nil or _kf_body:find("_kf_adler32",1,true)~=nil)
  if _kf_is_gate or _kf_is_kf_wrap then _kf_luraph=false end
  if _kf_wynf==nil then _kf_wynf=false else _kf_wynf=_kf_wynf==true end
  if type(_kf_body)=="string" and #_kf_body>48 and not _kf_is_gate and not _kf_is_kf_wrap and not _kf_wynf then
   if _kf_body:find("WYNF_OBFUSCATED",1,true) or _kf_body:find("wynfuscate",1,true) or _kf_body:find("-- Protected by wYnFuscate",1,true) then _kf_wynf=true end
   if not _kf_wynf and (_kf_body:find("Luraph",1,true) or _kf_body:find("-- This file was protected",1,true)) then _kf_luraph=true end
  end
  if _kf_wynf then _kf_luraph=false _kf_is_gate=false _kf_is_kf_wrap=false end
  if _kf_luraph==nil then _kf_luraph=false else _kf_luraph=_kf_luraph==true end
 pcall(function()
  if _kf_silent==true or rawget(_G,"_kf_silent")==true then return end
  local s="[Keyforge Auth] payload classify wrap="..tostring(_kf_is_kf_wrap).." gate="..tostring(_kf_is_gate).." luraph="..tostring(_kf_luraph).." wynf="..tostring(_kf_wynf).." len="..tostring(type(_kf_body)=="string" and #_kf_body or -1)
  if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
 end)
  if not _kf_luraph and not _kf_is_gate and not _kf_is_kf_wrap and (type(_kf_body)~="string" or #_kf_body<320) then
   error("delivery payload truncated or invalid (len="..tostring(type(_kf_body)=="string" and #_kf_body or -1)..")",0)
  end
  if _kf_is_kf_wrap and (type(_kf_body)~="string" or #_kf_body<320) then
   error("delivery wrapper truncated (len="..tostring(type(_kf_body)=="string" and #_kf_body or -1)..")",0)
  end
  if _kf_wynf then
  pcall(function()
   if _kf_silent==true or rawget(_G,"_kf_silent")==true then return end
   local s="[Keyforge Auth] wynf compile begin"
   if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
  end)
   local _kf_src=_kf_body
   _kf_body=nil
   local _kf_ok,_kf_runerr=pcall(function()
    local ls=_kf_pick_exec_ls()
    if type(ls)~="function" then error("no loader function",0) end
    local ok,fn,er=pcall(function() return ls(_kf_src) end)
    if not ok then error(tostring(fn),0) end
    if type(fn)~="function" then
     ok,fn,er=pcall(function() return ls(_kf_src,"=","t") end)
     if not ok then error(tostring(fn),0) end
    end
    if type(fn)~="function" then error(tostring(er or fn or "load failed"),0) end
    local rok,rerr=pcall(fn)
    if not rok then error(tostring(rerr),0) end
   end)
   _kf_src=nil
   if not _kf_ok then error(tostring(_kf_runerr),0) end
  elseif _kf_luraph then
 pcall(function()
  if _kf_silent==true or rawget(_G,"_kf_silent")==true then return end
  local s="[Keyforge Auth] luraph compile begin"
  if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
 end)
   local _kf_src=_kf_body
   _kf_body=nil
   local function _kf_fn_src(fn)
    if type(fn)~="function" or type(debug)~="table" or type(debug.info)~="function" then return nil end
    local ok,src=pcall(debug.info,fn,"s")
    return ok and type(src)=="string" and src or nil
   end
   local function _kf_fn_is_c(fn)
    local s=_kf_fn_src(fn)
    return type(s)=="string" and s:sub(1,3)=="=[C"
   end
   local function _kf_fn_is_lua(fn)
    local s=_kf_fn_src(fn)
    return type(s)=="string" and s:sub(1,1)=="@"
   end
   local function _kf_is_opiumware()
    if type(Opiumware)=="table" then return true end
    local ge=nil
    if type(getgenv)=="function" then
     local ok,rv=pcall(getgenv)
     if ok and type(rv)=="table" then ge=rv end
    end
    if type(ge)=="table" and type(rawget(ge,"Opiumware"))=="table" then return true end
    for _,name in ipairs({"identifyexecutor","getexecutorname"}) do
     local fn=rawget(_G,name)
     if type(fn)~="function" and type(ge)=="table" then fn=rawget(ge,name) end
     if type(fn)=="function" then
      local ok,value=pcall(fn)
      if ok and type(value)=="string" and value:lower():find("opium",1,true) then return true end
     end
    end
    return false
   end
   local function _kf_ls_marked_hooked(fn)
    if type(fn)~="function" then return false end
    if type(ishookfunction)=="function" then
     local ok,h=pcall(ishookfunction,fn)
     if ok and h then return true end
    end
    if type(isfunctionhooked)=="function" then
     local ok,h=pcall(isfunctionhooked,fn)
     if ok and h then return true end
    end
    return false
   end
   local function _kf_unhook_ls(fn)
    if type(fn)~="function" then return nil end
    if type(oth)=="table" and type(oth.get_root_callback)=="function" then
     local ok,root=pcall(oth.get_root_callback,fn)
     if ok and type(root)=="function" then fn=root end
    end
    if _kf_ls_marked_hooked(fn) and type(restorefunction)=="function" then
     pcall(restorefunction,fn)
    end
    return fn
   end
   local function _kf_try_compile(fn)
    if type(fn)~="function" then return nil end
    local ok,res=pcall(function() return fn("return 1") end)
    if ok and type(res)=="function" then return fn end
    ok,res=pcall(function() return fn("return 1","=","t") end)
    if ok and type(res)=="function" then return fn end
    ok,res=pcall(function() return fn("return 1","=(kf)","t") end)
    if ok and type(res)=="function" then return fn end
    return nil
   end
   local function _kf_seal_compile(fn)
    return _kf_try_compile(_kf_unhook_ls(fn))
   end
   local function _kf_pick_exec_ls()
    if _kf_is_opiumware() then
     local ge=nil
     if type(getgenv)=="function" then
      local ok,rv=pcall(getgenv)
      if ok and type(rv)=="table" then ge=rv end
     end
     local ot=type(Opiumware)=="table" and Opiumware or (type(ge)=="table" and rawget(ge,"Opiumware") or nil)
     local direct=nil
     if type(ot)=="table" then direct=_kf_try_compile(ot.loadstring) end
     if type(direct)~="function" and type(ge)=="table" then direct=_kf_try_compile(ge.loadstring) end
     if type(direct)~="function" then direct=_kf_try_compile(loadstring) end
     if type(direct)~="function" and type(ot)=="table" then direct=_kf_try_compile(ot.load) end
     if type(direct)~="function" and type(ge)=="table" then direct=_kf_try_compile(ge.load) end
     if type(direct)~="function" then direct=_kf_try_compile(load) end
     if type(direct)~="function" and type(ot)=="table" then direct=_kf_try_compile(ot.__cload) end
     if type(direct)~="function" and type(ge)=="table" then direct=_kf_try_compile(ge.__cload) end
     if type(direct)=="function" then return direct end
    end
    local ls=_kf_seal_compile(rawget(_G,"_kf_native_text_ls"))
    local function prefer_public(fn)
     local c=_kf_seal_compile(fn)
     if type(c)~="function" then return end
     if type(ls)~="function" then ls=c return end
     if _kf_fn_is_c(c) and not _kf_fn_is_c(ls) then ls=c end
    end
    local function prefer_private(fn)
     local c=_kf_seal_compile(fn)
     if type(c)=="function" and type(ls)~="function" then ls=c end
    end
    if type(getgenv)=="function" then
     local ok,ge=pcall(getgenv)
     if ok and type(ge)=="table" then
      prefer_public(ge.loadstring) prefer_public(ge.load)
      for _,name in ipairs({"Delta","Xeno","Opiumware","Volt","volt","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
       local t=rawget(ge,name) if type(t)=="table" then prefer_public(t.loadstring) prefer_public(t.load) end
      end
     end
    end
    if type(Opiumware)=="table" then
     prefer_public(Opiumware.loadstring) prefer_public(Opiumware.load)
    end
    if type(Delta)=="table" then prefer_public(Delta.loadstring) prefer_public(Delta.load) end
    if type(Xeno)=="table" then prefer_public(Xeno.loadstring) prefer_public(Xeno.load) end
    if type(Volt)=="table" then prefer_public(Volt.loadstring) prefer_public(Volt.load) end
    if type(volt)=="table" then prefer_public(volt.loadstring) prefer_public(volt.load) end
    for _,name in ipairs({"Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
     local t=rawget(_G,name) if type(t)=="table" then prefer_public(t.loadstring) prefer_public(t.load) end
    end
    prefer_public(loadstring) prefer_public(load)
    prefer_private(rawget(_G,"_kf_native_ls")) prefer_private(rawget(_G,"_kf_pin_comp"))
    if type(getgenv)=="function" then
     local ok,ge=pcall(getgenv)
     if ok and type(ge)=="table" then prefer_private(ge.__cload) end
    end
    if type(Opiumware)=="table" then prefer_private(Opiumware.__cload) end
    if type(Delta)=="table" then prefer_private(Delta.__cload) end
    if type(Xeno)=="table" then prefer_private(Xeno.__cload) end
    if type(Volt)=="table" then prefer_private(Volt.__cload) end
    if type(volt)=="table" then prefer_private(volt.__cload) end
    for _,name in ipairs({"Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
     local t=rawget(_G,name) if type(t)=="table" then prefer_private(t.__cload) end
    end
    return ls
   end
   local function _kf_luraph_public_ls()
    local ge=nil
    if type(getgenv)=="function" then
     local ok,rv=pcall(getgenv)
     if ok and type(rv)=="table" then ge=rv end
    end
    local cands,seen={}, {}
    local function push(fn)
     if type(fn)~="function" or _kf_ls_marked_hooked(fn) then return end
     for i=1,#seen do if seen[i]==fn then return end end
     seen[#seen+1]=fn
     cands[#cands+1]=fn
    end
    for _,name in ipairs({"Opiumware","Volt","volt","Xeno","Delta","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
     local t=rawget(_G,name)
     if type(t)~="table" and type(ge)=="table" then t=rawget(ge,name) end
     if type(t)=="table" then push(t.loadstring) push(t.load) end
    end
    if type(ge)=="table" then push(ge.loadstring) push(ge.load) end
    push(loadstring) push(load)
    local fallback=nil
    for i=1,#cands do
     local fn=cands[i]
     local ok,probe=pcall(function() return fn("return 1") end)
     if ok and type(probe)=="function" then
      if _kf_fn_is_c(fn) then return fn end
      if fallback==nil then fallback=fn end
     end
    end
    return fallback
   end
   local function _kf_global_ls()
    local g=loadstring or load
    if type(Xeno)=="table" then g=Xeno.loadstring or Xeno.load or g end
    if type(getgenv)=="function" then
     local ok,ge=pcall(getgenv)
     if ok and type(ge)=="table" then g=ge.loadstring or ge.load or g end
    end
    return type(g)=="function" and g or nil
   end
   local function _kf_decoy_src()
    return "-- This file was protected using Luraph Obfuscator\nreturn(function()end)()"
   end
   local function _kf_luraph_compile(src)
    local ls=_kf_luraph_public_ls()
    if type(ls)~="function" then error("no trusted public loader function",0) end
    local glo=_kf_global_ls()
    local _kf_glo_dump=false
    if type(glo)=="function" then
     if _kf_ls_marked_hooked(glo) then _kf_glo_dump=true end
     if _kf_fn_is_lua(glo) and _kf_fn_is_c(ls) and glo~=ls then _kf_glo_dump=true end
    end
    if _kf_glo_dump then
     pcall(_kf_report_hook,"compiler_ishook_global")
     pcall(function() glo(_kf_decoy_src(),"=","t") end)
     pcall(function() glo(_kf_decoy_src()) end)
     if glo==ls then
      src=nil
      error("compiler integrity check failed",0)
     end
    end
    local ok,fn,er=pcall(function() return ls(src) end)
    src=nil
    if not ok then error(tostring(fn),0) end
    if type(fn)~="function" then error(tostring(er or fn or "load failed"),0) end
    return fn
   end
   local s=_kf_src
   _kf_src=nil
   local _kf_luraph_fn=_kf_luraph_compile(s)
   _kf_deferred_luraph=_kf_luraph_fn
   rawset(_G,"_kf_pending_luraph",_kf_luraph_fn)
  else
  local _kf_src=_kf_body
  _kf_body=nil
  if _kf_is_gate or _kf_is_kf_wrap then
 pcall(function()
  if _kf_silent==true or rawget(_G,"_kf_silent")==true then return end
  local s="[Keyforge Auth] "..(_kf_is_kf_wrap and "ws wrapper compile begin" or "gate compile begin")
  if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
 end)
   local function _kf_fn_src(fn)
    if type(fn)~="function" or type(debug)~="table" or type(debug.info)~="function" then return nil end
    local ok,src=pcall(debug.info,fn,"s")
    return ok and type(src)=="string" and src or nil
   end
   local function _kf_fn_is_c(fn)
    local s=_kf_fn_src(fn)
    return type(s)=="string" and s:sub(1,3)=="=[C"
   end
   local function _kf_fn_is_lua(fn)
    local s=_kf_fn_src(fn)
    return type(s)=="string" and s:sub(1,1)=="@"
   end
   local function _kf_is_opiumware()
    if type(Opiumware)=="table" then return true end
    local ge=nil
    if type(getgenv)=="function" then
     local ok,rv=pcall(getgenv)
     if ok and type(rv)=="table" then ge=rv end
    end
    if type(ge)=="table" and type(rawget(ge,"Opiumware"))=="table" then return true end
    for _,name in ipairs({"identifyexecutor","getexecutorname"}) do
     local fn=rawget(_G,name)
     if type(fn)~="function" and type(ge)=="table" then fn=rawget(ge,name) end
     if type(fn)=="function" then
      local ok,value=pcall(fn)
      if ok and type(value)=="string" and value:lower():find("opium",1,true) then return true end
     end
    end
    return false
   end
   local function _kf_ls_marked_hooked(fn)
    if type(fn)~="function" then return false end
    if type(ishookfunction)=="function" then
     local ok,h=pcall(ishookfunction,fn)
     if ok and h then return true end
    end
    if type(isfunctionhooked)=="function" then
     local ok,h=pcall(isfunctionhooked,fn)
     if ok and h then return true end
    end
    return false
   end
   local function _kf_unhook_ls(fn)
    if type(fn)~="function" then return nil end
    if type(oth)=="table" and type(oth.get_root_callback)=="function" then
     local ok,root=pcall(oth.get_root_callback,fn)
     if ok and type(root)=="function" then fn=root end
    end
    if _kf_ls_marked_hooked(fn) and type(restorefunction)=="function" then
     pcall(restorefunction,fn)
    end
    return fn
   end
   local function _kf_try_compile(fn)
    if type(fn)~="function" then return nil end
    local ok,res=pcall(function() return fn("return 1") end)
    if ok and type(res)=="function" then return fn end
    ok,res=pcall(function() return fn("return 1","=","t") end)
    if ok and type(res)=="function" then return fn end
    ok,res=pcall(function() return fn("return 1","=(kf)","t") end)
    if ok and type(res)=="function" then return fn end
    return nil
   end
   local function _kf_seal_compile(fn)
    return _kf_try_compile(_kf_unhook_ls(fn))
   end
   local function _kf_pick_exec_ls()
    if _kf_is_opiumware() then
     local ge=nil
     if type(getgenv)=="function" then
      local ok,rv=pcall(getgenv)
      if ok and type(rv)=="table" then ge=rv end
     end
     local ot=type(Opiumware)=="table" and Opiumware or (type(ge)=="table" and rawget(ge,"Opiumware") or nil)
     local direct=nil
     if type(ot)=="table" then direct=_kf_try_compile(ot.loadstring) end
     if type(direct)~="function" and type(ge)=="table" then direct=_kf_try_compile(ge.loadstring) end
     if type(direct)~="function" then direct=_kf_try_compile(loadstring) end
     if type(direct)~="function" and type(ot)=="table" then direct=_kf_try_compile(ot.load) end
     if type(direct)~="function" and type(ge)=="table" then direct=_kf_try_compile(ge.load) end
     if type(direct)~="function" then direct=_kf_try_compile(load) end
     if type(direct)~="function" and type(ot)=="table" then direct=_kf_try_compile(ot.__cload) end
     if type(direct)~="function" and type(ge)=="table" then direct=_kf_try_compile(ge.__cload) end
     if type(direct)=="function" then return direct end
    end
    local ls=_kf_seal_compile(rawget(_G,"_kf_native_text_ls"))
    local function prefer_public(fn)
     local c=_kf_seal_compile(fn)
     if type(c)~="function" then return end
     if type(ls)~="function" then ls=c return end
     if _kf_fn_is_c(c) and not _kf_fn_is_c(ls) then ls=c end
    end
    local function prefer_private(fn)
     local c=_kf_seal_compile(fn)
     if type(c)=="function" and type(ls)~="function" then ls=c end
    end
    if type(getgenv)=="function" then
     local ok,ge=pcall(getgenv)
     if ok and type(ge)=="table" then
      prefer_public(ge.loadstring) prefer_public(ge.load)
      for _,name in ipairs({"Delta","Xeno","Opiumware","Volt","volt","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
       local t=rawget(ge,name) if type(t)=="table" then prefer_public(t.loadstring) prefer_public(t.load) end
      end
     end
    end
    if type(Opiumware)=="table" then
     prefer_public(Opiumware.loadstring) prefer_public(Opiumware.load)
    end
    if type(Delta)=="table" then prefer_public(Delta.loadstring) prefer_public(Delta.load) end
    if type(Xeno)=="table" then prefer_public(Xeno.loadstring) prefer_public(Xeno.load) end
    if type(Volt)=="table" then prefer_public(Volt.loadstring) prefer_public(Volt.load) end
    if type(volt)=="table" then prefer_public(volt.loadstring) prefer_public(volt.load) end
    for _,name in ipairs({"Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
     local t=rawget(_G,name) if type(t)=="table" then prefer_public(t.loadstring) prefer_public(t.load) end
    end
    prefer_public(loadstring) prefer_public(load)
    prefer_private(rawget(_G,"_kf_native_ls")) prefer_private(rawget(_G,"_kf_pin_comp"))
    if type(getgenv)=="function" then
     local ok,ge=pcall(getgenv)
     if ok and type(ge)=="table" then prefer_private(ge.__cload) end
    end
    if type(Opiumware)=="table" then prefer_private(Opiumware.__cload) end
    if type(Delta)=="table" then prefer_private(Delta.__cload) end
    if type(Xeno)=="table" then prefer_private(Xeno.__cload) end
    if type(Volt)=="table" then prefer_private(Volt.__cload) end
    if type(volt)=="table" then prefer_private(volt.__cload) end
    for _,name in ipairs({"Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
     local t=rawget(_G,name) if type(t)=="table" then prefer_private(t.__cload) end
    end
    return ls
   end
   local function _kf_gate_ls()
    return _kf_pick_exec_ls()
   end
   local function _kf_gate_glo()
    local g=loadstring or load
    if type(getgenv)=="function" then
     local ok,ge=pcall(getgenv)
     if ok and type(ge)=="table" then g=ge.loadstring or ge.load or ge.__cload or g end
    end
    return type(g)=="function" and g or nil
   end
   local _kf_ok,_kf_runerr=pcall(function()
    local ls=_kf_gate_ls()
    if type(ls)~="function" then error("no loader function",0) end
    local glo=_kf_gate_glo()
    local _kf_glo_dump=false
    if type(glo)=="function" then
     if _kf_ls_marked_hooked(glo) then _kf_glo_dump=true end
     if _kf_fn_is_lua(glo) and _kf_fn_is_c(ls) and glo~=ls then _kf_glo_dump=true end
    end
    if _kf_glo_dump then
     pcall(_kf_report_hook,"compiler_ishook_global")
     pcall(function() glo("-- This file was protected using Luraph Obfuscator\nreturn(function()end)()","=(kf)","t") end)
     pcall(function() glo("-- This file was protected using Luraph Obfuscator\nreturn(function()end)()") end)
     if glo==ls then error("compiler integrity check failed",0) end
    end
    local src=_kf_src
    _kf_src=nil
    pcall(function()
     if _kf_silent==true or rawget(_G,"_kf_silent")==true then return end
     local s="[Keyforge Auth] loadstring begin len="..tostring(type(src)=="string" and #src or -1)
     if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
    end)
    local ok,fn,er=pcall(function() return ls(src) end)
    if not ok or type(fn)~="function" then ok,fn,er=pcall(function() return ls(src,"=(kf)","t") end) end
    src=nil
    if not ok then error(tostring(fn),0) end
    if type(fn)~="function" then error(tostring(er or fn or "load failed"),0) end
    pcall(function()
     if _kf_silent==true or rawget(_G,"_kf_silent")==true then return end
     local s="[Keyforge Auth] user script begin"
     if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
    end)
    local rok,rerr=pcall(fn)
    if not rok then error(tostring(rerr),0) end
   end)
   if not _kf_ok then error(tostring(_kf_runerr),0) end
  else
  local _kf_env=_kf_executor_env()
  local _kf_cname="="
  local _kf_mode="t"
  local function _kf_apply_env(fn)
   if type(fn)~="function" then return fn end
   if setfenv then pcall(setfenv,fn,_kf_env) end
   if debug and debug.setfenv then pcall(debug.setfenv,fn,_kf_env) end
   if type(getfenv)=="function" then
    local ok,fe=pcall(getfenv,fn)
    if ok and type(fe)=="table" then _kf_bridge_table(fe,_kf_env,true) end
   end
   if type(_kf_seed_compiler_env)=="function" then
    local ok,fe=pcall(getfenv,fn)
    if ok and type(fe)=="table" then _kf_seed_compiler_env(fe) end
    _kf_seed_compiler_env(_kf_env)
   end
   return fn
  end
  local _kf_ok,_kf_runerr=pcall(function() _kf_run_with_compilers(_kf_src,_kf_mode,_kf_cname,_kf_env,_kf_apply_env) end)
  _kf_src=nil
  if not _kf_ok then error(tostring(_kf_runerr),0) end
  end
  end
end)
local _kf_pending=rawget(_G,"_kf_pending_luraph")
rawset(_G,"_kf_pending_luraph",nil)
rawset(_G,"_kf_hold_luraph",nil)
rawset(_G,"_kf_defer_luraph",nil)
local _kf_direct_luraph=_kf_deferred_luraph or _kf_pending
_kf_deferred_luraph=nil
if not _kf_ok then
 pcall(function()
  local s="[Keyforge Auth] protected run failed: "..tostring(_kf_runerr)
  if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
 end)
 ffd(tostring(_kf_runerr))
end
if type(_kf_direct_luraph)=="function" then
pcall(function()
 local nf=rawget(_G,"_kf_native_getfenv")
 if type(nf)=="function" then
  getfenv=nf
  rawset(_G,"getfenv",nf)
  if type(getgenv)=="function" then
   local ok,ge=pcall(getgenv)
   if ok and type(ge)=="table" then pcall(function() rawset(ge,"getfenv",nf) end) end
  end
 end
 local nr=rawget(_G,"_kf_native_getrenv")
 if type(nr)=="function" then
  getrenv=nr
  rawset(_G,"getrenv",nr)
  if type(getgenv)=="function" then
   local ok,ge=pcall(getgenv)
   if ok and type(ge)=="table" then pcall(function() rawset(ge,"getrenv",nr) end) end
  end
 end
 local function _kf_pick_ls()
  local ge=nil
  if type(getgenv)=="function" then
   local ok,rv=pcall(getgenv)
   if ok and type(rv)=="table" then ge=rv end
  end
  local cands={}
  local function push(fn)
   if type(fn)=="function" then cands[#cands+1]=fn end
  end
  push(rawget(_G,"_kf_native_text_ls"))
  push(rawget(_G,"_kf_native_ls"))
  push(rawget(_G,"_kf_pin_comp"))
  if type(ge)=="table" then
   push(ge.loadstring) push(ge.load)
   for _,name in ipairs({"Opiumware","Volt","volt","Xeno","Delta","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
    local t=rawget(ge,name)
    if type(t)=="table" then push(t.loadstring) push(t.load) end
   end
  end
  for _,name in ipairs({"Opiumware","Volt","volt","Xeno","Delta","Wave","fluxus","syn","Potassium","Madium","Cryptic","Solara","Real"}) do
   local t=rawget(_G,name)
   if type(t)=="table" then push(t.loadstring) push(t.load) end
  end
  if type(loadstring)=="function" then push(loadstring) end
  if type(load)=="function" then push(load) end
  for i=1,#cands do
   local fn=cands[i]
   local ok,probe=pcall(function() return fn("return 1") end)
   if ok and type(probe)=="function" then return fn end
  end
  return nil
 end
 local ls=_kf_pick_ls()
 local function _kf_fix_loaders(tbl)
  if type(tbl)~="table" or type(ls)~="function" then return end
  if type(rawget(tbl,"loadstring"))~="function" then pcall(function() rawset(tbl,"loadstring",ls) end) end
  if type(rawget(tbl,"load"))~="function" then pcall(function() rawset(tbl,"load",ls) end) end
 end
 _kf_fix_loaders(_G)
 if type(getgenv)=="function" then
  local ok,ge=pcall(getgenv)
  if ok and type(ge)=="table" then _kf_fix_loaders(ge) end
 end
 local function _kf_fill_fn(dst,name,src)
  if type(dst)~="table" or type(src)~="function" then return end
  local cur=rawget(dst,name)
  if cur==nil or type(cur)=="boolean" then pcall(function() rawset(dst,name,src) end) end
 end
 if type(getgenv)=="function" then
  local ok,ge=pcall(getgenv)
  if ok and type(ge)=="table" then
   for _,name in ipairs({"HttpGet","httpget","request","http_request","gethwid","identifyexecutor","getexecutorname","writefile","readfile","isfile","delfile","setclipboard","toclipboard","newcclosure","checkcaller","getgc","crypt","Drawing"}) do
    local v=rawget(ge,name)
    if type(v)=="function" then _kf_fill_fn(_G,name,v) end
   end
   for _,name in ipairs({"task","debug","os","bit","bit32","crypt","Drawing","syn"}) do
    local v=rawget(ge,name)
    if type(v)=="table" and (rawget(_G,name)==nil or type(rawget(_G,name))=="boolean") then
     pcall(function() rawset(_G,name,v) end)
    end
   end
  end
 end
end)
pcall(function()
 if _kf_silent==true or rawget(_G,"_kf_silent")==true then return end
 local s="[Keyforge Auth] luraph begin"
 if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
end)
 ;(function()
  local ok,err=pcall(_kf_direct_luraph)
  if not ok then
   pcall(function()
    local s="[Keyforge Auth] protected VM error: "..tostring(err)
    if type(warn)=="function" then warn(s) elseif type(print)=="function" then print(s) end
   end)
   ffd(tostring(err))
  end
 end)()
end