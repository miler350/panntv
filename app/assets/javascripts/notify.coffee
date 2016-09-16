toastr.options = {
  "closeButton": true,
  "debug": false,
  "progressBar": true,
  "preventDuplicates": false,
  "positionClass": "toast-top-right",
  "onclick": null,
  "showDuration": "400",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}

$(document).ready ->
  if $('.success').length
    toastr.success($('.success').data('message'))
  if $('.notice').length
    toastr.info($('.notice').data('message'))
  if $('.errors').length
    toastr.error($('.errors').data('message'))