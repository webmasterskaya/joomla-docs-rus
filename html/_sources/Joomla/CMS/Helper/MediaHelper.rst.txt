--------------------------------
Joomla\\CMS\\Helper\\MediaHelper
--------------------------------

.. php:namespace: Joomla\\CMS\\Helper

.. php:class:: MediaHelper

    Media helper class

    .. php:method:: isImage($fileName)

        Checks if the file is an image

        :param $fileName:
        :returns: boolean

    .. php:method:: getTypeIcon($fileName)

        Gets the file extension for purposed of using an icon

        :param $fileName:
        :returns: string File extension to determine icon

    .. php:method:: getMimeType($file, $isImage = false)

        Get the Mime type

        :param $file:
        :param $isImage:
        :returns: mixed the mime type detected false on error

    .. php:method:: checkMimeType($mime, $component = 'com_media')

        Checks the Mime type

        :param $mime:
        :param $component:
        :returns: boolean true if mime type checking is disabled or it passes the checks else false

    .. php:method:: canUpload($file, $component = 'com_media')

        Checks if the file can be uploaded

        :param $file:
        :param $component:
        :returns: boolean

    .. php:method:: imageResize($width, $height, $target)

        Calculate the size of a resized image

        :param $width:
        :param $height:
        :param $target:
        :returns: array The new width and height

    .. php:method:: countFiles($dir)

        Counts the files and directories in a directory that are not php or html
        files.

        :param $dir:
        :returns: array The number of media files and directories in the given directory

    .. php:method:: toBytes($val)

        Small helper function that properly converts any
        configuration options to their byte representation.

        :param $val:
        :returns: integer The calculated bytes value from the input.
