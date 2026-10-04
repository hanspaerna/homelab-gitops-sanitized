---
title: Personal projects
menu: true
menuOrder: 4
route: /personal-projects
---
# Personal projects

### A GitOps-controlled K3s Homelab

<img src="https://raw.githubusercontent.com/hanspaerna/homelab-gitops-sanitized/refs/heads/main/docs/infrastructure.drawio.png" width="80%" alt="scheme">

[GitHub](https://github.com/hanspaerna/homelab-gitops-sanitized)

My biggest personal project that fully covers my homelab infrastructure. Took around a year of constant improvement, learning, and careful choosing of tools software to make it truly convenient for a single-person management.

This GitOps project is an attempt to switch to an orchestrated and declarative environment from a bunch of docker-compose files scattered across different VMs. Given the fact that sky is the limit when it comes to over-engineering that involves Kubernetes, I've decided to limit my expectations to a non-HA setup. I have only one physical server with good performance, so there were not that many options anyway. The only thing that needs to be rented is an external VPS to host the external cluster with VPN server on it, as I am behind CGNAT at home.

OpenTofu is used for creating resources. Empty resources are then configured from scratch by Ansible playbooks.

The resulting infrastructure is pretty easy to use on a daily basis, it can be destroyed and created just in a few minutes. Feel free to take any part of it or use it as a whole.

### A morphological text generator for Russian language

[GitHub]()

Inspired by one of the algorithmic text-synthesis methods originally invented by the French [Oulipo](https://en.wikipedia.org/wiki/Oulipo) poetry group. According to the sparse information I could find on the web, it was originally created by the poet Raymond Queneau. This is not an exact copy, though, as it uses one text (“ghost”) as a donor for the overall structure and fills it with lexicon from two other texts, extended by all their possible inflections. Besides that, pronouns, conjunctions, and prepositions are also taken from the ghost text, but nothing else. I can’t easily explain why I made this, but feel free to use it.

### Q3 CPMA in browser with enhancements

[GitHub](https://github.com/hanspaerna/q3js-kob)

This hard fork of [q3js](https://github.com/lklacar/q3js) project (please contact the original author for permission if you wish to fork it) includes many changes and new features, including a server admin UI that can be opened directly in the game by pressing F2, the ability to customize Quake 3's client configuration on the website before joining, and integrated in-game chat that streams messages from the Q3 server and allows sending messages via the website. It also supports automatic downloading of custom player models to web clients, a server file manager for authenticated users to upload player models and maps, and a local file manager for manually modifying the game client's IndexedDB. Authentication is handled through OIDC, with separate groups for trusted players (quakers) and admins (admins or quakemanagers). The fork is primarily CPMA-oriented and enforces a hassle-free fullscreen mode that eliminates mouse pointer lock issues. Additionally, player statistics are collected server-side by proxy and require no modifications to the client.

### This website

[GitHub](https://github.com/hanspaerna/cv-website)

Just my personal CV website. This implementation might be useful as an example to anyone who wants an SPA website populated with markdown files.

All pages are dynamically generated from markdown files, which are stored in my GitOps repo. In case of my homelab, it significantly reduces time to make amendments into the content. For local development or testing, markdown files can be put into /src/assets/markdown-demo directory.


### Public contributions

- Added support for managing IPv6 fields into [ansible-netbird](https://github.com/netbirdio/ansible-netbird) project