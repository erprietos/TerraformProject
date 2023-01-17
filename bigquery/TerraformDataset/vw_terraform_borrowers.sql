# Some demo content in vw_terraform_borrowers.sql
SELECT c.Id, c.Name
FROM `TerraformDataset.Loans` l 
      inner join `TerraformDataset.Clients` c 
	  ON l.ClientId = c.Id