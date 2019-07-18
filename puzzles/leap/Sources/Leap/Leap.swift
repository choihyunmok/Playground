//Solution goes in Sources

/*:
 
 Leap
 =======
 
 어떤 해가 주어졌을 때, 그 해가 윤년인지 아닌지를 판별할 수 있는 클래스를 작성하라.
 
 우리가 사용하는 그레고리력에서 윤년이란, 다음과 같은 조건을 만족하는 해를 말한다.
 - Note:
 4로 나누어 떨어지는 해.
 단, 400으로 나누어 떨어지지 않으면서 100으로 나누어 떨어지는 해는 제외한다.
 

 */

struct Year {
    var calendarYear: Int
    
    var isLeapYear: Bool {
        get {
            /* write your code here */
            if (calendarYear%4 == 0){
                if(calendarYear%100 == 0){
                    if(calendarYear%400 != 0){
                        return false}
                    return true}
                return true}
            return false
         // remove this line and start
        }
    }
}
