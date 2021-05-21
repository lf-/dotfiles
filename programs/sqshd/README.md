# squish debug

squishes multiline tuple structs in debug output

## example

```
origin: BlockExpr {
    block: InFile {
        file_id: HirFileId(
            FileId(
                FileId(
                    0,
                ),
            ),
        ),
        value: FileAstId::<syntax::ast::generated::nodes::BlockExpr>(5),
    },
},
```

to

```
origin: BlockExpr {
    block: InFile {
        file_id: HirFileId(FileId(FileId(0))),
        value: FileAstId::<syntax::ast::generated::nodes::BlockExpr>(5),
    },
},
```
