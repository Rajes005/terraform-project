provider "aws" {
  # Configuration options
  region = "us-west-2"
  #profile = "myaws"
}
provider "aws"{
  alias = "east-1"
    profile = myaws
    region = "us-east-1"
}
