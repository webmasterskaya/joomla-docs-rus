---------------------------------------------
Joomla\\CMS\\Filesystem\\Wrapper\\FileWrapper
---------------------------------------------

.. php:namespace: Joomla\\CMS\\Filesystem\\Wrapper

.. php:class:: FileWrapper

    Wrapper class for File

    .. php:method:: getExt($file)

        Helper wrapper method for getExt

        :param $file:
        :returns: string The file extension.

    .. php:method:: stripExt($file)

        Helper wrapper method for stripExt

        :param $file:
        :returns: string The file name without the extension.

    .. php:method:: makeSafe($file)

        Helper wrapper method for makeSafe

        :param $file:
        :returns: string The sanitised string.

    .. php:method:: copy($src, $dest, $path = null, $use_streams = false)

        Helper wrapper method for copy

        :param $src:
        :param $dest:
        :param $path:
        :param $use_streams:
        :returns: boolean True on success.

    .. php:method:: delete($file)

        Helper wrapper method for delete

        :param $file:
        :returns: boolean True on success.

    .. php:method:: move($src, $dest, $path = '', $use_streams = false)

        Helper wrapper method for move

        :param $src:
        :param $dest:
        :param $path:
        :param $use_streams:
        :returns: boolean True on success.

    .. php:method:: read($filename, $incpath = false, $amount = 0, $chunksize = 8192, $offset = 0)

        Helper wrapper method for read

        :param $filename:
        :param $incpath:
        :param $amount:
        :param $chunksize:
        :param $offset:
        :returns: mixed Returns file contents or boolean False if failed.

    .. php:method:: write($file, $buffer, $use_streams = false)

        Helper wrapper method for write

        :param $file:
        :param $buffer:
        :param $use_streams:
        :returns: boolean True on success.

    .. php:method:: upload($src, $dest, $use_streams = false)

        Helper wrapper method for upload

        :param $src:
        :param $dest:
        :param $use_streams:
        :returns: boolean True on success.

    .. php:method:: exists($file)

        Helper wrapper method for exists

        :param $file:
        :returns: boolean True if path is a file.

    .. php:method:: getName($file)

        Helper wrapper method for getName

        :param $file:
        :returns: string filename.
