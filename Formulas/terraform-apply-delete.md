# Terraform Apply and Delete

## Apply Configuration and Retrieve IP Address

To apply your Terraform configuration and retrieve the IP address of a resource, follow these steps:

1. **Initialize Terraform:**
    ```sh
    terraform init
    ```

2. **Apply the Configuration:**
    ```sh
    terraform apply
    ```
    Confirm the apply action when prompted.

3. **Retrieve the IP Address:**
    After the apply command completes, you can retrieve the IP address of a resource using the `terraform output` command. For example:
    ```sh
    terraform output <output_variable_name>
    ```

## Delete Resources

To delete the resources managed by your Terraform configuration, use the `terraform destroy` command:

1. **Destroy Resources:**
    ```sh
    terraform destroy
    ```
    Confirm the destroy action when prompted.

Make sure to replace `<output_variable_name>` with the actual output variable defined in your Terraform configuration that holds the IP address.
