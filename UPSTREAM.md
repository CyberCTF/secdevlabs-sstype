# Upstream

| | |
| --- | --- |
| Project | secDevLabs (Globo.com) |
| Repository | https://github.com/globocom/secDevLabs |
| App | `owasp-top10-2021-apps/a3/sstype` |
| Version | master (secDevLabs has no releases) |
| Commit | 10be438496e928c66567749f0aaf0bb976052bc9 |
| Licence | BSD-3-Clause |

The app folder [`owasp-top10-2021-apps/a3/sstype`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a3/sstype) of that commit is vendored unchanged, without its Git history,
split so that each part sits in the build folder of the machine that uses it:

| Upstream path (in the app folder) | Here |
| --- | --- |
| everything | `build/server/app/` |

Each `build/<machine>/Dockerfile` says in its header comment how it differs from upstream:

- `build/server/`: upstream's `deployments/sstype.Dockerfile` with the base image pinned to `python:3.12` (upstream takes the latest 3.x) and Tornado installed as `tornado==6.4.1` (current at the secDevLabs commit) instead of from upstream's `requirements.txt`, whose only line, `tornado.`, current pip rejects (`Invalid requirement: 'tornado.'`).

To update, replace the vendored folders with a newer secDevLabs commit, then change this file.
