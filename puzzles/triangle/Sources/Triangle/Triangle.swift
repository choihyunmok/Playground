//Solution goes in Sources
/*:
Triangle
    =====
삼각형이 정삼각형(equilateral), 이등변 삼각형(isosceles) 또는 부등변 삼각형(scalene)인지 결정하는 클래스를 작성하라.
삼각형이 존재하지 않으면 에러가 발생한다.

## Structure
---
Triangle 클래스를 작성한다.


- Note:
삼각형 부등식 정리 : z ≤ x + y \
여기서 x, y 및 z는 삼각형의 변의 길이이다. 즉, 삼각형의 두 변의 길이의 합은 항상 세 번째 변의 길이보다 크거나 같다.


- Callout(Addition):
여기에서는 퇴행 삼각형을 삼각형으로 구분하지 않았다. 하지만 퇴화 된 삼각형을 확인하기 위해 직접 테스트를 추가할 수도 있다. \
퇴행 삼각형(degenarated triangle)이란 세 점이 한 직선 위에 있는 삼각형을 의미한다. \
[퇴행 삼각형 더 알아보기](https://tedder.tistory.com/138)



다음 생성자를 작성한다.
```
init(_ sides: Double...)
```



* Callout(반환값):
삼각형의 종류 kind를 Sting으로 반환한다.
 */

struct Triangle {
    let kind: String
    
    
    init(_ sides: Double...) {
        /* write your code here */
        var arr : [Double] = sides
        arr.sort()
        var a : Double = arr[0]
        var b : Double = arr[1]
        var c : Double = arr[2]
        if (a <= 0 || b <= 0 || c <= 0 || a+b <= c || a+c <= b || b+c <= a){
            kind="ErrorKind"}
        else if (a == b && a == c){
            kind="Equilateral"}
        else if ((a == b && a != c) || (a != c && b == c) || (b != c && a == c)){
                kind="Isosceles"}
        else{
            kind="Scalene"}
        self.kind == ""
    }
}

/*
 if (x==y==z){kind=Equilateral}
 else if (x==y&&x!=z){kind=Isosceles)
 else {kind==Scalene}
 
 */
