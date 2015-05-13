# Jobot-brain-file

Hubot utility that save the brain on the filesystem

See [`src/hubot-brain-file.coffee`](src/hubot-brain-file.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install jobot-brain-file --save`

Then add **jobot-brain-file** to your `external-scripts.json`:

```json
["jobot-brain-file"]
```

## The script 
 It will save the brain on the file system. it uses FILE_BRAIN_PATH as path otherwise it uses /var/hubot by default.
 The JSON is indented with 4 spaces.  
