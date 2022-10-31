terraform {
    source = "."
}

inputs = {
    permissions_list = [
        {
        name = "AdministratorAccess"
        description = "AdministrationAccess"
        session_duration = null
        managed_policies = ["arn:aws::iam::aws:policy/AdministratorAccess"]
        aws_accounts = ["058683872785", "984885849064"]
        sso_groups = ["AdministratorGroup"]
        },
        {
        name = "ViewOnlyAccess"
        description = "ViewOnlyAccess"
        session_duration = null
        managed_policies = ["arn:aws::iam::aws:policy/job-function/ViewOnlyAccess"]
        aws_accounts = ["058683872785", "984885849064"]
        sso_groups = ["ReadOnlyGroup"]
        }
    ]
}
