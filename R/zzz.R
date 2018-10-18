core <- c("DALEX2", "breakDown", "ceterisParibus", "auditor")

.onAttach <- function(...) {
  DrWhy_logo()
  packageStartupMessage("Welcome to DrWhy (version: ", utils::packageVersion("DrWhy"), ")")
  for (package in core) {
    packageStartupMessage("  - ",package," (version: ", utils::packageVersion(package), ")")
  }
}
