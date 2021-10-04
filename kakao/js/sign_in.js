const item_ip = document.querySelectorAll('.item_ip');

item_ip[0].onclick = () => {
    const info_tip = document.querySelector('.info_tip');
    info_tip.style.display = 'block';
}

item_ip[0].onkeyup = () => {
    const info_tip = document.querySelector('.info_tip');
    util_tf.style.display='block';
    if(item_ip[0].value.length == 0){
        
    }
}

item_ip[0].onblur = () => {
    const info_tip = document.querySelector('.info_tip');
    
}