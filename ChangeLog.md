# 2017.08.10 - azure-core gem @version 0.1.10
* Changed 'nokogiri' to dev dependency and added post-logic for Gem installation. [#41](https://github.com/Azure/azure-ruby-asm-core/pull/41)

# 2017.08.01 - azure-core gem @version 0.1.9
* Added support for StringIO inside body headers. [#39](https://github.com/Azure/azure-ruby-asm-core/pull/39)

# 2017.04.17 - azure-core gem @version 0.1.8
* Fixed rubocop scanned out issue. [#31](https://github.com/Azure/azure-ruby-asm-core/pull/31)
* Code changes to install nokogiri based on the ruby version. [#35](https://github.com/Azure/azure-ruby-asm-core/pull/35)

# 2017.01.25 - azure-core gem @version 0.1.7
* Making a new release to fix the checksum issue with rubygems. No changes in this release.

# 2016.11.23 - azure-core gem @version 0.1.6
* Fixed the issue where it throws the HTTP error even there is a retry filter.

# 2016.9.21 - azure-core gem @version 0.1.5
* Adding autoload for auth files, to avoid having to require these files from dependent gems [#25](https://github.com/Azure/azure-ruby-asm-core/pull/25)

# 2016.8.19 - azure-core gem @version 0.1.4
* Reverted the breaking changes [#23](https://github.com/Azure/azure-ruby-asm-core/pull/23) 

# 2016.8.18 - azure-core gem @version 0.1.3
* Set default open timeout for the request [#16](https://github.com/Azure/azure-ruby-asm-core/issues/16)
* Fixed the issue that debug filter cannot display the right request information when the signer filter is added [#15](https://github.com/Azure/azure-ruby-asm-core/issues/15)
* Fixed the unrecognized method in the MockHttpResponse class [#18](https://github.com/Azure/azure-ruby-asm-core/pull/18)

# 2016.5.16 - azure-core gem @version 0.1.2
* Return response instead of raising exception when there is a retry filter [#8](https://github.com/Azure/azure-ruby-asm-core/pull/8)

# 2016.4.18 - azure-core gem @version 0.1.1
* Can not upload file with spaces [#360](https://github.com/Azure/azure-sdk-for-ruby/issues/360)

# 2016.4.14 - azure-core gem @version 0.1.0
* Initial release, splitting code from 'azure' gem to its own separate gem for core.
