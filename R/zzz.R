core <- c("DALEX", "iBreakDown", "ingredients", "auditor")

.onAttach <- function(...) {
  DrWhy_logo()
  packageStartupMessage("Welcome to DrWhy (version: ", utils::packageVersion("DrWhy"), ")")
  for (package in core) {
    packageStartupMessage("  - ",package," (version: ", utils::packageVersion(package), ")")
  }
}
