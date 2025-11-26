echo "
ui            = ${UI_ENABLED}
cluster_name  = \"${CLUSTER_NAME}\"
cluster_addr  = \"${CLUSTER_ADDR}\"
api_addr      = \"${API_ADDR}\"
disable_mlock = true

log_level = \"${LOG_LEVEL}\"

storage \"raft\" {
  path = \"${RAFT_STORAGE_PATH}\"
}

listener \"tcp\" {
  address       = \"[::]:8200\"
  tls_cert_file = \"${TLS_CERT_PATH}\"
  tls_key_file  = \"${TLS_KEY_PATH}\"
  tls_disable = ${TLS_DISABLED}

  tls_disable_client_certs = ${TLS_CLIENT_CERTS_DISABLED}
}

" > config.hcl
