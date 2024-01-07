# FlutterPlayground

Flutter 는 `dart` 언어를 바탕으로 Application 을 만들 수 있는 Cross platform 이다.


## 준비

실행 준비를 위해 Simulator 를 연다. 여기서는 `iOS` 시뮬레이터를 열도록 하자.

```zsh
open -a Simulator
```


## 빌드 및 실행

빌드와 동시에 실행시킬 수 있다. 다음과 같이 하면 된다.

```zsh
cd ${PROJECT_PATH}
flutter run
```


## 디버깅

실행 중 아래와 같은 명령으로 Simulator 에 명령 내릴 수 있다.

```
Flutter run key commands.
r Hot reload. 🔥🔥🔥
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).

A Dart VM Service on iPhone 15 Pro Max is available at: http://127.0.0.1:54380/b2H_Gtq4dr8=/
The Flutter DevTools debugger and profiler on iPhone 15 Pro Max is available at: http://127.0.0.1:9101?uri=http://127.0.0.1:54380/b2H_Gtq4dr8=/
```

| 명령어 | 설명                                       |
|--------|--------------------------------------------|
| `r`    | Hot reload. 🔥🔥🔥                             |
| `R`    | Hot restart.                                |
| `h`    | 모든 대화형 명령어 표시                      |
| `d`    | Detach (flutter run 종료, 애플리케이션 실행 중) |
| `c`    | 화면 지우기                                   |
| `q`    | 종료 (디바이스에서 애플리케이션 종료)          |