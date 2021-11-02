param nsgName string
param secRules array
param tags object = {}

resource nsg  'Microsoft.Network/networkSecurityGroups@2020-06-01' = {
  name: nsgName
  location: resourceGroup().location
  properties: {
    securityRules: secRules
  }
  tags: tags
}

output id string = nsg.id
