# Some demo content in vw_terraform_borrowers.sql
SELECT c.Id, c.Name, l.Amount as LoanAmount 
FROM `TerraformDataset.Loans` l 
      inner join `TerraformDataset.Clients` c 
	  ON l.ClientId = c.Id 