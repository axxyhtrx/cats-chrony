# cats-ntp

Chrony ntp server acting as local time source with stratum 8

# usage
`docker-compose up -d`

# known issues

If you see this message, shutdown local ntp server on hypervisor to free up port 123
```bash
Creating catschrony_crony_1 ... error

ERROR: for catschrony_crony_1  Cannot start service dns: b'driver failed programming external connectivity on endpoint catschrony_crony_1 (1ab1cea2911262429a8bc87ba0f164b0f5e7e93b262bd386c039fd43c9181ba1): Error starting userland proxy: listen udp 0.0.0.0:123: bind: address already in use'

ERROR: for crony  Cannot start service crony: b'driver failed programming external connectivity on endpoint catschrony_dns_1 (1ab1cea2911262429a8bc87ba0f164b0f5e7e93b262bd386c039fd43c9181ba1): Error starting userland proxy: listen udp 0.0.0.0:123: bind: address already in use'

```
