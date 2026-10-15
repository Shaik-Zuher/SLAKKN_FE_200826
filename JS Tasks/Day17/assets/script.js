const form=document.getElementById("form");
const register=document.getElementById("register");
const close=document.getElementById("close");
const reg_block=document.getElementsByClassName("register")[0];
const reg_form=document.getElementById("reg_form")
let counter=0;
let data=[];
document.addEventListener("DOMContentLoaded",(event)=>{
    data=JSON.parse(localStorage.getItem("data"));
    if(!data){
        data=[];
    }
    
    return;
})
reg_form.addEventListener("submit",(event)=>{
    event.preventDefault();
    let email=document.getElementById("new_email").value.trim();
    let password=document.getElementById("new_password").value.trim();
    let name=document.getElementById("new_name").value.trim();
    if(!password || !name || !email){
        alert("Enter Proper Data")
        return;
    } 
    let obj={uid:counter,name:name,email:email,password:password};
    counter+=1;
    data.push(obj);
    localStorage.setItem("data",JSON.stringify(data));
    reg_form.reset();
})
register.addEventListener("click",(event)=>{
    reg_block.classList.toggle("display");
});
close.addEventListener("click",(event)=>{
    reg_block.classList.toggle("display");
});

form.addEventListener("submit",(event)=>{
    event.preventDefault();
    let email=document.getElementById("email").value.trim();
    let password=document.getElementById("password").value.trim();
    if(!password || !email){
        alert("Enter Proper Data")
        return;
    } 
    let obj={};
    data.forEach(function(prev){
        if(prev.email==email){
            console.log(prev)
            obj=prev;
        }
    })
    console.log(data)
    console.log(obj,email,password)
    if(!obj || obj.password!=password){
        alert("Wrong details");
        return;
    }
    document.location.href="dashboard.html";
    form.reset();
})