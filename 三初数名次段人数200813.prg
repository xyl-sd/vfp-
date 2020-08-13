******统计三初各班的各段成绩\名次的人数******
*
*  20200229调试成功
*  先运行本程序，在提示后打开成绩表
*
*	本程序同时计算学科成绩和班级成绩，当前按7年级1-8班，8年级1-4班为智慧班
*	每次需确定建档数和智慧班
*	200813，更改默认目录为D:cjfx，无需“总成绩”，直接使用各科成绩求和计算，设置名次线个数，使用分数线mcx数组进行遍历。



* 										 当前问题：
*  													可完全运行，但分数线偏低。分数线未对应名次上。
*													准备，把计数的4个repl循环做成一个模块。
*
**********************************************
set talk off
clear 
messagebox('确认各字段命名均为汉字，特别注意：姓名、考号、考评班级、道法、学校。————点确定后选择成绩数据库',1)
use ? in 1		&&打开成绩表
sele 1
go top
nj=int(val(substr(考号,3,1))+6)*100 &&获取年级为700，800，900
	if .not. directory('d:\cjfx')		 &&创建目录“成绩分析”
		md d:\cjfx
		? '新建目录d:\cjfx，文件存放于此目录'
	endif
	set default to d:\cjfx				&&默认目录
		? '文件默认存放于d:\cjfx'

creat table bzk(姓名 c(8),考号 c(9),考评班级 c(8), 语文 n(8),语文名次 n(8),数学 n(8),数学名次 n(8), ;
	英语 n(8),英语名次 n(8),物理 n(8),物理名次 n(8),化学 n(8),化学名次 n(8),道法 n(8),道法名次 n(8), ;
	历史 n(8),历史名次 n(8),地理 n(8),地理名次 n(8),生物 n(8),生物名次 n(8), ;
	总成绩 n(8),班级排名 n(8),学校排名 n(8),总成绩名次 n(8),学校 c(8) ) &&标准库
creat table tjk(考评班级 c(8),总分上 n(8),总人数 n(8),总成绩 n(8,2),语文 n(8,2),数学 n(8,2),英语 n(8,2), ;
	物理 n(8,2),化学 n(8,2),道法 n(8,2),历史 n(8,2),地理 n(8,2),生物 n(8,2),进线 c(8) ) &&统计库


