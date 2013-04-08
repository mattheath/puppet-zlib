# Public: Installs Zlib 1.2.7
#
# Usage:
#
#   include zlib

class zlib {

  include homebrew

  # Install zlib with a custom brew as tapping and installing from homebrew
  # dupes appears to have broken with recent homebrew changes

  homebrew::formula { 'zlib':
    source => 'puppet:///modules/zlib/brews/zlib.rb',
  }

  package { 'boxen/brews/zlib':
    ensure  => '1.2.7-boxen1',
  }

}