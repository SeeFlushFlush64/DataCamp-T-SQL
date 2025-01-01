-- When dropping or deleting a database, we use the DROP DATABASE clause
-- NOTE: Before you drop the database

-- 1) Backup the Database
-- Always create a backup of the database before deleting it to ensure you can recover the data in case you need it later.
-- Example:
-- BACKUP DATABASE [DatabaseName] TO DISK = 'C:\Backups\DatabaseName.bak';

-- 2) Check Dependencies
-- Ensure that no other databases, applications, or services depend on the database you're about to drop.
-- Use system views to check dependencies.

-- 3) Ensure no active connections
-- Make sure no users or processes are connected to the database. If there are connections, terminate them or set the database to single-user mode.
-- Example:
-- ALTER DATABASE [DatabaseName] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

-- 4) Deleting system databases
-- Never delete system databases like 'master', 'msdb', or 'tempdb'. These are critical for SQL Server's operation and functionality.
-- Always verify you're not deleting a system database.

-- 5) Confirm database is no longer needed
-- Double-check with stakeholders or team members to confirm that the database is no longer required before proceeding with deletion.
-- You can also temporarily disable access to ensure it's safe to delete.

-- 6) Delete Linked Servers or Replicas
-- If the database is involved in replication or is connected to a linked server, make sure to remove these dependencies before deletion.
-- Check for replication and linked servers using system views.

-- 7) Using Drop Database Safely
-- Always verify the database name before executing `DROP DATABASE` to prevent accidental deletion of the wrong database.
-- Example:
-- DROP DATABASE IF EXISTS [DatabaseName];

-- 8) Managing file deletion
-- After deleting the database, ensure that its physical files (like .mdf and .ldf) are removed if necessary. Double-check that the database was fully deleted first.
-- Example: Manually check and delete orphaned files if needed.

-- 9) Impact on Database Users
-- Notify users and applications of the impending deletion to prevent disruption. Dropping a database will disconnect active users.
-- Consider informing users in advance to avoid sudden service interruptions.

-- 10) Consider soft deletion first
-- If unsure, consider detaching the database or setting it offline rather than deleting it. This way, you can still restore it if needed.
-- Example:
-- sp_detach_db 'DatabaseName';
-- ALTER DATABASE [DatabaseName] SET OFFLINE;

-- Once all the considerations are accounted for, you can safely drop the database:
DROP DATABASE [DatabaseName];
