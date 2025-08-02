import nmap
import socket
from tabulate import tabulate

# List of websites
websites = [
    "www.feu.edu.ph",
    "www.ama.edu.ph",
    "www.nemsu.edu.ph",
    "www.basc.edu.ph",
    "www.srspc.edu.ph",
    "www.stmatthews.ph",
    "www.auf.edu.ph",
    "www.zppsu.edu.ph",
    "www.aics.edu.ph",
    "www.perpetualdalta.edu.ph"
]

# Initialize nmap scanner
nm = nmap.PortScanner()
results = []

# Scan each website
for site in websites:
    try:
        ip = socket.gethostbyname(site)
        print(f"Scanning {site} ({ip})...")
        scan_result = nm.scan(hosts=ip, arguments='-v')
        open_ports = []

        # Parse scan result
        if ip in nm.all_hosts():
            for proto in nm[ip].all_protocols():
                lport = nm[ip][proto].keys()
                for port in sorted(lport):
                    state = nm[ip][proto][port]['state']
                    if state == 'open':
                        open_ports.append(port)

        results.append({
            "Website": site,
            "IP": ip,
            "Open Ports": sorted(open_ports),
            "Count": len(open_ports)
        })

    except Exception as e:
        results.append({
            "Website": site,
            "IP": "N/A",
            "Open Ports": [],
            "Count": 0,
            "Error": str(e)
        })

# Sort by number of open ports
results.sort(key=lambda x: x['Count'], reverse=True)

# Prepare table
table_data = []
for res in results:
    table_data.append([
        res["Website"],
        res["IP"],
        res.get("Count", 0),
        ", ".join(map(str, res["Open Ports"])) if res["Open Ports"] else "None"
    ])

# Print table
print("\nScan Results (Ranked by Open Ports):")
print(tabulate(table_data, headers=["Website", "IP", "Open Port Count", "Open Ports"], tablefmt="grid"))
