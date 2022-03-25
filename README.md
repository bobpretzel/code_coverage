# code_coverage

LLVM code coverage test. 
Currently llvm-profdata is unable to convert the generated profraw file to profdata format using the latest 13.0.1 LLVM binary download for Mac:

```bash
llvm-profdata merge *.profraw -o main.profdata
warning: main-15823428375228044794_3.profraw: unsupported instrumentation profile format version
```

## build

```bash
chmod ug+x ./profile.sh
./profile.sh
```
