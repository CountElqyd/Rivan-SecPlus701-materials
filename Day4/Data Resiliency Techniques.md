Backup Software
_ Veeam
_Veritas
_Bacula

Storage---
Simple Vol
Spanned Volume
Raid 0 -- Striped Volume
Raid 1 --Mirrored
Raid 5 -- 
Raid 1+0

| Volume Type    | Min. Disks | Redundancy     | Performance      | Fault Tolerance | Use Case                          |
| -------------- | ---------- | -------------- | ---------------- | --------------- | --------------------------------- |
| Simple Volume  | 1          | ❌ No           | Standard         | ❌ None          | Basic storage                     |
| Spanned Volume | 2+         | ❌ No           | Low              | ❌ None          | Extend volume size across disks   |
| RAID 0         | 2+         | ❌ No           | ✅✅ High          | ❌ None          | High-speed, non-critical data     |
| RAID 1         | 2          | ✅ Yes          | ✅ Good Read      | ✅ High          | Critical data, simple redundancy  |
| RAID 5         | 3+         | ✅ Yes (1 disk) | ✅ Read, ⚠️ Write | ✅ Good          | Balanced performance + protection |
| RAID 1+0 (10)  | 4+         | ✅✅ Very High   | ✅✅ Very High     | ✅✅ Very High    | Mission-critical, fast access     |

