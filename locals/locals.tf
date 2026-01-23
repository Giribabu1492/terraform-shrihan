locals {
        #run the expression ans store the value in ami_id, locals values no one can overridden of variable values

      ami_id=data.aws_ami.joindevops.id    
      instance_type="t3.micro"
      name="${var.project}-${var.component}-${var.environment}"
}