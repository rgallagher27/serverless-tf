provider "aws" {
  region = "us-west-2"
}

module "serverless" {
  source = "../.."

  functions = [
    {
      file       = "main.go"
      vendor_cmd = "govendor sync"
      test_cmd   = "go test ./..."
      http_path  = "hello-world"
    },
  ]
}
