project "ImGUI"
	kind "StaticLib"
	language "c++"
	staticruntime "off"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
	}
	
	filter "system:windows"
		systemversion "latest"
		cppdialect "c++17"
	
	filter "configurations:Debug"
		runtime "Debug"
	
	filter "configurations:Release"
		optimize "On"
		runtime "Release"
	
	filter "configurations:Dist"
		optimize "On"
		runtime "Release"
