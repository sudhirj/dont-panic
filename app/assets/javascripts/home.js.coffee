Deferred.installInto Zepto

window.Controller = (scope) ->
  scope.data = {}
  request = $.ajax {
    url: '/tree.json?cachebuster='+Math.random() + '&username=' + $.getUrlParam("username") + '&password=' + $.getUrlParam("password")
    dataType: 'json'
  }
  request.done (data) -> scope.$apply ->
    scope.data = data
    if data then scope.chooseCountry data[0]
  
  scope.chooseCountry = (country) -> 
    scope.chosenCountry = country
    if country.cities then scope.chooseCity country.cities[0]
  
  scope.chooseCity = (city) -> 
    scope.chosenCity = city
    if city.companies then scope.chooseCompany city.companies[0]
    if city.placeTypes then scope.choosePlaceType city.placeTypes[0]

  scope.chooseCompany = (company) -> scope.chosenCompany = company

  scope.choosePlaceType = (placeType) -> scope.chosenPlaceType = placeType

  scope.displayAddress = (address) -> address.replace /\n/g, '<br/>'
  scope.displayPhoneNumbers = (numbers) -> numbers.split(',')  

window.Controller.$inject = ['$scope']

$ ->
  $('.icon-chevron-down').hide()
  $('.section').each ->
    section =$(this)
    section.find('h4').click ->      
      section.find('.togglee').toggle()
      section.find('.icon-chevron-up').toggle()
      section.find('.icon-chevron-down').toggle()
