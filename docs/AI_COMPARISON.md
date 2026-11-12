# AI Tool Comparison - Claude vs ChatGPT

Both tools were asked to move navigation index state into Provider and keep
the KampuzNest UI working.

**Claude:** Understood Provider separation and rebuild control (`context.select`),
but over-generated a new shell with fake tabs/pages and wrong import paths.
That would have broken teammate features if accepted blindly.

**ChatGPT:** Also placed currentIndex in Provider and suggested safe index
updates + `context.select`, but replaced our real pages with placeholders,
renamed methods, and simplified to 3 tabs. Also would break the app if pasted
as-is.

**Choice:** Neither raw output was merge-ready. We accepted the shared
state-management ideas from both, rejected page rewrites from both, and
integrated a minimal KampuzNest-safe refactor manually. For structure/clarity
of the Provider approach, Claude was slightly stronger; for simple guard-clause
reminders, ChatGPT was useful. Final implementation = reviewed hybrid.