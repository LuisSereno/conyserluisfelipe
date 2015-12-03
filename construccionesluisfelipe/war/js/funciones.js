toastr.options = {
  "closeButton": false,
  "debug": false,
  "newestOnTop": false,
  "progressBar": false,
  "positionClass": "toast-top-left",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}

function validarEmail( email ) {
    expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if ( !expr.test(email) ){
      return false;
    }else{
      return true
    }
}

function validarTelefono(numeroTelefono){
  var expresionRegular1=/^[1-9]{9}$/;//<--- con esto vamos a validar el numero
  var expresionRegular2=/\s/;//<--- con esto vamos a validar que no tenga espacios en blanco
 
  if(expresionRegular2.test(numeroTelefono)){
    return false;
  }else if(!expresionRegular1.test(numeroTelefono)){
    return false;
  }else{
    return true;
  }
}