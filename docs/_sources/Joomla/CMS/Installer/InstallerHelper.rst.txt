---------------------------------------
Joomla\\CMS\\Installer\\InstallerHelper
---------------------------------------

.. php:namespace: Joomla\\CMS\\Installer

.. php:class:: InstallerHelper

    Installer helper class

    .. php:const:: HASH_NOT_VALIDATED

        Hash not validated identifier.

    .. php:const:: HASH_VALIDATED

        Hash validated identifier.

    .. php:const:: HASH_NOT_PROVIDED

        Hash not provided identifier.

    .. php:method:: downloadPackage($url, $target = false)

        Downloads a package

        :param $url:
        :param $target:
        :returns: string|boolean Path to downloaded package or boolean false on failure

    .. php:method:: unpack($p_filename, $alwaysReturnArray = false)

        Unpacks a file and verifies it as a Joomla element package
        Supports .gz .tar .tar.gz and .zip

        :param $p_filename:
        :param $alwaysReturnArray:
        :returns: array|boolean Array on success or boolean false on failure

    .. php:method:: detectType($p_dir)

        Method to detect the extension type from a package directory

        :param $p_dir:
        :returns: mixed Extension type string or boolean false on fail

    .. php:method:: getFilenameFromUrl($url)

        Gets a file name out of a url

        :param $url:
        :returns: string Clean version of the filename or a unique id

    .. php:method:: cleanupInstall($package, $resultdir)

        Clean up temporary uploaded package and unpacked extension

        :param $package:
        :param $resultdir:
        :returns: boolean True on success

    .. php:method:: splitSql($query)

        Splits contents of a sql file into array of discreet queries.
        Queries need to be delimited with end of statement marker ';'

        :param $query:
        :returns: array Array of queries

    .. php:method:: isChecksumValid($packagefile, $updateObject)

        Return the result of the checksum of a package with the
        SHA256/SHA384/SHA512 tags in the update server manifest

        :param $packagefile:
        :param $updateObject:
        :returns: integer one if the hashes match, zero if hashes doesn't match, two if hashes not found
