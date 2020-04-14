# `quasisyntax`
- zoals quasiquote, maar voor syntax in plaats van voor quote
  - `,` staat hier dan voor `unsyntax`
  - `,@` staat hier dan voor `unsyntax-splicing`
- expressie binnen `unsyntax` **moet een syntax object produceren**
  - dit wordt ingevoegd binnen het omgevende syntax object
- expressie binnen `unsyntax` **moet een lijst van syntax objecten produceren**
  - de elementen hiervan worden ingevoegd in het omgevende syntax object
  - de lijststructuur verdwijnt

## Dependencies
- syntax objecten
