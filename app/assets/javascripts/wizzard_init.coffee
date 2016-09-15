class Wizzard
  constructor: (el) ->
    @wizard = $(el)
    @initSteps()
    @showOnlyFirstStep()
    @initNextStep()
    @initPrevStep()
    @initDynamicElements()
    @stepIndex = 0

  initSteps: ->
    @steps = @wizard.find('section')

  initNextStep: ->
    @wizard.find('.next-step').click => @moveNext()

  initPrevStep: ->
    @wizard.find('.prev-step').click => @moveBack()

  showOnlyFirstStep: ->
    @steps.filter(':not(:first)').hide()

  moveNext: ->
    if @stepValid()
      @currentStep().hide()
      @nextStep().show()
      @stepIndex = @stepIndex + 1

  moveBack: ->
    if @stepValid()
      @currentStep().hide()
      @prevStep().show()
      @stepIndex = @stepIndex - 1

  stepValid: ->
    @currentStep().validator('validate')
    @currentStep().find('.has-error').length is 0

  currentStep: ->
    $(@steps[@stepIndex])

  nextStep: ->
    $(@steps[@stepIndex + 1])

  prevStep: ->
    $(@steps[@stepIndex - 1])

  initDynamicElements: ->
    $('#user_profile_attributes_role').change ->
      if $(@).val() == 'Other'
        $('#user_profile_attributes_other_role').show()
        $('#user_profile_attributes_other_role').attr('required', true)
      else
        $('#user_profile_attributes_other_role').hide()
        $('#user_profile_attributes_other_role').removeAttr('required')

    $('#user_profile_attributes_health_experience').change ->
      if $(@).is(":checked")
        $('#user_profile_attributes_health_experience_description').show()
        $('#user_profile_attributes_health_experience_description').attr('required', true)
      else
        $('#user_profile_attributes_health_experience_description').hide()
        $('#user_profile_attributes_health_experience_description').removeAttr('required')

    $('#user_profile_attributes_stroke_experience').change ->
      if $(@).is(":checked")
        $('#user_profile_attributes_stroke_experience_description').show()
        $('#user_profile_attributes_stroke_experience_description').attr('required', true)
      else
        $('#user_profile_attributes_stroke_experience_description').hide()
        $('#user_profile_attributes_stroke_experience_description').removeAttr('required')


$(document).ready ->
  new Wizzard('.login_form_container')

#$(document).ready ->
#  form = $('#example-form-old')
#  form.children('div').steps
#    headerTag: 'h3'
#    bodyTag: '.card'
#    transitionEffect: 'slideLeft'
#    onStepChanging: (event, currentIndex, newIndex) ->
#      currentTab = $("#steps-uid-0-p-#{currentIndex}")
#      currentTab.validator('validate')
#      currentTab.find('.has-error').length is 0
#
#    onStepChanged: (event, currentIndex, priorIndex) ->
#      if currentIndex == 2 and Number($('#age-2').val()) >= 18
#        form.steps 'next'
#      if currentIndex == 2 and priorIndex == 3
#        form.steps 'previous'
#    onFinished: (event, currentIndex) ->
#      form.submit()
#
  $('#user_profile_attributes_role').change ->
    if $(@).val() == 'Other'
      $('#user_profile_attributes_other_role').show()
      $('#user_profile_attributes_other_role').attr('required', true)
    else
      $('#user_profile_attributes_other_role').hide()
      $('#user_profile_attributes_other_role').removeAttr('required')


  $('#user_profile_attributes_health_experience').change ->
    if $(@).is(":checked")
      $('#user_profile_attributes_health_experience_description').show()
      $('#user_profile_attributes_health_experience_description').attr('required', true)
    else
      $('#user_profile_attributes_health_experience_description').hide()
      $('#user_profile_attributes_health_experience_description').removeAttr('required')

  $('#user_profile_attributes_stroke_experience').change ->
    if $(@).is(":checked")
      $('#user_profile_attributes_stroke_experience_description').show()
      $('#user_profile_attributes_stroke_experience_description').attr('required', true)
    else
      $('#user_profile_attributes_stroke_experience_description').hide()
      $('#user_profile_attributes_stroke_experience_description').removeAttr('required')


