# Linux — Commandes essentielles cybersécurité — Jour 6

## Navigation
| Commande | Usage cyber |
|----------|-------------|
| `pwd` | Savoir où on est après un accès |
| `ls -la` | Voir permissions, fichiers cachés |
| `find / -perm -4000` | Chercher fichiers SUID → escalade |
| `cat /etc/issue` | Identifier l'OS cible |

## Surveillance système
| Commande | Usage cyber |
|----------|-------------|
| `ps aux` | Voir tous les processus actifs |
| `netstat -antup` | Ports ouverts et connexions |
| `cat /var/log/auth.log` | Tentatives de connexion |
| `grep "Failed" /var/log/auth.log` | Brute force SSH |

## Logs Apache
| Commande | Usage cyber |
|----------|-------------|
| `tail -20 access.log` | Dernières requêtes web |
| `grep "Nmap" access.log` | Détecter un scan |
| `grep "404" access.log` | Tentatives de fuzzing |

## Disque et mémoire
| Commande | Usage cyber |
|----------|-------------|
| `df -h` | Espace disque — exfiltration ? |
| `free -m` | RAM disponible |
| `cat /etc/crontab` | Tâches planifiées suspectes |

## Leçons apprises
- Nmap laisse des traces dans auth.log et access.log
- Les fichiers SUID sont des vecteurs d'escalade
- Les crontabs root modifiables = persistence possible
- Toujours vérifier /etc/passwd pour les utilisateurs