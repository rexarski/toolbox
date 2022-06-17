Update git project submodule

```bash
git submodule update --remote --merge
```

Hugo server

```bash
cd exampleSite
hugo server --gc -D -v --disableFastRender -t ../..
hugo server --gc -D -v --disableFastRender --buildFuture
hugo server --gc --disableFastRender --i18n-warnings -p 1316
```

R package pacman

```r
if (!require("pacman")) install.packages("pacman")
pacman::p_load(package1, package2, package_n)
```