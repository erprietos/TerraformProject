# Some demo content in vw_terraform_aggregated.sql
select City, Name
from `TerraformDataset.Clients`
group by City, Name