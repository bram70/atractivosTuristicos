# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(document).on 'change','#provs_select', (evt) -> 
    $.ajax '/atractivos/add_cantones',
      type: 'GET'
      dataType: 'script'
      data: {
        prov_id: $("#provs_select option:selected").val()
      }
  $(document).on 'change','#cants_select', (evt) -> 
    $.ajax '/atractivos/add_parroquias',
      type: 'GET'
      dataType: 'script'
      data: {
        cant_id: $("#cants_select option:selected").val()
      }
  $(document).on 'change','#categs_select', (evt) -> 
    $.ajax '/atractivos/add_tipos',
      type: 'GET'
      dataType: 'script'
      data: {
        categ_id: $("#categs_select option:selected").val()
      }
  $(document).on 'change','#tipos_select', (evt) -> 
    $.ajax '/atractivos/add_subtipos',
      type: 'GET'
      dataType: 'script'
      data: {
        tipo_id: $("#tipos_select option:selected").val()
      }
  $(document).on 'change','#climate_select', (evt) -> 
    $.ajax '/atractivos/add_climate_data',
      type: 'GET'
      dataType: 'script'
      data: {
        clima_id: $("#climate_select option:selected").val()
      }
