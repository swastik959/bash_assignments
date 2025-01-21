#!/bin/bash

echo -e "8.8.8.8\n127.0.0.1\ninvalid-ip\nexample.com" > ip_list.txt

echo "Test IP list 'ip_list.txt' created with sample entries:"
cat ip_list.txt