creat table pjtjk(考评班级 c(3),建档数 n(8),特殊减少 n(8) ,考评人数 n(8,0),平均分 n(8,3), ;
		语文 n(8,3),数学 n(8,3),英语 n(8,3),物理 n(8,3),化学 n(8,3),道法 n(8,3),历史 n(8,3),地理 n(8,3),生物 n(8,3)	) &&平均分统计库
	do case
	case nj=700 		&&="insert into pjtjk(考评班级,建档数,特殊减少) values ("""&$a2&""","&$b2&","&C2&")"
		insert into pjtjk(考评班级,建档数,特殊减少) values ("701",51,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("702",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("703",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("704",50,0) &&
		insert into pjtjk(考评班级,建档数,特殊减少) values ("705",51,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("706",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("707",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("708",51,0)
		
		insert into pjtjk(考评班级,建档数,特殊减少) values ("709",49,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("710",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("711",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("712",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("713",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("714",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("715",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("716",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("717",49,0) &&
		insert into pjtjk(考评班级,建档数,特殊减少) values ("718",49,0)
		
		insert into pjtjk(考评班级,建档数,特殊减少) values ("719",49,0) &&
		insert into pjtjk(考评班级,建档数,特殊减少) values ("720",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("721",49,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("722",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("723",49,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("724",50,0)
		
		insert into pjtjk(考评班级,建档数,特殊减少) values ("725",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("726",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("727",49,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("728",49,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("729",50,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("730",50,0)

	case nj=800
		insert into pjtjk(考评班级,建档数,特殊减少) values ("801",60,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("802",60,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("803",60,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("804",60,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("805",60,0)
		
		insert into pjtjk(考评班级,建档数,特殊减少) values ("806",61,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("807",61,0) &&
		insert into pjtjk(考评班级,建档数,特殊减少) values ("808",60,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("809",60,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("810",60,0)
		
		insert into pjtjk(考评班级,建档数,特殊减少) values ("811",60,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("812",61,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("813",61,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("814",60,0) &&
		insert into pjtjk(考评班级,建档数,特殊减少) values ("815",61,0)
		
		insert into pjtjk(考评班级,建档数,特殊减少) values ("816",60,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("817",61,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("818",59,0) &&
		insert into pjtjk(考评班级,建档数,特殊减少) values ("819",61,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("820",61,0)

	case nj=900  &&20200224确定，所有学籍生，去除因上一年级休学而不考评的
		insert into pjtjk(考评班级,建档数,特殊减少) values ("901",61,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("902",60,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("903",63,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("904",63,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("905",64,0)
		
		insert into pjtjk(考评班级,建档数,特殊减少) values ("906",62,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("907",63,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("908",63,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("909",62,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("910",63,0)
		
		insert into pjtjk(考评班级,建档数,特殊减少) values ("911",61,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("912",63,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("913",65,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("914",63,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("915",62,0)
		
		insert into pjtjk(考评班级,建档数,特殊减少) values ("916",62,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("917",63,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("918",63,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("919",63,0)
		insert into pjtjk(考评班级,建档数,特殊减少) values ("920",63,0)

	endcase
		replace all 考评人数 with 建档数-int(nj/100)+6-特殊减少 &&年级7为减1人，8为减2人，9为减3人
creat table bjfx(考评班级 c(8),第1 n(8),前10 n(8),前20 n(8),前1000 n(8),前4500 n(8),平均分 n(8,3), ;
	奖10 n(8),奖45 n(8),名次10 n(8),名次45 n(8),名次平均 n(8),名次和 n(10 ,6),排名 n(8),赋分 n(8,2) ) &&班级分析库
	append from pjtjk fields 考评班级		

***********
* 学科数组
dimension xk(10)
	xk(1)="语文"
	xk(2)="数学"
	xk(3)="英语"
	xk(4)="物理"
	xk(5)="化学"
	xk(6)="道法"
	xk(7)="历史"
	xk(8)="地理"
	xk(9)="生物"
	xk(10)="总成绩"
dimension xkmc(10)
	xkmc=xk+"名次"

**********************************
*  程序开始
sele 1
erase xx.dbf
erase x1.dbf
copy to xx.dbf
sele bzk
dele all
pack
appe from xx.dbf
repl all 总成绩 with 语文+数学+英语+物理+化学+道法+历史+地理+生物
pack

for i = 1 to 9	&&按学科排序
	do paixu with xk(1),xk(1)+"名次"
endfor


sort to x1  on 总成绩/d,数学/d,英语/d,语文/d
use x1
repl all 总成绩名次 with recn()
use
erase xx.dbf
use  bzk
dele all
pack
appe from  x1
erase x1.dbf
sele tjk
dele all
pack

***************
* 获取名次线

	n=2 &&默认两条名次线
	dimension mcx(n) &&名次线
	mcx(1)="1000"
	mcx(2)="4500"
	for i= 1 to n
		@5+2*i,10 say "请输入第"+str(i,2)+"个名次线，少于4位需补空格"   get mcx(i) default mcx(i)
		read
	endfor
*
***************

for j = 1 to n &&默认两个名次线

		    sele bzk

		名次1=val(mcx(j))
		?'   '
		?'名次'
		?名次1
		?'*************正在统计各班进线数,请稍等,不要退出!***************'
		dimension mc(10) &&名次对应分数线数组
		for i = 1 to 10
			average &xk(i) for &xkmc(i)=名次1 to mc(i)
		endfor  
*!*			aver 语文 for 语文名次=名次1 to mc1
*!*			aver 数学 for 数学名次=名次1 to mc2 
*!*			aver 英语 for 英语名次=名次1 to mc3 
*!*			aver 物理 for 物理名次=名次1 to mc4 
*!*			aver 化学 for 化学名次=名次1 to mc5 
*!*			aver 道法 for 道法名次=名次1 to mc6
*!*			aver 历史 for 历史名次=名次1 to mc7
*!*			aver 地理 for 地理名次=名次1 to mc8
*!*			aver 生物 for 生物名次=名次1 to mc9
*!*			aver 总成绩 for   总成绩名次=名次1 to mc0
		  sele tjk
		      appe blan
		      for i = 1 to 10	&&填充分数线
		      	replace &xk(i) with mc(i)
		      endfor
		      replace 考评班级 with "分值"
*		      repl 语文 with mc1,数学 with mc2,英语 with mc3,总分上 with 名次1,物理 with mc4,化学  with mc5, ;
*		      道法 with mc6,历史 with mc7,地理 with mc8,生物 with mc9,总成绩 with mc0,考评班级 with  '分值'

		* 统计各班人数，双进线
		sele bzk
		go top
		* nj=int(val(考评班级)/100)*100
		nj=int(val(substr(考号,3,1))+6)*100
		for i=nj+1 to nj+30
		sele bzk
			go top
			ibj=substr(str(i),8,3)+space(5) &&将班级由数值变字符
		    count to x for 考评班级=ibj
		    *单进
		    dimension gf(10)
		    for k = 1 to 10 
		    	count to gf(k) for &xk(k)>=mc(k) .and. 考评班级=ibj
		    endfor
		    
		    
*!*			    count to gf1 for 语文>=mc1 .and. 考评班级=ibj
*!*			    count to gf2 for 数学>=mc2 .and. 考评班级=ibj
*!*			    count to gf3 for 英语>=mc3 .and. 考评班级=ibj
*!*			    count to gf4 for 物理>=mc4 .and. 考评班级=ibj
*!*			    count to gf5 for 化学>=mc5 .and. 考评班级=ibj
*!*			    count to gf6 for 道法>=mc6 .and. 考评班级=ibj
*!*			    count to gf7 for 历史>=mc7 .and. 考评班级=ibj
*!*			    count to gf8 for 地理>=mc8 .and. 考评班级=ibj
*!*			    count to gf9 for 生物>=mc9 .and. 考评班级=ibj
*!*			    count to gf0 for 总成绩>=mc0 .and. 考评班级=ibj
		    	sele tjk
			append blank
		    repl 总人数  with x,考评班级 with ibj,总分上 with 名次1,进线 with "单进线"
		    for k = 1 to 10 
		    	repl &xk(k) with gf(k)
		    endfor			
		
		    *双进
		    sele bzk
		    for k = 1 to 9 
		    	count to gf(k) for &xk(k)>=mc(k) .and. 考评班级=ibj .and. &xk(10)>=mc(10)
		    endfor
		    		    
*!*			    
*!*				count to gf1 for 语文>=mc1 .and. 考评班级=ibj .and. 总成绩 >=mc0
*!*			    count to gf2 for 数学>=mc2 .and. 考评班级=ibj .and. 总成绩 >=mc0
*!*			    count to gf3 for 英语>=mc3 .and. 考评班级=ibj .and. 总成绩 >=mc0
*!*			    count to gf4 for 物理>=mc4 .and. 考评班级=ibj .and. 总成绩 >=mc0
*!*			    count to gf5 for 化学>=mc5 .and. 考评班级=ibj .and. 总成绩 >=mc0
*!*			    count to gf6 for 道法>=mc6 .and. 考评班级=ibj .and. 总成绩 >=mc0
*!*			    count to gf7 for 历史>=mc7 .and. 考评班级=ibj .and. 总成绩 >=mc0
*!*			    count to gf8 for 地理>=mc8 .and. 考评班级=ibj .and. 总成绩 >=mc0
*!*			    count to gf9 for 生物>=mc9 .and. 考评班级=ibj .and. 总成绩 >=mc0
			sele tjk
			append blank
			 repl 总人数  with x,考评班级 with ibj,总分上 with 名次1,进线 with "双进线"
			for k = 1 to 10 
		    	repl &xk(k) with gf(k)
		    endfor		
			?? ibj
		endfor

		* 统计全校进线
		sele bzk
		go top
		    count all to x 
		    *单进
		    for k = 1 to 10 
		    	count to gf(k) for &xk(k)>=mc(k) .and. len(alltrim(考评班级))=3
		    endfor
		    		    
		    
*!*			    
*!*			    count to gf1 for 语文>=mc1 .and. len(alltrim(考评班级))=3
*!*			    count to gf2 for 数学>=mc2 .and. len(alltrim(考评班级))=3
*!*			    count to gf3 for 英语>=mc3 .and. len(alltrim(考评班级))=3
*!*			    count to gf4 for 物理>=mc4 .and. len(alltrim(考评班级))=3
*!*			    count to gf5 for 化学>=mc5 .and. len(alltrim(考评班级))=3
*!*			    count to gf6 for 道法>=mc6 .and. len(alltrim(考评班级))=3
*!*			    count to gf7 for 历史>=mc7 .and. len(alltrim(考评班级))=3
*!*			    count to gf8 for 地理>=mc8 .and. len(alltrim(考评班级))=3
*!*			    count to gf9 for 生物>=mc9 .and. len(alltrim(考评班级))=3
*!*			    count to gf0 for 总成绩>=mc0 .and. len(alltrim(考评班级))=3
			sele tjk
			append blank
			 repl 总人数  with x,总分上 with 名次1,考评班级 with '全校',进线 with "单进线"
			for k = 1 to 10 
		    	repl &xk(k) with gf(k)
		    endfor	
			    *双进
			    sele bzk
		    for k = 1 to 9 
		    	count to gf(k) for &xk(k)>=mc(k) .and. &xk(10)>=mc(10) .and. len(alltrim(考评班级))=3
		    endfor
*!*		    
*!*				    
*!*				    
*!*			    count to gf1 for 语文>=mc1 .and. 总成绩 >=mc0 .and. len(alltrim(考评班级))=3
*!*			    count to gf2 for 数学>=mc2 .and. 总成绩 >=mc0 .and. len(alltrim(考评班级))=3
*!*			    count to gf3 for 英语>=mc3 .and. 总成绩 >=mc0 .and. len(alltrim(考评班级))=3
*!*			    count to gf4 for 物理>=mc4 .and. 总成绩 >=mc0 .and. len(alltrim(考评班级))=3
*!*			    count to gf5 for 化学>=mc5 .and. 总成绩 >=mc0 .and. len(alltrim(考评班级))=3
*!*			    count to gf6 for 道法>=mc6 .and. 总成绩 >=mc0 .and. len(alltrim(考评班级))=3
*!*			    count to gf7 for 历史>=mc7 .and. 总成绩 >=mc0 .and. len(alltrim(考评班级))=3
*!*			    count to gf8 for 地理>=mc8 .and. 总成绩 >=mc0 .and. len(alltrim(考评班级))=3
*!*			    count to gf9 for 生物>=mc9 .and. 总成绩 >=mc0 .and. len(alltrim(考评班级))=3
			sele tjk
			append blank
			 repl 总人数  with x,总分上 with 名次1,考评班级 with '全校',进线 with "双进线"
			for k = 1 to 10 
		    	repl &xk(k) with gf(k)
		    endfor	
			? '本名次段进线人数统计完成'


clear
  
    sele tjk
    appe blan
endfor
		******************************************************双行注释内为平均分统计*起
***************************平均分计算***************
* 统计各校平均
sele bzk
sort to pjbzk on 学校/a,总成绩/d  &&平均标准库
use pjbzk in 0
sele pjtjk
go top
do while .not.eof() &&遍历pjtjk
	sele pjbzk
		set filter to 考评班级=alltrim(pjtjk.考评班级)
		do paixu with "语文","语文名次"
		do paixu with "数学","数学名次"
		do paixu with "英语","英语名次"
		do paixu with "物理","物理名次"
		do paixu with "化学","化学名次"
		do paixu with "道法","道法名次"
		do paixu with "历史","历史名次"
		do paixu with "地理","地理名次"
		do paixu with "生物","生物名次"
		do paixu with "总成绩","班级排名"
		kprs=pjtjk.考评人数
		sum 语文 for 语文名次<=kprs to mc(1)
		sum 数学 for 数学名次<=kprs to mc(2)
		sum 英语 for 英语名次<=kprs to mc(3)
		sum 物理 for 物理名次<=kprs to mc(4)
		sum 化学 for 化学名次<=kprs to mc(5)
		sum 道法 for 道法名次<=kprs to mc(6)
		sum 历史 for 历史名次<=kprs to mc(7)
		sum 地理 for 地理名次<=kprs to mc(8)
		sum 生物 for 生物名次<=kprs to mc(9)
		sum 总成绩 for 班级排名<=kprs  to mc(10)
	sele tjk
      appe blan
      repl 总人数 with kprs ,考评班级 with  pjtjk.考评班级,进线 with '平均分'
      for i = 1 to 10
      	replace &xk(i) with mc(i)/kprs
      endfor
		?? 考评班级
		
	sele pjtjk
		skip
enddo

sele pjbzk
set filter to
**************************************
*分析班级成绩
sele bzk
go top
copy to tembj next 50 fields 考评班级,学校,总成绩
use tembj in 0
sele tembj
	go 1
	gf1=总成绩 
	go 10
	gf10=总成绩
	go 20
	gf20=总成绩
sele bjfx
	go top
	do while .not. eof()
		bj=考评班级
		sele tembj &&前20名统计
			count to tj1 for 总成绩>=gf1 .and. 考评班级=bj
			count to tj10 for 总成绩>=gf10 .and. 考评班级=bj
			count to tj20 for 总成绩>=gf20 .and. 考评班级=bj
		sele tjk &&1000，4500，平均分统计
			average 总成绩 to tj1000 for 考评班级=bj .and. 进线="单进线" .and. 总分上=1000  &&1000 
			average 总成绩 to tj4500 for 考评班级=bj .and. 进线="单进线" .and. 总分上=4500  &&4500 
			average 总成绩 to tjpj for 考评班级=bj .and. 进线="平均分"  
		sele bjfx
		repl 第1 with tj1,前10 with tj10,前20 with tj20 ,前1000 with tj1000 ,前4500 with tj4500 ,平均分 with tjpj
		skip
	enddo
	replace 奖10 with 前1000+第1+前20-前10 all
	replace 奖45 with 前4500+前10 all

	do case
		case nj=700  &&智慧班1-8
			set filter to val(考评班级)<=708
			do zhihui
			set filter to val(考评班级)>708
			do zhihui
			set filter to
		case nj=800  &&智慧班1-4
			set filter to val(考评班级)<=804
			do zhihui
			set filter to val(考评班级)>804
			do zhihui
			set filter to
		case nj=900 
			do zhihui
	endcase

	
sele tembj
use
erase tembj.dbf
*导出文件
******************************************************

******************************************************
sele tjk
sort to x0  on 总分上/a,进线/a,考评班级/a
use x0.dbf
dele all for 总成绩=0
pack
do case
	case nj=700
	erase 七年级名次人数.xls
	copy to 七年级名次人数.xls type xls ;
		fields 考评班级,总分上,总人数,总成绩,语文,数学,英语,道法,历史,地理,生物,进线
	erase jxbh7.dbf
	copy to jxbh7.dbf
	sele bjfx
	copy to 七年级班级分析.xls type xls
	erase bjfx7.dbf
	copy to bjfx7.dbf
	
	case nj=800
	erase 八年级名次人数.xls
	copy to 八年级名次人数.xls type xls ;
		fields 考评班级,总分上,总人数,总成绩,语文,数学,英语,物理,道法,历史,地理,生物,进线
	erase jxbh8.dbf
	copy to jxbh8.dbf
		sele bjfx
	copy to 八年级班级分析.xls type xls
	erase bjfx8.dbf
	copy to bjfx8.dbf
	
	case nj=900
	erase 九年级名次人数.xls
	copy to 九年级名次人数.xls type xls ;
		fields 考评班级,总分上,总人数,总成绩,语文,数学,英语,物理,化学,道法,历史,进线
	erase jxbh9.dbf
	copy to jxbh9.dbf
		sele bjfx
	copy to 九年级班级分析.xls type xls
	erase bjfx9.dbf
	copy to bjfx9.dbf
endcase
*删除过程库
do shanchu with "bzk"
do shanchu with "x0"
do shanchu with "pjtjk"
do shanchu with "bjfx"
do shanchu with "pjbzk"
erase tjk.dbf
? "全部分析完成"
SET TALK ON
***************************
*关闭删除过程库
*
*************
procedure shanchu
	parameters kuming &&接受变量，排序字段，更新字段
	sele &kuming
	use
	erase kuming+".dbf"
***************************
*	过程：排序
*	过程调用：do paixu with 排序字段,更新名次的字段 
***************************
procedure paixu
	parameters pxzd,gxzd &&接受变量，排序字段，更新字段
	
	index on &pxzd tag pxpx descending
	go top
	j=1
	do while not eof()
		replace &gxzd with j
		j=j+1
		skip
	enddo
	delete tag pxpx
return &&可省略
***************************
***************************

***************************
*	过程：名次
*	过程调用：do mingci with 排名字段,更新名次的字段 
***************************
procedure mingci
	parameters zdm,mczd &&接受变量，字段名,名次字段
	go top
	do while .not. eof()
		shuzhi=&zdm
		jl=recno()
		count to tj for &zdm>shuzhi all
		go jl
		repl &mczd with tj+1
		skip
	enddo
return
***************************
***************************
* 过程：分智慧班非智慧班排名
*******************
procedure zhihui
	do mingci with "奖10","名次10"
	do mingci with "奖45","名次45"
	do mingci with "平均分","名次平均"
	replace 名次和 with 200-(名次45*2.01+名次10*1.0001+名次平均*1.000001) all
	do mingci with "名次和","排名"
	replace all 赋分 with 10.05-排名*0.05
	replace 名次和 with 200-名次和 all
***************************
***************************