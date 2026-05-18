# GTK 3.22 for Kindle (`kindlehf`)

## Building

GTK builds with [Meson](https://mesonbuild.com/).

```
meson setup builddir_kindlehf \
    --cross-file ~/x-tools/arm-kindlehf-linux-gnueabihf/meson-crosscompile.txt \
    --cross-file kindlehf-cross.txt \
    --buildtype=release
```

```
meson compile -C builddir_kindlehf
```

## Subprojects

GTK has many subprojects. Since the upstream repo has many subprojects where
the dependencies are referenced by Git branch name, in this fork they've been
rewritten to specific commit SHAs to keep the build stable.

### Creating a patch

Some patches are needed to fix build errors in dependencies. `meson setup`
should have downloaded the repository to `subprojects/$name`. Make changes
directly in this directory, and then `git diff >../packagefiles/$name.diff` to
update the Meson patch file.
