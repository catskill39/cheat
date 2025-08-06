-- Do not save this file
-- Always use the loadstring 
  _bsdata0 = {{1196131907,1754516534,166896},2200112157,785507,"\241\0\0\0","!H1EE4FB1422!2!05151FD46HBE!162E6H1AC3464A-A5A-56623HH!H5131CB20H32H!61302F65132A--H402EF40A!B1F24E44-31C3DB-3A4A334140AE13F","9324aff55b42bbdaed9bcddb35f6ffd2159467fe03312246e4704a75002b03f226a05d2e7d03d2ebdd49871f1e2403d4971f71321a534c25ec0686f6de7506745120e32625e90f13c632ad1aed007e9d6ff1e2c0aa54a1fab38d5208325e4ac28e73ec19f0f23d6b043ddb20db8a3eb5cca93034c6e4c4e627ca0c452b94b23aaece06f213cd2899832d0e54ce22b43b38ebaa24a369f6ca4e98693e20281093f5dbf67dad611d2a75e19e6adbbcf28c0513ac833a394ced8b2f4bc77be12e780becdfbf19a04e1d2fb2"};
pcall(function() delfile('0f4337cc5c175f29c4bfd0d88d844a94-cache.lua') end)
  local a pcall(function()a=readfile("static_content_130525/initv4.lua")end) if a and #a>2000 then a=loadstring(a) end;
if a then return a() else pcall(makefolder, "static_content_130525") a=game:HttpGet("https://cdn.luarmor.net/v4_init_may312.lua") writefile("static_content_130525/initv4.lua", a) pcall(delfile, "static_content_130525/init.lua"); pcall(delfile, "static_content_130525/initv2.lua"); pcall(delfile, "static_content_130525/initv3.lua"); loadstring(a)() end
  
