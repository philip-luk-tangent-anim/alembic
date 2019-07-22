call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"

if not exist .\win64_vs_build (
    mkdir .\win64_vs_build
)

cd .\win64_vs_build

if exist .\CMakeCache.txt ( 
    del CMakeCache.txt
) 

cmake -G "Visual Studio 15 2017 Win64"  -DUSE_ARNOLD=0 -DUSE_BINARIES=1 -DUSE_EXAMPLES=1 -DUSE_HDF5=0 -DUSE_MAYA=0 -DUSE_PRMAN=0 -DUSE_PYALEMBIC=1 -DUSE_STATIC_BOOST=1 -DUSE_STATIC_HDF5=1 -DUSE_TESTS=1 -DALEMBIC_BUILD_LIBS=1 -DALEMBIC_ILMBASE_LINK_STATIC=1 -DALEMBIC_SHARED_LIBS=0 -DALEMBIC_LIB_USES_BOOST=0 -DALEMBIC_LIB_USES_TR1=0 -DPYTHON_VERSION_MAJOR=3 -DPYTHON_VERSION_MINOR=7 -DPYTHON_INCLUDE_DIR=C:\pipeline28\python\370_64\include -DPYTHON_LIBRARY=C:\pipeline28\python\370_64\libs\python37.lib -DBOOST_ROOT=T:\Development\philip.luk\software\boost\win_x64\1.68.0 -DILMBASE_ROOT=T:\Development\philip.luk\repo\local\thirdparty\openexr\2.3.0 -DPYILMBASE_ROOT=T:\Development\philip.luk\repo\local\thirdparty\openexr\2.3.0 -DALEMBIC_PYILMBASE_PYIMATH_LIB=T:\Development\philip.luk\repo\local\thirdparty\openexr\2.3.0\lib\PyImath.lib -DBoost_PYTHON_LIBRARY=T:\Development\philip.luk\software\boost\win_x64\1.68.0\lib64-msvc-14.1\boost_python37-vc141-mt-x64-1_68.lib -DCMAKE_PREFIX_PATH=Alembic -DCMAKE_INSTALL_PREFIX=T:\Development\philip.luk\repo\local\thirdparty\alembic\1.7.8\win_x64 ..\

REM "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\amd64\msbuild.exe" .\INSTALL.vcxproj /p:Configuration=Release /t:Build /m 
