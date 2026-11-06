
## Forgejo

If you see this error when pulling/pushing into repo after restoring/migrating data: 

```
Unable to load config file for a installed Forgejo instance, you should either use "--config" to set your config file (app.ini), or run "forgejo web" command to install Forgejo.
```

then just go to "Site administration" and run "Resynchronize Git hooks of all repositories".

