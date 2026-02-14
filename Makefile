# AUR Package Maintenance Makefile
PKGBUILD := PKGBUILD
SRCINFO  := .SRCINFO

.PHONY: all update verify clean

# Default target: update checksums and metadata
all: update

# Update SHA256 checksums and regenerate .SRCINFO
update:
	@echo "Updating checksums in $(PKGBUILD)..."
	updpkgsums
	@echo "Generating $(SRCINFO)..."
	makepkg --printsrcinfo > $(SRCINFO)

# Verify the PKGBUILD for common packaging errors
verify:
	@echo "Linting $(PKGBUILD) with namcap..."
	namcap $(PKGBUILD)

# Clean up build artifacts and downloaded source files
clean:
	@echo "Cleaning up build files..."
	rm -rf src/ pkg/ *.tar.gz *.tar.xz
