// Cloud-Native Microservices Platform - Bicep Template
// Refined for automation, security, and scalability

param resourceGroupName string = 'MicroservicesRG'
param location string = 'eastus'
param aksClusterName string = 'MicroservicesAKS'
param acrName string = 'MicroservicesACR'
param vnetName string = 'MicroservicesVNet'
param subnetName string = 'MicroservicesSubnet'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.1.0.0/16']
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: '10.1.1.0/24'
        }
      }
    ]
  }
}

resource containerRegistry 'Microsoft.ContainerRegistry/registries@2021-11-01' = {
  name: acrName
  location: location
  properties: {
    sku: {
      name: 'Standard'
    }
    adminUserEnabled: true
  }
}

resource aksCluster 'Microsoft.ContainerService/managedClusters@2021-07-01' = {
  name: aksClusterName
  location: location
  properties: {
    dnsPrefix: aksClusterName
    enableRBAC: true
    networkProfile: {
      networkPlugin: 'azure'
      networkMode: 'transparent'
    }
  }
}

output resourceGroupId string = resourceGroup.id
output aksClusterId string = aksCluster.id
output containerRegistryId string = containerRegistry.id