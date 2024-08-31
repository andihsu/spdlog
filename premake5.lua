    project "spdlog"
	    kind "StaticLib"
	    language "C++"

        targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
        objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

        files {
            "include/spdlog/**.h",
            "include/spdlog/cfg/**.h",
            "include/spdlog/details/**.h",
            "include/spdlog/fmt/**.h",
            "include/spdlog/sinks/**.h",
        }

	    filter "system:windows"
	    	systemversion "latest"
	    	cppdialect "C++17"
	    	staticruntime "On"

	    filter "system:linux"
	    	pic "On"
	    	systemversion "latest"
	    	cppdialect "C++17"
	    	staticruntime "On"

	    filter "configurations:Debug"
	    	runtime "Debug"
	    	symbols "on"

	    filter "configurations:Release"
	    	runtime "Release"
	    	optimize "on"
