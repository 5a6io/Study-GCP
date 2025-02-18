variable "project_id" {
  type = string
  default = "${{secrets.PROJECT_ID}}"
}

variable "region" {
  type = string
  default = "${{secrets.REGION}}"
}

variable "zone" {
  default = "${{secrets.ZONE}}"
}