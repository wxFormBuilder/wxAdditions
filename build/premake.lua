project.name = "wxAdditions"

--dofile( "../../../premake/wrap_wxconfig.lua" )

-- Path to wx-config.
--wxconfigPath = ".." .. wxCFG_PATH_SEP .. ".." .. wxCFG_PATH_SEP .. ".." .. wxCFG_PATH_SEP .. "premake" .. wxCFG_PATH_SEP
-- Create a wxCfg object.
--cfg = wxCfg:new()
--cfg:Init( wxconfigPath )

--Test out functionality
--print( "wxWidgets version = " .. cfg:GetWxVersion() )
--print( "wxWidgets Libs = " .. cfg:GetLibs() )
--print( "wxWidgets cflags = " .. cfg:GetCFlags() )

-- Add sdk projects here.
dopackage( "awx" )
dopackage( "propgrid" )
dopackage( "wxFlatNotebook" )
dopackage( "wxScintilla" )
