-------------------------------
Joomla\\CMS\\Filesystem\\Folder
-------------------------------

.. php:namespace: Joomla\\CMS\\Filesystem

.. php:class:: Folder

    A Folder handling class

    .. php:method:: copy($src, $dest, $path = '', $force = false, $use_streams = false)

        Copy a folder.

        :param $src:
        :param $dest:
        :param $path:
        :param $force:
        :param $use_streams:
        :returns: boolean True on success.

    .. php:method:: create($path = '', $mode = 0755)

        Create a folder -- and all necessary parent folders.

        :param $path:
        :param $mode:
        :returns: boolean True if successful.

    .. php:method:: delete($path)

        Delete a folder.

        :param $path:
        :returns: boolean True on success.

    .. php:method:: move($src, $dest, $path = '', $use_streams = false)

        Moves a folder.

        :param $src:
        :param $dest:
        :param $path:
        :param $use_streams:
        :returns: mixed Error message on false or boolean true on success.

    .. php:method:: exists($path)

        Wrapper for the standard file_exists function

        :param $path:
        :returns: boolean True if path is a folder

    .. php:method:: files($path, $filter = '.', $recurse = false, $full = false, $exclude = array('.svn', 'CVS', '.DS_Store', '__MACOSX'), $excludefilter = array('^\..*', '.*~'), $naturalSort = false)

        Utility function to read the files in a folder.

        :param $path:
        :param $filter:
        :param $recurse:
        :param $full:
        :param $exclude:
        :param $excludefilter:
        :param $naturalSort:
        :returns: array Files in the given folder.

    .. php:method:: folders($path, $filter = '.', $recurse = false, $full = false, $exclude = array('.svn', 'CVS', '.DS_Store', '__MACOSX'), $excludefilter = array('^\..*'))

        Utility function to read the folders in a folder.

        :param $path:
        :param $filter:
        :param $recurse:
        :param $full:
        :param $exclude:
        :param $excludefilter:
        :returns: array Folders in the given folder.

    .. php:method:: _items($path, $filter, $recurse, $full, $exclude, $excludefilter_string, $findfiles)

        Function to read the files/folders in a folder.

        :param $path:
        :param $filter:
        :param $recurse:
        :param $full:
        :param $exclude:
        :param $excludefilter_string:
        :param $findfiles:
        :returns: array Files.

    .. php:method:: listFolderTree($path, $filter, $maxLevel = 3, $level = 0, $parent = 0)

        Lists folder in format suitable for tree display.

        :param $path:
        :param $filter:
        :param $maxLevel:
        :param $level:
        :param $parent:
        :returns: array Folders in the given folder.

    .. php:method:: makeSafe($path)

        Makes path name safe to use.

        :param $path:
        :returns: string The sanitised string.
