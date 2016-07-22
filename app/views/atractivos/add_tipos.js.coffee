$('#tipos_select').empty()
.append("<option value>--- Seleccione Tipo </option>")
.append("<%= escape_javascript(render(:partial => @tipos)) %>")
