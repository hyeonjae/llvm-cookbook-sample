# chapter 2

## 예제 코드
[toy.cpp](https://github.com/hyeonjae/llvm-cookbook-sample/blob/master/chapter2/toy.cpp)

## 빌드

```bash
clang `llvm-config --cxxflags --ldflags --system-libs --libs core` toy.cpp -o toy
```
or
```bash
./build.sh clang++ ../llvm-3.7/build/llvm-config
```

## 실행
```bash
./toy examples/example1.txt
```

```bash
./toy examples/example2.txt
```

```bash
./toy examples/example3.txt
```

## 유의사항
```diff
-def foo (x, y)
+def foo (x y)
x + y * 16;
```