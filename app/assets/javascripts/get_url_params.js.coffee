# Returns get parameters.
#
# If the desired param does not exist, null will be returned
#
# To get the document params:
# @example value = $(document).getUrlParam("paramName");
#
# To get the params of a html-attribut (uses src attribute)
# @example value = $('#imgLink').getUrlParam("paramName");
$.getUrlParam = (strParamName) ->
  strParamName = escape(unescape(strParamName))
  if window.location.search.search(strParamName) > -1
    qString = window.location.search.substr(1,window.location.search.length).split("&")
  else
    return null
  returnVal = (query.split("=")[1] for query in qString when escape(unescape(query.split("=")[0])) is strParamName)
  if returnVal.lenght is 0
    null
  else if returnVal.lenght is 1
    returnVal[0]
  else
    returnVal
