----------------------------------------------
Joomla\\CMS\\Filesystem\\Streams\\StreamString
----------------------------------------------

.. php:namespace: Joomla\\CMS\\Filesystem\\Streams

.. php:class:: StreamString

    String Stream Wrapper

    This class allows you to use a PHP string in the same way that you would normally use a regular stream wrapper

    .. php:attr:: currentString

        :type: string

        :scope: protected

        The current string

    .. php:attr:: path

        :type: string

        :scope: protected

        The path

    .. php:attr:: mode

        :type: string

        :scope: protected

        The mode

    .. php:attr:: options

        :type: string

        :scope: protected

        Enter description here ...

    .. php:attr:: openedPath

        :type: string

        :scope: protected

        Enter description here ...

    .. php:attr:: pos

        :type: integer

        :scope: protected

        Current position

    .. php:attr:: len

        :type: string

        :scope: protected

        Length of the string

    .. php:attr:: stat

        :type: array

        :scope: protected

        Statistics for a file

    .. php:method:: stream_open($path, $mode, $options, $opened_path)

        Method to open a file or URL.

        :param $path:
        :param $mode:
        :param $options:
        :param $opened_path:
        :returns: boolean

    .. php:method:: stream_stat()

        Method to retrieve information from a file resource

        :returns: array

    .. php:method:: url_stat($path, $flags = 0)

        Method to retrieve information about a file.

        :param $path:
        :param $flags:
        :returns: array

    .. php:method:: stream_read($count)

        Method to read a given number of bytes starting at the current position
        and moving to the end of the string defined by the current position plus
        the
        given number.

        :param $count:
        :returns: void

    .. php:method:: stream_write($data)

        Stream write, always returning false.

        :param $data:
        :returns: boolean

    .. php:method:: stream_tell()

        Method to get the current position

        :returns: integer The position

    .. php:method:: stream_eof()

        End of field check

        :returns: boolean True if at end of field.

    .. php:method:: stream_seek($offset, $whence)

        Stream offset

        :param $offset:
        :param $whence:
        :returns: boolean True on success.

    .. php:method:: stream_flush()

        Stream flush, always returns true.

        :returns: boolean
