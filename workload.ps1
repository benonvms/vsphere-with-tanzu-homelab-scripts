Connect-CisServer -Server vcsa.tanzu.local -User administrator@vsphere.local -Password VMware123!
Import-Module VMware.WorkloadManagement
 
$vSphereWithTanzuParams = @{
    ClusterName = "Tanzu-Cluster";
    TanzuvCenterServer = "vcsa.tanzu.local";
    TanzuvCenterServerUsername = "administrator@vsphere.local";
    TanzuvCenterServerPassword = "VMware123!";
    TanzuContentLibrary = "TKG Content Library";
    ControlPlaneSize = "TINY";
    MgmtNetwork = "Management";
    MgmtNetworkStartIP = "192.168.2.20";
    MgmtNetworkSubnet = "255.255.255.0";
    MgmtNetworkGateway = "192.168.2.1";
    MgmtNetworkDNS = @("192.168.2.3");
    MgmtNetworkDNSDomain = "tanzu.local";
    MgmtNetworkNTP = @("pool.ntp.org");
    WorkloadNetwork = "Workload";
    WorkloadNetworkStartIP = "10.20.0.10";
    WorkloadNetworkIPCount = 20;
    WorkloadNetworkSubnet = "255.255.255.0";
    WorkloadNetworkGateway = "10.20.0.1";
    WorkloadNetworkDNS = @("192.168.2.3");
    WorkloadNetworkServiceCIDR = "10.96.0.0/24";
    StoragePolicyName = "Tanzu-Storage-Policy";
    HAProxyVMvCenterServer = "vcsa.tanzu.local";
    HAProxyVMvCenterUsername = "administrator@vsphere.local";
    HAProxyVMvCenterPassword = "VMware123!";
    HAProxyVMName = "haproxy.tanzu.local";
    HAProxyIPAddress = "192.168.2.6";
    HAProxyRootPassword = "VMware123!";
    HAProxyPassword = "VMware123!";
    LoadBalancerStartIP = "10.10.0.64";
    LoadBalancerIPCount = 64
}
 
New-WorkloadManagement2 @vSphereWithTanzuParams