----------------------------------------
Joomla\\CMS\\Cache\\Storage\\ApcuStorage
----------------------------------------

.. php:namespace: Joomla\\CMS\\Cache\\Storage

.. php:class:: ApcuStorage

    APCu cache storage handler

    .. php:attr:: rawname

        :type: string

        :scope: protected

        The raw object name

    .. php:attr:: _now

        :type: integer

        Time that the cache storage handler was instantiated

    .. php:attr:: _lifetime

        :type: integer

        Cache lifetime

    .. php:attr:: _locking

        :type: boolean

        Flag if locking is enabled

    .. php:attr:: _language

        :type: string

        Language code

    .. php:attr:: _application

        :type: string

        Application name

    .. php:attr:: _hash

        :type: string

        Object hash

    .. php:method:: contains($id, $group)

        Check if the cache contains data stored by ID and group

        :param $id:
        :param $group:
        :returns: boolean

    .. php:method:: get($id, $group, $checkTime = true)

        Get cached data by ID and group

        :param $id:
        :param $group:
        :param $checkTime:
        :returns: mixed Boolean false on failure or a cached data object

    .. php:method:: getAll()

        Get all cached data

        :returns: mixed Boolean false on failure or a cached data object

    .. php:method:: store($id, $group, $data)

        Store the data to cache by ID and group

        :param $id:
        :param $group:
        :param $data:
        :returns: boolean

    .. php:method:: remove($id, $group)

        Remove a cached data entry by ID and group

        :param $id:
        :param $group:
        :returns: boolean

    .. php:method:: clean($group, $mode = null)

        Clean cache for a group given a mode.

        group mode    : cleans all cache in the group notgroup mode : cleans all
        cache not in the group

        :param $group:
        :param $mode:
        :returns: boolean

    .. php:method:: gc()

        Garbage collect expired cache data

        :returns: boolean

    .. php:method:: isSupported()

        Test to see if the storage handler is available.

        :returns: boolean

    .. php:method:: lock($id, $group, $locktime)

        Lock cached item

        :param $id:
        :param $group:
        :param $locktime:
        :returns: mixed Boolean false if locking failed or an object containing properties lock and locklooped

    .. php:method:: unlock($id, $group = null)

        Unlock cached item

        :param $id:
        :param $group:
        :returns: boolean

    .. php:method:: __construct($options = array())

        Constructor

        :param $options:

    .. php:method:: getInstance($handler = null, $options = array())

        Returns a cache storage handler object.

        :param $handler:
        :param $options:
        :returns: CacheStorage

    .. php:method:: flush()

        Flush all existing items in storage.

        :returns: boolean

    .. php:method:: test()

        Test to see if the storage handler is available.

        :returns: boolean

    .. php:method:: _getCacheId($id, $group)

        Get a cache ID string from an ID/group pair

        :param $id:
        :param $group:
        :returns: string

    .. php:method:: addIncludePath($path = '')

        Add a directory where CacheStorage should search for handlers. You may
        either pass a string or an array of directories.

        :param $path:
        :returns: array An array with directory elements
