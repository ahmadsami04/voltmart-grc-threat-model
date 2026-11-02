VoltMart Electronics: Data-Flow Documentation

1. Project Overview

VoltMart Electronics is a fictional mid-sized electronics retailer with an online storefront, retail point-of-sale (POS) terminals, inventory management, and supporting IT infrastructure.

This document explains the Level 1 Data-Flow Diagram (DFD) prepared for Task 1 of the GRC Threat Model Project.

The diagram provides a simplified view of the organization's IT environment and the main information exchanges between systems.

2. System Inventory

The environment contains 15 fictional IT assets, identified as VM-01 through VM-15.

These include:

- Web storefront and application server
- Customer database
- External payment gateway
- POS terminals and management server
- Inventory management system and database
- Employee workstations
- Identity and access management
- Network firewall and core switch
- Backup storage
- Centralized logging server
- Administrator workstation

The complete asset inventory is maintained in "VoltMart_System_Inventory.xlsx".

3. Network Zones and Trust Boundaries

The diagram groups assets into six logical zones:

1. Public Web / Cloud: Online storefront, application server, and customer database.
2. External Third Party: Payment gateway operated by an external provider.
3. Retail / POS: Retail terminals, POS management, and inventory-related systems.
4. Head Office / Internal Applications: Employee workstations, identity management, and administrative access.
5. Security / Network: Firewall, core switch, and centralized logging.
6. Restricted Backup: Protected database backup storage.

These zones represent logical security boundaries, not necessarily separate physical locations.

4. Main Data Flows

The simplified diagram illustrates these principal information exchanges:

Source| Destination| Information exchanged
VM-01| VM-02| Online shopping requests over HTTPS
VM-02| VM-03| Customer and order records
VM-02| VM-04| Tokenized payment requests
VM-05| VM-06| Retail POS transactions
VM-06| VM-07| Stock and sales updates
VM-07| VM-08| Inventory records
VM-09| VM-10| Employee authentication requests
VM-10| VM-15| Administrative authentication
VM-11| VM-12| Network traffic subject to security filtering
VM-12| VM-14| Network event logs
VM-03| VM-13| Customer database backups
VM-08| VM-13| Inventory database backups

The listed flows are conceptual assumptions for the fictional environment. They do not represent observed production traffic.

5. Security Considerations

Important security considerations include protecting customer information, securing payment requests, restricting privileged access, segmenting POS systems, and maintaining reliable backups.

Potential threats include unauthorized access, data exposure, payment manipulation, malicious inventory changes, and service disruption.

These risks will be examined in greater detail during Task 2 using the STRIDE methodology.

6. Diagram Scope and Limitations

This is a simplified Level 1 data-flow diagram.

The arrows show selected logical information exchanges. They do not represent physical network cables or every connection listed in the system inventory.

The inventory's Connected Systems column identifies broader system relationships, while this diagram focuses on representative flows.

Some connections, such as administrative access, application logging, and additional authentication exchanges, are not individually illustrated.

All assets, network zones, and relationships are fictional and created for educational purposes.

7. Deliverables

- "VoltMart_System_Inventory.xlsx"
- "VoltMart_Data_Flow_Diagram.drawio"
- "VoltMart_Data_Flow_Diagram.drawio.png"
- "VoltMart_Data_Flow_Diagram.pdf"
- "PROJECT_SCOPE.md"
- "DATA_FLOW_NOTES.md"

The editable diagrams.net file can be used to update the architecture as the STRIDE threat model develops.

8. Next Steps

Task 2 will identify threats using the six STRIDE categories: Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, and Elevation of Privilege.

Threats will be evaluated against the documented assets, information exchanges, and trust boundaries.
