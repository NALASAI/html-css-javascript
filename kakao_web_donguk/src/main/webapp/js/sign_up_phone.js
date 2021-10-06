const item_ip = document.querySelector('.item_ip');
const btn_g = document.querySelector('.btn_g');
const button_round = doumemnt.querySelector('.button_round');
const submit_flag = document.querySelector('#submit_flag');
var flag = 0;

item_ip.onkeypress = () => {
	if(window.event.keyCode == 13){
		window.event.preventDefault();
		submit_flag.value = 1;
		onSubmit();
	}
}

btn_g.onclick = () => {
	submit_flag.value = 1;
	onSubmit();
}

button_round_onclick = () => {
	submit_flag.value = 2;
	onSubmit();
}

function onSubmit(){
	const msg1 = document.querySelector('.msg1');
	if(item_ip.value.length == 0){
		msg1.style.display = 'block';
	} else{
		const form = document.querySelector('form');
		form.submit();
	}
}