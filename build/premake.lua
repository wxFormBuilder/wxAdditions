project.name = "wxAdditions"

dofile( "premake/scripts/additions.lua" )

-- Add projects here.
dopackage( "awx" )
dopackage( "things" )
dopackage( "plotctrl" )
dopackage( "ledBarGraph" )
dopackage( "treelistctrl" )
dopackage( "propgrid" )
dopackage( "wxFlatNotebook" )
dopackage( "wxScintilla" )

