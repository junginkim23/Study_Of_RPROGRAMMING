#도움말

help.start()#컴퓨터에 설치된 도움말 문서 파일을 볼 수 있는 가장 쉬운 방법
help(median)#help라는 명령어의 매개변수로 함수를 넣으면 해당 함수의 도움말을 확인할 수 있다. 
?median#help 명령어와 동일하게 사용할 수 있다.
args(median)#median 함수에 사용되는 인수에 대해서 설명해준다. 
example(median)#median 함수에 대한 예를 두 가지 보여준다. 

#함수의 fullname에 대해서 모를 때, 아는 데까지만 입력해서 관련된 모든 함수를 보여주는 명령어 
help.search("xyplot")
??media

#사용하고자 하는 함수 또는 변수의 일부 이름만 기억이 날 경우, apropos 함수를 사용하면 관련된 함수 또는 변수를 출력한다.
hero.vector <- c("Superman","Batman","Spiderman")
apropos("vector")#apropos의 매개변수는 정규표현식이라는 식으로 표현된다.
#정규표현식: 특정한 규칙을 갖는 문자열 패턴을 표현하는 방법 
?regex#R에서 사용되는 정규표현식에 대한 도움말을 확인하는 명령어 

apropos("q$")#q로 끝나는 변수 또는 함수를 보여준다. 
apropos("[7~9]")#7~9사이의 숫자를 포함하는 변수명을 찾아달라.
apropos("xy+")#xy가 포함되어 있는 문자열을 보여준다. 

#R과 관련된 도움말을 얻을 수 있는 웹사이트 
#=>http://search.r-project.org/
#=>https://rseek.org/ 구글의 검색엔진을 바탕으로 R과 관련된 정보를 좀 더체계적으로 보여주는 사이트 

#외부 웹사이트를 RStudio내의 console에서 사용하는 방법
RSiteSearch("topicmodel")#keyword를 입력하면, search.r-project.org 사이트로 보내서 검색한다. 

#package설치하는 명령어 
install.packages("sos")
#메모리에 적재하는 명령어 
library(sos)
#RSiteSeach를 통해 나오는 결과를 표로 더 깔끔하고 예쁘게 보여주는명령어 
findFn("topicmodel")
?findFn
