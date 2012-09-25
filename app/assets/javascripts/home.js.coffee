Deferred.installInto Zepto

window.Controller = (scope) ->
  scope.data = {}
  request = $.ajax {
    url: '/tree.json'
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

  scope.displayAddress = (address) -> address.replace /\n/, '<br/>'
  scope.displayPhoneNumbers = (numbers) -> numbers.split(',')
  scope.mapLink = (place) -> "https://maps.google.com/maps?q=#{[place.name,place.address].join(',')}"

window.Controller.$inject = ['$scope']