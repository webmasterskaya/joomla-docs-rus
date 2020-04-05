-----------------------------
Joomla\\CMS\\Filesystem\\File
-----------------------------

.. php:namespace: Joomla\\CMS\\Filesystem

.. php:class:: File

    A File handling class

    .. php:method:: getExt($file)

        Gets the extension of a file name

        :param $file:
        :returns: string The file extension

    .. php:method:: stripExt($file)

        Strips the last extension off of a file name

        :param $file:
        :returns: string The file name without the extension

    .. php:method:: makeSafe($file)

        Makes file name safe to use

        :param $file:
        :returns: string The sanitised string

    .. php:method:: copy($src, $dest, $path = null, $use_streams = false)

        Copies a file

        :param $src:
        :param $dest:
        :param $path:
        :param $use_streams:
        :returns: boolean True on success

    .. php:method:: delete($file)

        Delete a file or array of files

        :param $file:
        :returns: boolean True on success

    .. php:method:: move($src, $dest, $path = '', $use_streams = false)

        Moves a file

        :param $src:
        :param $dest:
        :param $path:
        :param $use_streams:
        :returns: boolean True on success

    .. php:method:: read($filename, $incpath = false, $amount = 0, $chunksize = 8192, $offset = 0)

        Read the contents of a file

        :param $filename:
        :param $incpath:
        :param $amount:
        :param $chunksize:
        :param $offset:
        :returns: mixed Returns file contents or boolean False if failed

    .. php:method:: write($file, $buffer, $use_streams = false)

        Write contents to a file

        :param $file:
        :param $buffer:
        :param $use_streams:
        :returns: boolean True on success

    .. php:method:: append($file, $buffer, $use_streams = false)

        Append contents to a file

        :param $file:
        :param $buffer:
        :param $use_streams:
        :returns: boolean True on success

    .. php:method:: upload($src, $dest, $use_streams = false, $allow_unsafe = false, $safeFileOptions = array())

        Moves an uploaded file to a destination folder

        :param $src:
        :param $dest:
        :param $use_streams:
        :param $allow_unsafe:
        :param $safeFileOptions:
        :returns: boolean True on success

    .. php:method:: exists($file)

        Wrapper for the standard file_exists function

        :param $file:
        :returns: boolean True if path is a file

    .. php:method:: getName($file)

        Returns the name, without any path.

        :param $file:
        :returns: string filename
