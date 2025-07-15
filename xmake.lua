--add_rules("mode.debug", "mode.release")
set_languages("c++latest")

add_requires("gtest", {configs = {main = true}})

target("app")
    set_kind("binary")
    add_files("src/*.cpp", "src/*.mpp")

target("tests")
    set_kind("binary")
    add_files("src/*.mpp", "tests/*.cpp")
    add_packages("gtest")
    set_group("test")