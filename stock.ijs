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

api =: '5DMFK5BED9P0LI62'
intra =: 3 : 0
 fixcsv gethttp dquote 'https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=',y,'&interval=60min&apikey=',api,'&outputsize=full&datatype=csv'
)

close=: 3 : '|. 4 col y'
reg =: treg close

NB. 'type dot; pensize 4' plot close,: reg