---------------------------------------------
Joomla\\CMS\\Filesystem\\Wrapper\\PathWrapper
---------------------------------------------

.. php:namespace: Joomla\\CMS\\Filesystem\\Wrapper

.. php:class:: PathWrapper

    Wrapper class for Path

    .. php:method:: canChmod($path)

        Helper wrapper method for canChmod

        :param $path:
        :returns: boolean True if path can have mode changed.

    .. php:method:: setPermissions($path, $filemode = '0644', $foldermode = '0755')

        Helper wrapper method for setPermissions

        :param $path:
        :param $filemode:
        :param $foldermode:
        :returns: boolean True if successful [one fail means the whole operation failed].

    .. php:method:: getPermissions($path)

        Helper wrapper method for getPermissions

        :param $path:
        :returns: string Filesystem permissions.

    .. php:method:: check($path)

        Helper wrapper method for check

        :param $path:
        :returns: string A cleaned version of the path or exit on error.

    .. php:method:: clean($path, $ds = DIRECTORY_SEPARATOR)

        Helper wrapper method for clean

        :param $path:
        :param $ds:
        :returns: string The cleaned path.

    .. php:method:: isOwner($path)

        Helper wrapper method for isOwner

        :param $path:
        :returns: boolean True if the php script owns the path passed.

    .. php:method:: find($paths, $file)

        Helper wrapper method for find

        :param $paths:
        :param $file:
        :returns: mixed The full path and file name for the target file, or boolean false if the file is not found in any of the paths.
