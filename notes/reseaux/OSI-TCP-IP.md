# Modèle OSI — Les 7 couches

## Pourquoi OSI ?
Modèle de référence qui standardise comment les données voyagent 
sur un réseau. Chaque couche a un rôle précis.

## Les 7 couches (de bas en haut)

| # | Couche | Rôle | Protocoles |
|---|--------|------|-----------|
| 7 | Application | Interface avec l'utilisateur | HTTP, HTTPS, DNS, FTP, SMTP |
| 6 | Présentation | Chiffrement, compression, encodage | SSL/TLS, JPEG, ASCII |
| 5 | Session | Ouvre/maintient/ferme les sessions | NetBIOS, RPC |
| 4 | Transport | Fiabilité, ports, segmentation | TCP, UDP |
| 3 | Réseau | Adressage IP, routage | IP, ICMP, ARP |
| 2 | Liaison | Adresses MAC, trames | Ethernet, Wi-Fi |
| 1 | Physique | Bits sur le câble/onde | RJ45, fibre, radio |

## TCP vs UDP

| | TCP | UDP |
|-|-----|-----|
| Fiabilité | Oui — accusé de réception | Non — fire and forget |
| Vitesse | Plus lent | Plus rapide |
| Ordre | Garanti | Non garanti |
| Usage | HTTP, SSH, FTP | DNS, streaming, VoIP |

## Le Three-Way Handshake TCP
Client → SYN → Serveur        "Je veux me connecter"
Client ← SYN-ACK ← Serveur   "OK, je suis prêt"
Client → ACK → Serveur        "Parfait, on commence"

## Astuce mémo OSI (de bas en haut)
**P**lease **D**o **N**ot **T**hrow **S**ausage **P**izza **A**way
Physical → Data link → Network → Transport → Session → Presentation → Application

## Pertinence en cybersécurité
- Couche 3 : attaques IP (spoofing, DDoS)
- Couche 4 : scan de ports (Nmap), firewall rules
- Couche 7 : attaques applicatives (SQLi, XSS, CSRF)