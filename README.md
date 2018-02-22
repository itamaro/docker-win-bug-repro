# docker-win-bug-repro

This repository is a reproduction of a Docker for Windows "bug",
where tarred files that are extracted during docker build lose their execute permission within the container.

The root cause seems to be the fact that Windows has no concept of RWX permission flags as in POSIX,
so while Docker defaults to applying 755 to all files in the build context,
it doesn't affect files that were tarred before the build.
