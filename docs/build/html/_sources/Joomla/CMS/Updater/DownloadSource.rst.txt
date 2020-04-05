------------------------------------
Joomla\\CMS\\Updater\\DownloadSource
------------------------------------

.. php:namespace: Joomla\\CMS\\Updater

.. php:class:: DownloadSource

    Data object representing a download source given as part of an update's `<downloads>` element

    .. php:const:: FORMAT_TAR_BZIP

        Defines a BZIP2 download package

    .. php:const:: FORMAT_TAR_GZ

        Defines a TGZ download package

    .. php:const:: FORMAT_ZIP

        Defines a ZIP download package

    .. php:const:: TYPE_FULL

        Defines a full package download type

    .. php:const:: TYPE_PATCH

        Defines a patch package download type

    .. php:const:: TYPE_UPGRADE

        Defines an upgrade package download type

    .. php:attr:: type

        :type: string

        The download type

    .. php:attr:: format

        :type: string

        The download file's format

    .. php:attr:: url

        :type: string

        The URL to retrieve the package from
