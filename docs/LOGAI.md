# AI Usage Log - KampuzNest (Lab 5.1)

## Goal
Refactor navigation so `currentIndex` is managed in Provider (`AppState`),
reduce unnecessary rebuilds, and keep all real feature pages working.

## Tools
- Claude
- ChatGPT (ChatGPT-6 Astra / Codex-style output)

## Shared prompt
Refactor KampuzNest navigation: keep currentIndex only in AppState Provider;
MainShell may stay StatefulWidget only for Scaffold GlobalKey; use
context.select/Consumer; keep bottom nav + drawer + existing pages; return
full app_state.dart and main.dart.

## Claude
### Suggestions
- Provider-owned currentIndex
- context.select to limit rebuilds
- StatefulWidget only for GlobalKey
- Also proposed a full tab-config shell rewrite

### Accepted
- Provider-owned currentIndex
- context.select
- GlobalKey stays in MainShell
- Safer setIndex guards

### Rejected
- Fake pages (Explore/Saved/Profile)
- Wrong imports (`pages/` instead of `screens/`)
- Replacing AppDrawer / feature navigation structure

## ChatGPT
### Suggestions
- Provider-owned currentIndex
- Ignore out-of-range and same index
- context.select for nav rebuilds
- GlobalKey in MainShell for drawer

### Accepted
- Bounds/same-index guards idea
- context.select idea
- Provider separation idea

### Rejected
- Placeholder pages (Home/Search/Profile Text widgets)
- Replacing real screens, AppDrawer, NavigationBar
- `setCurrentIndex` rename (would break existing drawer `setIndex`)
- 3-tab shell vs KampuzNest 4 tabs
- Older `Key?` / `primarySwatch` patterns

## Final decision
Human-reviewed hybrid: keep both AIs’ Provider + select ideas, implement on
real KampuzNest files only, do not accept page rewrites.

## Verification
- dart format
- flutter analyze
- flutter test
- manual: bottom nav + drawer + feature pages