//delete duplicate records in Ssql
//A really easy way to do this is to add a UNIQUE index on the 3 columns. 
//When you write the ALTER statement, include the IGNORE keyword. Like so:

ALTER IGNORE TABLE jobs
ADD UNIQUE INDEX idx_name (site_id, title, company);
//This will drop all the duplicate rows. As an added benefit, 
//future INSERTs that are duplicates will error out. As always, 
//you may want to take a backup before running something like this...
