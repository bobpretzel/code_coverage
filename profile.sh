#!/bin/bash
mkdir build
cd build
cmake ..
make
rm *.profraw
LLVM_PROFILE_FILE="main-%9m.profraw" ./main
file *.profraw
llvm-profdata merge -sparse *.profraw -o main.profdata
llvm-cov show ./main -instr-profile=main.profdata
cd ..
