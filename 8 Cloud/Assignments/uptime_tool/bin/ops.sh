#!/bin/bash

# Operations toolkit for uptime & process monitoring

show_menu() {
    echo "============================="
    echo "   Uptime & Process Toolkit   "
    echo "============================="
    echo "1) Top Memory Processes"
    echo "2) Top CPU Processes"
    echo "3) Zombie Processes"
    echo "4) Open Ports"
    echo "5) Disk Usage"
    echo "6) Exit"
    echo "============================="
    echo -n "Enter your choice: "
}

top_memory_processes() {
    echo "Top memory consuming processes:"
    ps aux --sort=-%mem | head -n 10
}

top_cpu_processes() {
    echo "Top CPU consuming processes:"
    ps aux --sort=-%cpu | head -n 10
}

zombie_processes() {
    echo "Zombie processes (if any):"
    ps aux | grep 'Z'
}

open_ports() {
    echo "Open ports on the system:"
    ss -tuln
}

disk_usage() {
    echo "Disk usage details:"
    df -h
}

while true; do
    show_menu
    read -p "Enter your choice: " choice

    case $choice in
        1)
            top_memory_processes
            ;;
        2)
            top_cpu_processes
            ;;
        3)
            zombie_processes
            ;;
        4)
            open_ports
            ;;
        5)
            disk_usage
            ;;
        6)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
    echo "Press any key to continue..."
    read -n 1 -s
done

