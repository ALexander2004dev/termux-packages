TERMUX_PKG_HOMEPAGE=http://www.gnu.org/software/coreutils/
TERMUX_PKG_DESCRIPTION="Basic file, shell and text manipulation utilities from the GNU project"
TERMUX_PKG_VERSION=8.24
TERMUX_PKG_BUILD_REVISION=4
TERMUX_PKG_SRCURL=http://ftp.gnu.org/gnu/coreutils/coreutils-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="ac_cv_func_mkfifo=yes gl_cv_host_operating_system=Android --without-gmp --enable-single-binary=symlinks ac_cv_func_endpwent=no"
# pinky has no usage on Android.
# realpath has permission denied problem with relative paths, let busybox version prevail.
# df does not work either, let system binary prevail.
TERMUX_PKG_EXTRA_CONFIGURE_ARGS+="  --enable-no-install-program=pinky,realpath,df"
TERMUX_PKG_EXTRA_HOSTBUILD_CONFIGURE_ARGS="$TERMUX_PKG_EXTRA_CONFIGURE_ARGS"
TERMUX_PKG_BUILD_IN_SRC=yes
# Host build for man pages generated by help2man, see makefile.patch:
TERMUX_PKG_HOSTBUILD=yes
