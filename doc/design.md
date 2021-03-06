# about design
## - 하고 싶은 것
    - 가계부를 만드는 것
        - 가계부는 뭐지?
            - 집에 필요한 돈이 나가고 들어오는 것을 기록해서 좀더 미래에 즐겁고 안전하게 지내기 위한 수단
            - 단순히 돈의 관리를 떠나서 미래에 대한 설계
                - 어떻게?
                    - 목표를 정하기
                    - 목표를 이룰 시점 정하기
                    - 목표를 이룰 금액 정하기
                    - 목표에 이르기까지 매월 모아야 할 금액 정하기
                    - 예산에 반영하기
        - 어떻게 만들까?
            - 예산 정하기
                - 한 달에 쓸 수 있는 돈 정하기
                    - 항목 정하기
                    - 항목별 예산 정하기
            - 개인별 가계부와 그룹별 가계부 구분하기
                - 왜?
                    - 내가 지출하는 돈과 공금에서 지출하는 돈을 별도로 관리하기 위해서
                - 그룹별 가계부란?
                    - 자신이 속한 그룹에서 쓰는 공동 가계부
                    - 부부의 공동 가계부
                    - 커플의 공동 가계부
                    - 모임의 공동 가계부 등등
            - 수입 관리
            - 지출 관리
                - 문자나 앱의 푸시 메시지에서 데이터를 추출해서 사용자에게 제안
                    - 중복되는 메시지에 관한 처리 방안 필요
                        - 예를 들면 내 통장에서 내 다른 통장으로 이체할 경우 2번의 문자가 발생하는데 이런 경우 하나만 처리하면 다른 하나는 처리하지 않아도 되도록 편의 기능이 필요
                    - 해당 패턴을 머신 러닝과 같은 방법으로 관리해서 좀더 나은 방법을 찾을 수 있도록 할 것
                        - 해당 패턴을 db에 관리해서 어떤 기기에서든 동일한 처리를 할 수 있도록 할 것
## 작업 순서
1. 예산 관리
    1. 예산 입력 받기
        - 필요한 정보
            - 총 가용 금액
            - 항목
            - 목표
            - 금액
            - 수정일자
            - 수정자
        - 화면은 낱개를 입력받는 화면 말고 그리드 형식으로 직접 수정할 수 있어야 한다.
    2. 예산 뷰
        - 예산이 어떤 식으로 변경되었는지 알기 위해 이력 관리 필요
        - 예산을 연단위로 월단위로 짜놓을 수 있는 뷰 및 편집창이 필요