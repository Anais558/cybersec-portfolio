# Analyse Wireshark — Jour 2

## Setup
- Interface : Wi-Fi
- Filtre utilisé : `dns or http` puis `tcp.flags.syn==1`
- Durée de capture : ~5 minutes

## Ce que j'ai observé

### Requêtes DNS
- Mon PC (172.17.74.9) interroge le routeur/DNS (172.17.1.1)
- Domaines contactés automatiquement : google.com, 
  bing.com, gstatic.com
- Protocole : UDP port 53
- Type de records : A (IPv4) et HTTPS

### Three-Way Handshake TCP
- SYN : 172.17.74.9 → 216.58.205.78 (Google) port 443
- SYN-ACK : 216.58.205.78 → 172.17.74.9
- Connexion HTTPS établie sur port 443

### Observations
- Tout le trafic web est sur port 443 (HTTPS) — chiffré
- Port 80 (HTTP) visible sur IP 92.223.40.60
- Plusieurs connexions simultanées ouvertes par le navigateur

## Conclusion
Le three-way handshake confirme le modèle TCP :
SYN → SYN-ACK → ACK avant tout échange de données.