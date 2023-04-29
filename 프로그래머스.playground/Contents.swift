import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    // 스테이지 : 실패율
    var fail:Dictionary = [Int:Double]()

    // 실패율 계산 후 저장
    for i in 1...N{
        // 도달한 수
        let a = stages.filter{$0 >= i}.count

        // 클리어한 수
        let b = a - stages.filter{$0 > i}.count

        // 실패율
        let failCount = Double(b) / Double(a)

        fail[i] = failCount
        print(fail)
    }

    // 실패율이 높은 순서대로 내림차순 숫자 등록, 실패율이 같으면 오름차순
    let failSorted = fail.sorted(by: <).sorted(by: {$0.value > $1.value})
    print(failSorted)

    return failSorted.map{$0.key}
}
let result = solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
print(result)



