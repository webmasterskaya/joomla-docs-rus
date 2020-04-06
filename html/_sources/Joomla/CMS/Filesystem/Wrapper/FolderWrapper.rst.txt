-----------------------------------------------
Joomla\\CMS\\Filesystem\\Wrapper\\FolderWrapper
-----------------------------------------------

.. php:namespace: Joomla\\CMS\\Filesystem\\Wrapper

.. php:class:: FolderWrapper

    Wrapper class for Folder

    .. php:method:: copy($src, $dest, $path = '', $force = false, $use_streams = false)

        Helper wrapper method for copy

        :param $src:
        :param $dest:
        :param $path:
        :param $force:
        :param $use_streams:
        :returns: boolean True on success.

    .. php:method:: create($path = '', $mode = 493)

        Helper wrapper method for create

        :param $path:
        :param $mode:
        :returns: boolean True if successful.

    .. php:method:: delete($path)

        Helper wrapper method for delete

        :param $path:
        :returns: boolean True on success.

    .. php:method:: move($src, $dest, $path = '', $use_streams = false)

        Helper wrapper method for move

        :param $src:
        :param $dest:
        :param $path:
        :param $use_streams:
        :returns: mixed Error message on false or boolean true on success.

    .. php:method:: exists($path)

        Helper wrapper method for exists

        :param $path:
        :returns: boolean True if path is a folder.

    .. php:method:: files($path, $filter = '.', $recurse = false, $full = false, $exclude = array('.svn', 'CVS', '.DS_Store', '__MACOSX'), $excludefilter = array('^\..*', '.*~'), $naturalSort = false)

        Helper wrapper method for files

        :param $path:
        :param $filter:
        :param $recurse:
        :param $full:
        :param $exclude:
        :param $excludefilter:
        :param $naturalSort:
        :returns: array Files in the given folder.

    .. php:method:: folders($path, $filter = '.', $recurse = false, $full = false, $exclude = array('.svn', 'CVS', '.DS_Store', '__MACOSX'), $excludefilter = array('^\..*'))

        Helper wrapper method for folders

        :param $path:
        :param $filter:
        :param $recurse:
        :param $full:
        :param $exclude:
        :param $excludefilter:
        :returns: array Folders in the given folder.

    .. php:method:: listFolderTree($path, $filter, $maxLevel = 3, $level = 0, $parent = 0)

        Helper wrapper method for listFolderTree

        :param $path:
        :param $filter:
        :param $maxLevel:
        :param $level:
        :param $parent:
        :returns: array Folders in the given folder.

    .. php:method:: makeSafe($path)

        Helper wrapper method for makeSafe

        :param $path:
        :returns: string The sanitised string
