--*****************************************************************************
--*	Author:		Chris Steenwyk <csteenwyk@gmail.com>
--*	Date:		11/19/2013
--*	Version:	1.00
--*
--*	NOTES:
--*		- use the '/' slash for all paths.
--*****************************************************************************

-- GENERAL SETUP -------------------------------------------------------------
--
project			"wxAdditions_Plugin"
kind			"SharedLib"
targetname		"wxadditions"
targetprefix	"lib"
targetdir		"wxAdditions"

defines			{
					"TIXML_USE_TICPP",
					"BUILD_DLL",
				}
includedirs 	{
					"../include",
					"sdk/tinyxml",
					"sdk/plugin_interface"
				}
files			{
					"*.cpp",
					"*.h",
					"*.lua",
				}
libdirs			{
					"lib",
					"../lib",
					"../gcc" .. _OPTIONS["compiler-version"] .. "_dll"
				}
links			{
					"plugin-interface",
					"TiCPP",
					wx.LibName( "treelistctrl", isDebug ),
					wx.LibName( "plotctrl", isDebug ),
					wx.LibName( "things", isDebug ),
					wx.LibName( "awx", isDebug ),
					wx.LibName( "ledbargraph", isDebug ),
					wx.LibName( "flatnotebook", isDebug ),
				}

Configure()
wx.Configure( false )


