# MySQL Database Backup Script

This script automates the backup process for MySQL databases using the mysqldump tool. It is designed to run on Windows and can be configured easily for daily backups using Windows Task Scheduler.

## Prerequisites

- MySQL server installed (e.g., XAMPP).
- Ensure that the MySQL server bin folder is set correctly.
- Set valid MySQL credentials for authentication.
- Define the backup folder path where the backup files will be stored.
- Specify the databases to be backed up.

## Usage

1. Clone or download this repository to your local machine.
2. Configure the script by setting the necessary parameters:
   - `mysql_bin_path`: Path to MySQL server bin folder.
   - `mysql_user`: MySQL username.
   - `mysql_password`: MySQL password.
   - `backup_path`: Backup folder path.
   - `databases_to_backup`: Specify the databases to be backed up.
3. Run the script either manually or use Windows Task Scheduler for automated daily backups.

## Backup File Naming Convention

The script generates backup file names with a timestamp, making it easy to track the date of each backup.

## Logging

The script logs backup status, indicating whether the backup was successful or if there were any errors. The log is stored in `mysql_backup_log.txt` within the specified backup folder.

## Note

- Ensure that the necessary MySQL tools are in the system's PATH.
- Customize the script according to your specific requirements.

Feel free to contribute or report issues by creating a pull request or opening an issue.
