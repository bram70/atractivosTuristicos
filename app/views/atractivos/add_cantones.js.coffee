$('#cants_select').empty()
.append("<option value>--- Seleccione Canton </option>")
.append("<%= escape_javascript(render(:partial => @cants)) %>")
