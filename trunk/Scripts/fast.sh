echo Starting Demo ...
sleep 1
po_cos_naming -file ./Scripts/ior.txt &
xterm -T "Distributed Queue" -geometry +20+20 -e ./Scripts/init_queue.sh &
xterm -T "Distributed Server" -geometry +295+380 -e ./Scripts/init_server.sh &
xterm -T "Distributed Client"  -geometry +570+20 -e ./Scripts/init_client.sh &
sleep 3
echo "\nPress q for Quit...\n"
read Q
killall po_cos_naming
killall xterm
killall queue_partition
killall server_partition
killall client_partition
echo Demo Terminated Succesfully.