# SINGLE server regex network IP extraction (example: 10.11.12.143)
openstack server show UbuntuServer -c addresses --format value | grep -Po '10\.11\.12\.[[:digit:]]*'

# MULTIPLE server regex network IP extraction
# (example:
# 10.11.12.188
# 10.11.12.143
# 10.11.12.63
# 10.11.12.122
# 10.11.12.240
# 10.11.12.4
# )
openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.12\.[[:digit:]]*'

# STORE MULTIPLE server regex network IP extraction in ONE VARIABLE (IPs stored with space as interspace)
# (example: 10.11.12.188 10.11.12.143 10.11.12.63 10.11.12.122 10.11.12.240 10.11.12.4)
VAR=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.12\.[[:digit:]]*')
