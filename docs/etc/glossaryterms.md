---
seo:
  title: Glossary
toc:
  enable: false
disableLastModified: true
---

# Glossary

The following table lists terms and acronyms that can be found in this documentation
portal Specification from the <a href="https://www.opencompute.org" target="_blank">Open Compute Project</a>".

|    **Term**                    |        **Description**                                                       |
|--------------------------------|------------------------------------------------------------------------------|
|    AD                          |  Microsoft Active Directory (AD) is Microsoft's implementation of directory information services for Windows Domain networks.                |
|    Ansible                     |  Ansible is an open-source automation tool that lets you push scripts across servers. Ansible does not check the configuration of the server before you push the scripts.<br> Ansible can be used as a Redfish client to configure or monitor servers. |
|    BMC                         |  Baseboard Management Controller - Also known as Management Controller (MC). <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.18.0.html#baseboard-management-controller-bmc" target="_blank">DMTF definition</a> _Typically an independent microprocessor or system-on-chip with associated firmware in a computer system that completes out-of-band systems monitoring and management-related tasks._ |
|    Chef                        |  Chef is an open-source automation tool that lets you check for possible errors before deploying software across servers.<br> Chef can be used as a Redfish client to configure or monitor servers.          |
|    CHIF                        |  CHIF stands for Channel Interface. It is an HPE proprietary communication path between applications (ex. iLOrest, SUM, SUT) running in the Operating System and the management controller (iLO). To use this communication path, applications require the presence of the CHIF driver. This driver is usually part of the application package. |
|    DCi                         |  Discovery and Configuration via iLO. HPE proprietary protocol through which adapters Redfish data is supplied to Redfish clients. |
|    DC-SCM                      |  Datacenter Secure Control Module: An <a href="https://www.opencompute.org" target="_blank">OpenCompute</a> (OCP) standard specification.  |
|    FIPS mode                   |  The Federal Information Processing Standard (FIPS) mode is a requirement for US government employees and personnel, who must use FIPS encryption.    |
|    HPB extension               | HPE signed Public Binary. This is an intermediate format for generating .FWPKG firmare file. |
|    HPM                         |  Host Processor Module: an Open Compute Project (OCP) <a href="https://www.opencompute.org" target="_blank">acronym</a>. |
|    IAK                         | Initial Attestation Key: The IAK is used for generating digital signatures that attest to the identity and integrity of a device. |
|    LDAP                        |  Lightweight Directory Access Protocol (LDAP) is an open-source protocol for accessing and maintaining distributed directory information services.    |
|    MCTP                        | Management Component Transfer Protocol. A <a href="https://www.dmtf.org/documents/pmci/mctp-base-specification-130" target="_blank">DMTF</a> protocol that can be used to transport messages between the components of a system. PLDM messages may use MCTP. |
|    MHS                         |  Modular Hardware System: an Open Compute Project (OCP) <a href="https://www.opencompute.org/projects/mhs" target="_blank">subproject</a>|
|    OCP                         | The OpenCompute Project <a href="https://www.opencompute.org/" target="_blank">forges new technology norms. |
|    PCBA / PCA                  | Printed Circuit Board Assembly (Printed Circuit Assembly)   |
|    PLDM                        | Platform Level Data Model. A <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0240_1.1.0.pdf" target="_blank">DMTF protocol</a> defining messages exchanged between server components (i.e. management controller and storage or network devices). The PLDM specification is used by RDE and firmware update specifications. |
|    Puppet                      |  Puppet is an automation tool that lets you customize the deployment of software according to the configuration of the servers. Puppet works differently from Ansible and Chef in that a Puppet agent is installed on the nodes. The Puppet agent periodically contacts the centralized Puppet master to determine if its node has the latest configuration. The Puppet master can require different configurations across the nodes. Puppet has two versions: open source and Puppet Enterprise. <br> Puppet can be used as a Redfish client to configure or monitor servers.  |
|    RDE                         | Redfish Device Enablement. A <a href="https://www.dmtf.org/dsp/DSP0218" target="_blank">DMTF standard</a> allowing devices (i.e. storage or network controllers) to respond Redfish clients. When PLDM for RDE is implemented in both the management controller and the device, the management controller acts as a pass-through between the Redfish client and and the device. |
|    RDN                         | Relative Distinguished Name: unique name given to an attribute for its level in the hierarchy.|
|    SKU                         | Stock Keeping Unit |
|    TCG                         | <a href="https://trustedcomputinggroup.org/" target="_blank">Trusted Computer Group</a> |
