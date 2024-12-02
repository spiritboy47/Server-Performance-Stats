#!/bin/bash

# Function to display CPU usage
get_cpu_usage() {
    echo "CPU Usage:"
    top -bn1 | grep "Cpu(s)" | awk '{print "Usage: " 100 - $8"%"}'
    echo
}

# Function to display memory usage
get_memory_usage() {
    echo "Memory Usage:"
    free -m | awk 'NR==2{printf "Used: %sMB, Free: %sMB, Usage: %.2f%%\n", $3, $4, $3*100/($3+$4)}'
    echo
}

# Function to display disk usage
get_disk_usage() {
    echo "Disk Usage:"
    df -h | awk '$NF=="/"{printf "Used: %s, Free: %s, Usage: %s\n", $3, $4, $5}'
    echo
}

# Function to display top 5 processes by CPU usage
get_top_processes_cpu() {
    echo "Top 5 Processes by CPU Usage:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
    echo
}

# Function to display top 5 processes by memory usage
get_top_processes_memory() {
    echo "Top 5 Processes by Memory Usage:"
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6
    echo
}

# Function to display additional stats
get_additional_stats() {
    echo "Additional Server Stats:"
    echo "OS Version: $(cat /etc/os-release | grep '^PRETTY_NAME=' | cut -d= -f2 | tr -d '"')"
    echo "Uptime: $(uptime -p)"
    echo "Load Average: $(uptime | awk -F'load average:' '{ print $2 }')"
    echo "Logged-in Users:"
    who
    echo "Failed Login Attempts:"
    grep "Failed password" /var/log/auth.log | wc -l
    echo
}

# Main script execution
echo "Server Performance Stats"
echo "========================="
get_cpu_usage
get_memory_usage
get_disk_usage
get_top_processes_cpu
get_top_processes_memory
get_additional_stats
