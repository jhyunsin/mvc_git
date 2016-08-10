var context = { /// 객체
		name :'', /// 인스턴스 변수
		setContext : function(context){
			this.name = context;
		},
		init : function(context) { /// 메소드
			var bt_bom = document.querySelector('#bt_bom');
			var bt_dom = document.querySelector('#bt_dom');
			var bt_kaup = document.querySelector('#bt_kaup');
			var bt_creator = document.querySelector('#bt_creator');
			
			console.log('CONTEXT : ' + context);
			this.setContext(context);
			console.log('CONTEXT : '+ this.name);

		
			bt_bom.addEventListener('click',this.bom_go,false);
			bt_dom.addEventListener('click',this.dom_go,false);
			bt_kaup.addEventListener('click',this.kaup_go,false);
			bt_creator.addEventListener('click',this.creator_go,false);

		},
		bom_go : function() {
			location.href = this.name+'/douglas.do?page=bom';
		},
		dom_go : function() {
			location.href = this.name+'/douglas.do?page=dom';
		},
		creator_go : function() {
			location.href = this.name+'/douglas.do?page=creator';
		}

};
var creator = {
		creator_init : function() {
			var bt_spec_show = document.querySelector('#bt_spec_show');
			bt_spec_show.addEventListener('click',member_spec,false);
			
			var bt_make_account = document.querySelector('#bt_make_account');
			bt_make_account.addEventListener('click',account_spec,false);
			
			var bt_deposit = document.querySelector('#bt_deposit');
			bt_deposit.addEventListener('click',account,false);
			var bt_withdraw = document.querySelector('#bt_withdraw');
			bt_withdraw.addEventListener('click',account,false);
		}
};

var member = {
		
};


function account_deposit(){
	
	var money = document.querySelector('#money').value;
	document.querySelector('#rest_money').innerHTML= money ;
}
function account_withdraw(){
	
	var money = document.querySelector('#money').value;
	document.querySelector('#rest_money').innerHTML = -money ;
}



function account_spec(){
	var account = {
			account_no : Math.floor(Math.random()*899999) + 10000, ///// setter 역할
			money : 0
	}
	
	
	document.getElementById('result_account').innerHTML= '계좌번호 : '+ account.account_no; ////getter 역할  메소드 이름으로 결정하는 것이 아니는 아니라 위치로 게터 세터를 결정한다
}

function member_spec(){
	var member = new Object();
	member.name=document.querySelector('#name').value;
//	member.name = '';
	member.age = 0;
	member.gender = 0; 
	
	var ssn = document.querySelector('#ssn').value;
	var result = '';
	
	
	var now = new Date().getFullYear();
	console.log("now    "+now);
	// 800101-1
	var gender = parseInt(ssn.substring(7,8));
	var ageTemp = parseInt(ssn.substring(0,2));
	console.log("ageTemp    "+ageTemp);
//	if (ageTemp>2000) {
//   	 member.age =	now - ageTemp
//	}else{
//	 member.age = 	now - (1900+ageTemp)
//	} 
//	
	
	switch (gender) {
	case 1: case 5: 
		member.gender="남"; 
		member.age = 	now - (1900+ageTemp) 
		console.log("1900+ageTemp    "+(1900+ageTemp));
		if (member.age<0) {
			member.age = "잘못된값을 입력하셨습니다";
		}else{
			memner.age
		}
		break;
	
	case 3: case 7:
		member.gender="남"; 
		member.age =	now - (2000+ageTemp)
		if (member.age<0) {
			member.age = "잘못된값을 입력하셨습니다";
		}
		break;
	case 2: case 6:
		member.gender="여";
		member.age = 	now - (1900+ageTemp)
		console.log("1900+ageTemp    "+(1900+ageTemp));
		break;
	case 4: case 8:
		member.gender="여";
		member.age =	now - (2000+ageTemp)
		break;
	default:
		
		member.gender = "잘못된값을 입력하셨습니다";
	}
	
	document.getElementById('result_name').innerHTML=member.name;
	document.getElementById('result_age').innerHTML='만으로 '+member.age;
	document.getElementById('result_gender').innerHTML=member.gender;
	
	
	// 인스턴스 변수 선언하고 게터 세터 하고 끌고 오는 방식하고 똑같다
}

/*kaup*/
	
	function kaup_init(){
		alert('카우프 이닛 클릭');
		var kaup_calc = document.querySelector('#kaup_calc');
	kaup_calc.addEventListener('click',kaup_calc,false);
	}

function kaup_go(){location.href = getContext()+'/douglas.do?page=kaup';}


function kaup_calc(){
	alert('카우프칼크 클릭');
	var name=document.querySelector('#name').value;
	var height=document.getElementById('height').value;
	var weight=document.getElementById('weight').value;
	console.log('name'+ name);
	console.log('height'+ height);
	console.log('weight'+ weight);
	var result='';
	var kaup = weight / (height / 100) / (height / 100);

	if (kaup < 18.5) {
		result = "저체중";
	} else if (18.5 < kaup && kaup < 22.9) {
		result = "정상체중";
	} else if (23.0 < kaup && kaup < 24.9) {
		result = "위험체중";
	} else if (25.0 < kaup && kaup < 29.9) {
		result = "비만1단계";
	} else if (40 > kaup && kaup > 30) {
		result = "비만2단계";
	} else if (kaup > 40) {
		result = "비만3단계";
	}

	document.getElementById('result').innerHTML='"'+name+'"'+'님의 카우푸결과 : '+result;

	//	return name + "의 BMI지수는 " + Double.parseDouble(String.format("%.2f", kaup)) + "이고, " + result + "이다";

}