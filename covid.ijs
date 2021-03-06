require 'plot stats tables/csv web/gethttp'

CANVAS_DEFSIZE_jwplot_ =: 800 300

gets =: 4 : '(I. (<y) E. 0{|:x){x'
gety =: 4 : '(I. (<y) E. 1{|:x){x'
getm =: 4 : '(I. (<y) E. 2{|:x){x'
vfmx =: 3 : '}:(,|."1 [ 1,.-. *./\"1 |."1 y='' '')#,y,.LF'
lreg =: 4 : 'y %. 1 ,. x'
treg =: 3 : '((1{((i.#y) lreg y))*(i.#y))+(0{((i.#y) lreg y))'
col =: dyad : 'makenum }. x {"1 y'
columns =: monad : '(;/ |: ,: i. #0{y) ,. (|: ,: 0{ y)'
counter =: monad : '(~. y) ,. (;/ (#/.~ y))'

covid =: fixcsv gethttp dquote 'https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/owid-covid-data.csv'

country =: 'EGY'
cov=: 5 col (100 }.covid gets country)
reg =: treg cov
last =: {: 5 col covid gets country
('type dot; pensize 4;title Last: ',":last) plot cov,:  reg