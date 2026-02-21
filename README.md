# BC Reimplementation

Business Central reimplementation project — migrating from V14 on-premise (C/AL) to Dynamics 365 Business Central SaaS (AL extensions).

Built on the [AL-Go for GitHub](https://github.com/microsoft/AL-Go) PTE template for CI/CD.

## Repository Structure
```
bc-reimplementation/
├── .AL-Go/                   # AL-Go project settings and dev environment scripts
├── .github/                  # CI/CD workflows (managed by AL-Go), PR template
├── app/                      # Main AL extension
│   ├── .vscode/              # Shared VS Code settings and extension recommendations
│   ├── src/                  # AL source code (organised by object type)
│   └── app.json              # Extension manifest
├── testapp/                  # Test extension
│   ├── src/                  # Test codeunits
│   └── app.json              # Test extension manifest (depends on main app)
├── .gitignore
├── .gitattributes
├── al.code-workspace         # VS Code workspace (open this to get all folders)
└── README.md
```

## Getting Started

1. Clone this repository
2. Open `al.code-workspace` in VS Code — this loads the app, testapp, and AL-Go folders
3. VS Code will prompt you to install recommended extensions — click **Install All**
4. Create your local Docker container (see the Developer Runbook, Section 5.3)
5. Configure your `launch.json` in `app/.vscode/` (git-ignored — see the Developer Runbook, Section 5.4)
6. `Ctrl+Shift+P` → **AL: Download Symbols**
7. `Ctrl+F5` to publish without debugging

## Conventions

- **Namespaces:** `TheIconic.{Area}` (e.g., `TheIconic.Sales`, `TheIconic.Finance`)
- **TI prefix:** Applied to extension elements only (fields, actions, controls on standard BC objects)
- **Branching:** GitHub Flow — feature branches from `main`, merge via PR
- **Commits:** [Conventional Commits](https://www.conventionalcommits.org/) format

## CI/CD

Powered by AL-Go for GitHub. On every push and PR:
- Compiles the AL extension against the Australian localisation
- Runs CodeCop, UICop, and PerTenantExtensionCop analysers
- Executes all test codeunits in `testapp/`
- Produces `.app` build artefacts

To update AL-Go workflows: **Actions** → **Update AL-Go System Files** → **Run workflow**

## Documentation

Refer to the **Phase 1 Developer Runbook** for full setup instructions, coding standards, and team conventions.
