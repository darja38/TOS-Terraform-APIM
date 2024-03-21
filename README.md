# TOS-Terraform-APIM
![image](https://github.com/darja38/TOS-Terraform-APIM/assets/56688775/9c1b7ae6-6ba5-4ea4-aaf1-aa9fc9adf9bd)
Terraform est un outil d'infrastructure en tant que code (IaC) qui permet de créer, modifier et gérer des infrastructures cloud de manière déclarative, en utilisant un langage simple et des fichiers de configuration.
## Objectif
Ce TOS permet de vous donner du contenu pour l'utilisation et le déploiement d'un module  conçu pour la mise en place d'une instance Azure API Management (APIM) au sein de notre projet. 
## Portée du Module

Ce module est concu afin de :

Automatiser le processus de déploiement de l'APIM, en réduisant les risques d'erreurs manuelles.
Configurer l'APIM selon les spécifications techniques préétablies. 
Fournir des instructions claires sur la personnalisation du module en fonction des besoins spécifiques du projet.

## Fichiers nécessaire à son déploiement 
Le déploiement nécessite la présence des fichiers suivants au sein du module moduleapim :

main.tf : Contient la configuration principale du module.
output.tf : Définit les sorties du module.
variable.tf : Liste toutes les variables utilisées par le module.

Modification du main.tf principal du déploiement terraform. 

## Configuration du main.tf du module apim
```markdown
Voici un exemple de configuration terraform pour le fichier main.tf du module apim :
```
```hcl
resource "azurerm_api_management" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resourceGroupName
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email

  sku_name = var.sku_name
}
```

## Configuration du output.tf du module apim

```markdown
Voici un exemple de configuration terraform pour le fichier variable.tf du module apim :
```
```hcl
variable "resourceGroupName" {
  description = "The name of the resource group"
  type = string
}

variable "resourceGroupLocation" {
  description = "Location of the resource group"
}

variable "name" {
  description = "The name of the API Management service."
  type        = string
  default     = "testapim1"
}

variable "location" {
  description = "The location of the API Management service."
  type        = string
  default     = "East US"
}

variable "publisher_name" {
  description = "The name of the publisher."
  type        = string
  default     = "Diiage"
}

variable "publisher_email" {
  description = "The email of the publisher."
  type        = string
  default     = "mail@test.com"
}

variable "sku_name" {
  description = "The name of the SKU used for the API Management service."
  type        = string
  default     = "Developer_1"
}
```

# Configuration du output.tf du module apim
```markdown
Voici un exemple de configuration terraform pour le fichier output.tf du module apim :
```
```hcl
output "apim_id" {
  value = azurerm_api_management.example.id
}

output "apim_gateway_url" {
  value = azurerm_api_management.example.gateway_url
}
```
# Configuration du main.tf principal pour appeler le module apim 
```markdown
Voici un exemple de configuration terraform pour le fichier main.tf principal afin d'appeler le module précédement crée:
```
```hcl
module "apim" {
   source = "./modules/apim"

   resourceGroupName = module.resource_group.resource_group_name
   resourceGroupLocation  = module.resource_group.resource_group_location

   depends_on = [
   module.resource_group,
   ]
}
```
