const notice_submit = document.querySelector(".notice_submit");
const updateForm = document.querySelector("#update-form");
const file_dbtn = document.querySelectorAll('.file-dbtn');
const file_name = document.querySelectorAll('.file-name');
for(let i = 0; i < file_dbtn.length; i++){
    file_dbtn[i].onclick = () => {
        if(file_name[i].style.textDecoration == 'none' || file_name[i].style.textDecoration == ''){
            file_name[i].style.textDecoration = 'line-through';
        }else{
            file_name[i].style.textDecoration = 'none';
        }
    }
}