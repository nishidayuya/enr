# enr: EverNote Request

An Evernote command line program

[![License X11](https://img.shields.io/badge/license-X11-blue.svg)](https://raw.githubusercontent.com/nishidayuya/enr/master/LICENSE.txt)
[![Gem Version](https://badge.fury.io/rb/enr.svg)](https://rubygems.org/gems/enr)

## Installation

```console
$ gem install enr
```

## Usage

### Setup

Set `ENR_TOKEN` environment your [developer token](https://www.evernote.com/api/DeveloperToken.action).

```console
$ export ENR_TOKEN='your developer token'

```

### Read ENML from GUID

```console
$ enr get GUID
```

### Create note from ENML file

```console
$ enr post INPUT-PATH
```

### Update existing note from ENML file

```console
$ enr put GUID INPUT-PATH
```

### Destroy note by GUID

```console
$ enr delete GUID
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nishidayuya/enr .
