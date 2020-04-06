-----------------------------------------
Joomla\\CMS\\Filesystem\\FilesystemHelper
-----------------------------------------

.. php:namespace: Joomla\\CMS\\Filesystem

.. php:class:: FilesystemHelper

    File system helper

    Holds support functions for the filesystem, particularly the stream

    .. php:method:: remotefsize($url)

        Remote file size function for streams that don't support it

        :param $url:
        :returns: mixed

    .. php:method:: ftpChmod($url, $mode)

        Quick FTP chmod

        :param $url:
        :param $mode:
        :returns: mixed

    .. php:method:: getWriteModes()

        Modes that require a write operation

        :returns: array

    .. php:method:: getSupported()

        Stream and Filter Support Operations

        Returns the supported streams, in addition to direct file access Also
        includes Joomla! streams as well as PHP streams

        :returns: array Streams

    .. php:method:: getTransports()

        Returns a list of transports

        :returns: array

    .. php:method:: getFilters()

        Returns a list of filters

        :returns: array

    .. php:method:: getJStreams()

        Returns a list of J! streams

        :returns: array

    .. php:method:: isJoomlaStream($streamname)

        Determine if a stream is a Joomla stream.

        :param $streamname:
        :returns: boolean True for a Joomla Stream

    .. php:method:: fileUploadMaxSize($unit_output = true)

        Calculates the maximum upload file size and returns string with unit or
        the size in bytes

        Call it with JFilesystemHelper::fileUploadMaxSize();

        :param $unit_output:
        :returns: float|string The maximum upload size of files with the appropriate unit or in bytes

    .. php:method:: parseSize($size)

        Returns the size in bytes without the unit for the comparison

        :param $size:
        :returns: float The size in bytes without the unit

    .. php:method:: parseSizeUnit($max_size)

        Creates the rounded size of the size with the appropriate unit

        :param $max_size:
        :returns: string String with the size and the appropriate unit
