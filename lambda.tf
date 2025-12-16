resource "aws_lambda_function" "test_lambda" {
  function_name = "test_lambda"
  role = aws_iam_role.lambda_role.arn
  runtime = "python3.12"
  handler = "dummy.lambda.lambda_handler"
  description = "stupid changes"
  

  filename = "dummy.zip"

  lifecycle {
    ignore_changes = [
      filename,
      source_code_hash
    ]
  }


}
