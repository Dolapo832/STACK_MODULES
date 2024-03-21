terraform{
         backend "s3"{
                bucket= "stack-terraformstate-dolaposep23"
                key = "terraform.tfstate"
                region="us-east-1"
                dynamodb_table="statelock-tf"
                 }
        }