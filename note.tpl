Cluster info:
%{ if customer_name != "" ~}
  Customer: ${ customer_name }
%{ endif ~}
  Cluster name: ${ cluster_name }
%{ if api_endpoint != "" ~}
  API Endpoint: ${ api_endpoint }
%{ endif ~}
