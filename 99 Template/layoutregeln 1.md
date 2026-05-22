---
tags:
  - meta/konventionen
---

# Vault-Konventionen

## Hierarchie

```
Oberfamilie (Genus)  →  _Aspergillus.md
  └── Art (Spezies)  →  _Übersicht-Penicillium.md
        └── Folio    →  Folio-10.md  (1 Note = 1 PP-Folie)
```

## Dateinamen

| Typ                | Schema                 | Beispiel                   |
| ------------------ | ---------------------- | -------------------------- |
| Genus-Kapitelseite | `<Genus>.md`           | `Aspergillus.md`           |
| Art-Übersicht      | `Übersicht-<Art>.md`   | Übersicht-Penicillium.md`  |
| Folio              | `Folio-<Nr>.md`        | `Folio-10.md`              |
| Ordner             | Kein `/` → Bindestrich | `Aspergillus-Penicillium/` |

## Breadcrumb-Navigation

Jede Note enthält `up:` im Frontmatter → Breadcrumbs-Plugin zeigt Navigationspfad.

## Felder pro Folio-Note

| Feld | Beschreibung |
|---|---|
| `oberfamilie` | Genus (z.B. Aspergillus) |
| `art` | Voller Artname |
| `folio` | PP-Folien-Nummer |
| `messungen` | Anzahl Messungen auf der Folie |
| `status` | aktiv / unsicher / veraltet |
| `up` | Link zur übergeordneten Note (Breadcrumb) |

## Bilder

Ablage: `08_Bilder/Sporen/<Genus>/<Art>/`
Einbettung in Note: `![[Dateiname.png|150]]`

## Tags

Tag-System wird in Phase 2 definiert. MVP: nur `status/aktiv`.

## Kommentare

Verlinktes Diskussions-Note-System kommt in Phase 3 (braucht Server/Hosting-Entscheidung).
