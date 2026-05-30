/* output "ec2_output" {
  value       = "aws_instance.example" # mistke is give the value in the inventend commas
  description = "taking the output of instances "
  
} */


output "ec2_output" {
  value       = aws_instance.example
}
