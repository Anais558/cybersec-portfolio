# Analyse DNS — Jour 3

## Outil utilisé
`dig` avec serveur DNS 8.8.8.8 (Google Public DNS)

## google.com
- **A** : 142.251.209.46
- **MX** : smtp.google.com
- **NS** : ns1/ns2/ns3/ns4.google.com
- **SPF** : v=spf1 include:_spf.google.com ~all ✅
- **Services tiers** : Facebook, Apple, DocuSign, Microsoft

## github.com
- **MX** : github-com.mail.protection.outlook.com
- Utilise Microsoft Outlook pour les emails

## wikipedia.org
- **NS** : ns0/ns1/ns2.wikimedia.org
- Infrastructure DNS gérée en interne

## twitter.com
- **SPF** : aucun record trouvé ⚠️
- Risque : usurpation d'email possible

## Leçons apprises
- Le record MX révèle le fournisseur email
- SPF absent = risque de phishing via ce domaine
- Les NS révèlent l'hébergeur DNS