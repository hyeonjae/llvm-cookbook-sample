# chapter 2

## 예제 코드
[toy.cpp](https://github.com/hyeonjae/llvm-cookbook-sample/blob/master/chapter2/toy.cpp)

## 빌드

```bash
$ clang `llvm-config --cxxflags --ldflags --system-libs --libs core` toy.cpp -o toy
```
or
```bash
$ ./build.sh clang++ ../llvm-3.7/build/llvm-config
```

## 실행
```bash
$ ./toy examples/example1.txt
; ModuleID = 'toy'

define i32 @foo(i32 %x, i32 %y) {
entry:
  %multmp = mul i32 %y, 16
  %addtmp = add i32 %x, %multmp
  ret i32 %addtmp
}
```

```bash
$ ./toy examples/example2.txt
; ModuleID = 'toy'

define i32 @0() {
entry:
  ret i32 11
}
```

```bash
$ ./toy examples/example3.txt
; ModuleID = 'toy'

define i32 @foo(i32 %x, i32 %y) {
entry:
  %multmp = mul i32 %y, 16
  %addtmp = add i32 %x, %multmp
  ret i32 %addtmp
}

define i32 @0() {
entry:
  %calltmp = call i32 @foo(i32 5, i32 6)
  ret i32 %calltmp
}
```

## 유의사항
```diff
-def foo (x, y)
+def foo (x y)
x + y * 16;
```
