-----------------------------------------
Joomla\\CMS\\Utility\\BufferStreamHandler
-----------------------------------------

.. php:namespace: Joomla\\CMS\\Utility

.. php:class:: BufferStreamHandler

    Generic Buffer stream handler

    This class provides a generic buffer stream.  It can be used to store/retrieve/manipulate string buffers with the standard PHP filesystem I/O methods.

    .. php:attr:: position

        :type: integer

        Stream position

    .. php:attr:: name

        :type: string

        Buffer name

    .. php:attr:: buffers

        :type: array

        Buffer hash

    .. php:method:: stream_register()

        Function to register the stream wrapper

        :returns: void

    .. php:method:: stream_open($path, $mode, $options, $opened_path)

        Function to open file or url

        :param $path:
        :param $mode:
        :param $options:
        :param $opened_path:
        :returns: boolean

    .. php:method:: stream_read($count)

        Read stream

        :param $count:
        :returns: mixed The data from the stream up to the specified number of bytes (all data if the total number of bytes in the stream is less than $count. Null if the stream is empty.

    .. php:method:: stream_write($data)

        Write stream

        :param $data:
        :returns: integer

    .. php:method:: stream_tell()

        Function to get the current position of the stream

        :returns: integer

    .. php:method:: stream_eof()

        Function to test for end of file pointer

        :returns: boolean True if the pointer is at the end of the stream

    .. php:method:: stream_seek($offset, $whence)

        The read write position updates in response to $offset and $whence

        :param $offset:
        :param $whence:
        :returns: boolean True if updated

    .. php:method:: seek_set($offset)

        Set the position to the offset

        :param $offset:
        :returns: boolean

    .. php:method:: seek_cur($offset)

        Adds the offset to current position

        :param $offset:
        :returns: boolean

    .. php:method:: seek_end($offset)

        Sets the position to the end of the current buffer + offset

        :param $offset:
        :returns: boolean
