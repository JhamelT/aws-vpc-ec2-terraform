graph TD
    subgraph "AWS Cloud"
        subgraph "VPC - 10.0.0.0/16"
            subgraph "Public Subnet - 10.0.1.0/24 - us-east-1a"
                EC2["EC2 Instance\nRunning Nginx\nt2.micro"]
                SG["Security Group\nAllows: SSH from specific IP\nHTTP from anywhere"]
            end
            IGW["Internet Gateway"]
            RT["Route Table\nDefault route to IGW"]
        end
    end
    
    User["User/Admin"] -- "SSH (port 22)\nvia specific IP" --> SG
    Internet["Internet"] -- "HTTP (port 80)" --> SG
    SG --> EC2
    EC2 -- "Outbound Traffic" --> RT
    RT -- "Routes traffic" --> IGW
    IGW -- "Connects to" --> Internet
    
    classDef aws fill:#FF9900,stroke:#232F3E,stroke-width:2px,color:white;
    classDef net fill:#3F8624,stroke:#2F6617,stroke-width:2px,color:white;
    classDef user fill:#4D27AA,stroke:#27156A,stroke-width:2px,color:white;
    
    class EC2,SG,IGW,RT aws;
    class Internet,User user;
    class VPC,Subnet net;
