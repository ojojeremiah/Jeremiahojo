function errorhandler() {
  const message = document.getElementById("alert");
  message.innerHTML = "";
  let e = document.getElementById("email").value;
  try { 
    if(e == "")  throw "email";
  }
  catch(err) {
    message.innerHTML = "Your " + err;
  }
}
const totop = document.querySelector(".scroll");
window.addEventListener(".scroll", () =>{
  if (window.pageYOffset > 100){
    totop.classList.add("active");
  }else {
    totop.classList.remove("active");
  }
});