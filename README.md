# qml-android-example
An example of simple qml android application built with cmake

## Configure
Clone submodule with android openssl libs with the following commands
```
git submodule init
git submodule update
```


## Build from shell
Ensure that you have installed all necessary packages like Android NDK\SDK and Qt packages required for android build like ninja, cmake, android prebuild binaries.

### Configure shell environment
!!!NOTE path to the batch files may differ on your OS

configure qt environment
```
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
call "C:\Qt\5.15.2\android\bin\qtenv2.bat"
```

### Build binary
```
C:\Qt\Tools\CMake_64\bin\cmake.exe  .. -GNinja -DCMAKE_FIND_ROOT_PATH=C:/Qt/5.15.2/android -DCMAKE_PREFIX_PATH=C:/Qt/5.15.2/android -DANDROID_TOOLCHAIN=clang -DANDROID_NDK="c:/devel/android-sdk/ndk/21.3.6528147" -DCMAKE_TOOLCHAIN_FILE="c:/devel/android-sdk/ndk/21.3.6528147/build/cmake/android.toolchain.cmake" -DANDROID_NATIVE_API_LEVEL=29 -DANDROID_ABI=armeabi-v7a -DANDROID_BUILD_ABI_arm64-v8a:BOOL=ON -DANDROID_BUILD_ABI_armeabi-v7a:BOOL=ON -DANDROID_BUILD_ABI_x86_64:BOOL=ON
C:\Qt\Tools\CMake_64\bin\cmake.exe  --build . --target all
```

### Build apk
```
C:/Qt/5.15.2/android/bin/androiddeployqt.exe --input android_deployment_settings.json --output android-build --android-platform android-29 --jdk "c:/Program Files/Java/jre1.8.0_271" --gradle
```