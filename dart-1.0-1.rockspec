package = 'dart'
version = '1.0-1'

source = {
   url = ''
}

description = {
  summary = "Dart"
}

dependencies = { 'torch >= 7.0' }
build = {
     type = "command",
     build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)/../../../../../";
$(MAKE) -j 4
     ]],
     install_command = "cd build && $(MAKE) install"
     }
