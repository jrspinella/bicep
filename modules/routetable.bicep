param rtName string
param disableBGPProp bool = false
param routes array = []  //empty

param tags object = {}

resource routetable 'Microsoft.Network/routeTables@2020-06-01' = {
  name: rtName
  location: resourceGroup().location
  properties: {
    disableBgpRoutePropagation: disableBGPProp
    routes: routes
  }
  tags: tags
}

output id string = routetable.id
