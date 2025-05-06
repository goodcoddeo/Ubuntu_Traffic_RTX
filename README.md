# 🛰️ 네트워크 트래픽 모니터 스크립트

네트워크 인터페이스의 수신(RX), 송신(TX) 트래픽 속도를 초당 바이트(Byte/s) 단위로 측정하는 간단한 Bash 스크립트입니다.

---

## 📦 기능

- 네트워크 인터페이스 지정 가능
- 측정 간격(초 단위) 설정 가능
- 별도 의존성 없음 (순수 Bash 기반)
- 리눅스 서버 트래픽 확인에 적합

---

## 🚀 사용법

- 스크립트 다운로드
```
wget https://raw.githubusercontent.com/goodcoddeo/Ubuntu_Traffic_RTX/refs/heads/main/traffic_rtx.sh
sudo chmod +x traffic_rtx.sh
```

- 실행하기

```bash
sudo ./traffic_rtx.sh [인터페이스명] [측정간격]
````

* `인터페이스명` (선택): 예) `enp0s6`, `eth0` (기본값: `enp0s6`)
* `측정간격` (선택): 측정 주기(초) - 기본값: `1`

### ✅ 예시

```bash
sudo ./traffic_rtx.sh enp0s6 2
```

**출력 예시:**

```
Interface: enp0s6
Interval: 2s
RX Rate: 1048 Bytes/s
TX Rate: 856 Bytes/s
```

---

## 🧾 출력 설명

* **RX Rate**: 초당 수신된 바이트 수
* **TX Rate**: 초당 전송된 바이트 수

---

## 🔧 요구사항

* Bash 셸
* `/proc/net/dev`를 지원하는 리눅스 환경
