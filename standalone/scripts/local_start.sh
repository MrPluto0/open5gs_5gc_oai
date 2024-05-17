for service in $(systemctl list-unit-files | grep '^open5gs-' | awk '{print $1}'); do
    sudo systemctl start "$service"
done
