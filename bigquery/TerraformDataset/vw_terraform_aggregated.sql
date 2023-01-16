# Some demo content in vw_terraform_aggregated.sql
select city, count(*) numberofclients from `TerraformDataset.Clients`
group by city