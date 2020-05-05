#!/bin/bash
#%h host name
output_file=/var/log/edb/efm-scripts/pp_log
pool_backend=/usr/edb/efm-scripts/pgpool_backend.sh
node_address=$1
current_date_time="`date +"%Y-%m-%d %H:%M:%S"`";
echo $current_date_time >>$output_file
echo "node address to attach = $node_address". >>$output_file
$pool_backend attach $1 >>$output_file
echo "-------------------".>>$output_file
exit 0
