# TODOes, planned things or future features

- CRUD extension by extra arguments or options
- Search notes
- Operate attachments

### Read ENML from GUID

#### Read attachments

```console
$ enr get GUID ATTACHMENT-NAME
```

### Create note from ENML file

#### With metadata

```console
$ enr post --title=TITLE --notebook=NOTEBOOK-NAME --url=URL --tags=TAG1,TAG2 INPUT-PATH
```

### Update existing note from ENML file

#### With metadata

```console
$ enr put --notebook=NOTEBOOK-NAME --url=URL --tags=TAG1,TAG2 GUID INPUT-PATH
```

#### Only metadata

```console
$ enr put --notebook=NOTEBOOK-NAME --url=URL --tags=TAG1,TAG2 GUID
```

### Search notes

```console
$ enr ls SEARCH-PHRASE1 SEARCH-PHRASE2 ...
<only GUIDs>

$ enr ls -l SEARCH-PHRASE1 SEARCH-PHRASE2 ...
<GUIDs and titles>
```

or

```console
$ enr search SEARCH-PHRASE1 SEARCH-PHRASE2 ...
<GUIDs and titles>

$ enr search --only-guid SEARCH-PHRASE1 SEARCH-PHRASE2 ...
<only GUIDs>
```

### List attachments

```console
$ enr ls-attachments GUID
$ enr ls-attachments -l GUID
```
