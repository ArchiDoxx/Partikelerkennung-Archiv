# Partikelerkennung-Archiv

Dieses Repository ist als Git-Basis gedacht, um einen Obsidian-Vault zwischen Geräten zu synchronisieren.

## Setup

1. Repository lokal klonen.
2. Deinen Vault-Inhalt in dieses Verzeichnis legen.
3. Die Sync-Datei ausführbar machen:

```bash
chmod +x sync-vault.sh
```

## Synchronisieren

```bash
./sync-vault.sh
```

Optional mit eigener Commit-Nachricht:

```bash
./sync-vault.sh "Notizen aktualisiert"
```

Zum Testen ohne Push/Pull:

```bash
./sync-vault.sh --dry-run
```
