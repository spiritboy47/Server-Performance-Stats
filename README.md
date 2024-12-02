**Server Performance Monitoring Script: server-stats.sh**

**Overview**
server-stats.sh is a lightweight and versatile shell script designed for Linux systems to monitor basic server performance. The script is ideal for understanding system resource utilization and identifying performance bottlenecks. It provides key statistics such as CPU usage, memory usage, disk usage, and process details. Additionally, it can be extended to include advanced metrics like OS version, uptime, logged-in users, and failed login attempts.

This project is perfect for DevOps engineers or system administrators looking for a quick diagnostic tool.

**Features**

**CPU Usage:**
Displays total CPU usage percentage, making it easy to identify high CPU load.

**Memory Usage:**
Shows used and free memory in MB with the percentage of memory utilized.

**Disk Usage:**
Provides an overview of disk space usage for the root partition, including used, free, and percentage metrics.

**Process Statistics:**
Lists the top 5 processes consuming the most CPU and memory.
Stretch Goals (Optional):
OS version.
Uptime and load averages.
Active logged-in users.
Count of failed login attempts.

**Usage**
Requirements
A Linux system with Bash shell.
Permissions to access logs (for additional stats like failed login attempts).

**Setup**
**Clone this repository to your local machine:**

git clone https://github.com/your-username/server-performance-monitor.git

**Navigate to the directory:**
cd server-performance-monitor

**Make the script executable:**
chmod +x server-stats.sh

**Running the Script**
**Execute the script with:**
./server-stats.sh
