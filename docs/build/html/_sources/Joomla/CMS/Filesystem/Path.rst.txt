-----------------------------
Joomla\\CMS\\Filesystem\\Path
-----------------------------

.. php:namespace: Joomla\\CMS\\Filesystem

.. php:class:: Path

    A Path handling class

    .. php:method:: canChmod($path)

        Checks if a path's permissions can be changed.

        :param $path:
        :returns: boolean True if path can have mode changed.

    .. php:method:: setPermissions($path, $filemode = '0644', $foldermode = '0755')

        Chmods files and directories recursively to given permissions.

        :param $path:
        :param $filemode:
        :param $foldermode:
        :returns: boolean True if successful [one fail means the whole operation failed].

    .. php:method:: getPermissions($path)

        Get the permissions of the file/folder at a given path.

        :param $path:
        :returns: string Filesystem permissions.

    .. php:method:: check($path)

        Checks for snooping outside of the file system root.

        :param $path:
        :returns: string A cleaned version of the path or exit on error.

    .. php:method:: clean($path, $ds = DIRECTORY_SEPARATOR)

        Function to strip additional / or \ in a path name.

        :param $path:
        :param $ds:
        :returns: string The cleaned path.

    .. php:method:: isOwner($path)

        Method to determine if script owns the path.

        :param $path:
        :returns: boolean True if the php script owns the path passed.

    .. php:method:: find($paths, $file)

        Searches the directory paths for a given file.

        :param $paths:
        :param $file:
        :returns: mixed The full path and file name for the target file, or boolean false if the file is not found in any of the paths.
