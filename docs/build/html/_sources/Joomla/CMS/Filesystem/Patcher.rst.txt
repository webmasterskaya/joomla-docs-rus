--------------------------------
Joomla\\CMS\\Filesystem\\Patcher
--------------------------------

.. php:namespace: Joomla\\CMS\\Filesystem

.. php:class:: Patcher

    A Unified Diff Format Patcher class

    .. php:const:: SRC_FILE

        Regular expression for searching source files

    .. php:const:: DST_FILE

        Regular expression for searching destination files

    .. php:const:: HUNK

        Regular expression for searching hunks of differences

    .. php:const:: SPLIT

        Regular expression for splitting lines

    .. php:attr:: sources

        :type: array

        :scope: protected

    .. php:attr:: destinations

        :type: array

        :scope: protected

    .. php:attr:: removals

        :type: array

        :scope: protected

    .. php:attr:: patches

        :type: array

        :scope: protected

    .. php:attr:: instance

        :type: array

        :scope: protected

    .. php:method:: __construct()

        Constructor

        The constructor is protected to force the use of
        FilesystemPatcher::getInstance()

    .. php:method:: getInstance()

        Method to get a patcher

        :returns: FilesystemPatcher an instance of the patcher

    .. php:method:: reset()

        Reset the pacher

        :returns: FilesystemPatcher This object for chaining

    .. php:method:: apply()

        Apply the patches

        :returns: integer The number of files patched

    .. php:method:: addFile($filename, $root = JPATH_BASE, $strip = 0)

        Add a unified diff file to the patcher

        :param $filename:
        :param $root:
        :param $strip:
        :returns: FilesystemPatcher $this for chaining

    .. php:method:: add($udiff, $root = JPATH_BASE, $strip = 0)

        Add a unified diff string to the patcher

        :param $udiff:
        :param $root:
        :param $strip:
        :returns: FilesystemPatcher $this for chaining

    .. php:method:: splitLines($data)

        Separate CR or CRLF lines

        :param $data:
        :returns: array The lines of the inputdestination file

    .. php:method:: findHeader($lines, $src, $dst)

        Find the diff header

        The internal array pointer of $lines is on the next line after the finding

        :param $lines:
        :param $src:
        :param $dst:
        :returns: boolean TRUE in case of success, FALSE in case of failure

    .. php:method:: findHunk($lines, $src_line, $src_size, $dst_line, $dst_size)

        Find the next hunk of difference

        The internal array pointer of $lines is on the next line after the finding

        :param $lines:
        :param $src_line:
        :param $src_size:
        :param $dst_line:
        :param $dst_size:
        :returns: boolean TRUE in case of success, false in case of failure

    .. php:method:: applyHunk($lines, $src, $dst, $src_line, $src_size, $dst_line, $dst_size)

        Apply the patch

        :param $lines:
        :param $src:
        :param $dst:
        :param $src_line:
        :param $src_size:
        :param $dst_line:
        :param $dst_size:
        :returns: void

    .. php:method:: getSource($src)

        Get the lines of a source file

        :param $src:
        :returns: array The lines of the source file

    .. php:method:: getDestination($dst, $src)

        Get the lines of a destination file

        :param $dst:
        :param $src:
        :returns: array The lines of the destination file
