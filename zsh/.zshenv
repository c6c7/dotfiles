# The display manager sources ~/.profile so we should never hit this.
# Keep it just in case.
if [[ "${_SOURCED_PROFILE}" != 'yes' ]]; then
  emulate sh -c ". ${HOME}/.profile"
fi

# Since the terminal emulator defaults to a non-login shell, we will rarely load
# .zprofile at login. Load it here as a backup.
if [[ "${_SOURCED_ZSH_ZPROFILE}" != 'yes' ]]; then
  source "${ZDOTDIR}/.zprofile"
fi

function autoload-executables-in-dir() {
  local autoload_dir="$1"
  fpath=("${autoload_dir}" "${fpath[@]}")

  # Autoload all shell functions from in a given directory that have
  # the executable bit set.  The executable bit is not necessary, but
  # gives you an easy way to stop the autoloading of a particular
  # shell function.
  for func in "${autoload_dir}"/*(N-.x:t); do
    autoload -Uz "$func";
  done
}

source /etc/bash_completion.d/g4d

# Setup function and completion directories.
autoload-executables-in-dir "${ZDOTDIR}/functions"
export PATH="${ZDOTDIR}/functions:$PATH"
. "$HOME/.cargo/env"
