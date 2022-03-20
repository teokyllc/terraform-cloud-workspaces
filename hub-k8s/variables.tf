#######################
# cert-manager vars
#######################

variable "cert_manager_namespace" {
    type = string
    description = "The namespace cert-manager will be deployed to."
}

variable "values_filename" {
    type = string
    description = "The filename for values.yaml."
}

variable "enable_vault_issuer" {
    type = bool
    description = "Enables a Hashi Vault issuer."
}