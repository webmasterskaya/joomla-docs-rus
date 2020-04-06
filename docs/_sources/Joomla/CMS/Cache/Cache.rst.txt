-------------------------
Joomla\\CMS\\Cache\\Cache
-------------------------

.. php:namespace: Joomla\\CMS\\Cache

.. php:class:: Cache

    Joomla! Cache base object

    .. php:attr:: _handler

        :type: CacheStorage[]

        Storage handler

    .. php:attr:: _options

        :type: array

        Cache options

    .. php:method:: __construct($options)

        Constructor

        :param $options:

    .. php:method:: getInstance($type = 'output', $options = array())

        Returns a reference to a cache adapter object, always creating it

        :param $type:
        :param $options:
        :returns: CacheController

    .. php:method:: getStores()

        Get the storage handlers

        :returns: array

    .. php:method:: setCaching($enabled)

        Set caching enabled state

        :param $enabled:
        :returns: void

    .. php:method:: getCaching()

        Get caching state

        :returns: boolean

    .. php:method:: setLifeTime($lt)

        Set cache lifetime

        :param $lt:
        :returns: void

    .. php:method:: contains($id, $group = null)

        Check if the cache contains data stored by ID and group

        :param $id:
        :param $group:
        :returns: boolean

    .. php:method:: get($id, $group = null)

        Get cached data by ID and group

        :param $id:
        :param $group:
        :returns: mixed Boolean false on failure or a cached data object

    .. php:method:: getAll()

        Get a list of all cached data

        :returns: mixed Boolean false on failure or an object with a list of cache groups and data

    .. php:method:: store($data, $id, $group = null)

        Store the cached data by ID and group

        :param $data:
        :param $id:
        :param $group:
        :returns: boolean

    .. php:method:: remove($id, $group = null)

        Remove a cached data entry by ID and group

        :param $id:
        :param $group:
        :returns: boolean

    .. php:method:: clean($group = null, $mode = 'group')

        Clean cache for a group given a mode.

        group mode    : cleans all cache in the group notgroup mode : cleans all
        cache not in the group

        :param $group:
        :param $mode:
        :returns: boolean True on success, false otherwise

    .. php:method:: gc()

        Garbage collect expired cache data

        :returns: boolean

    .. php:method:: lock($id, $group = null, $locktime = null)

        Set lock flag on cached item

        :param $id:
        :param $group:
        :param $locktime:
        :returns: \stdClass Object with properties of lock and locklooped

    .. php:method:: unlock($id, $group = null)

        Unset lock flag on cached item

        :param $id:
        :param $group:
        :returns: boolean

    .. php:method:: _getStorage()

        Get the cache storage handler

        :returns: CacheStorage

    .. php:method:: getWorkarounds($data, $options = array())

        Perform workarounds on retrieved cached data

        :param $data:
        :param $options:
        :returns: string Body of cached data

    .. php:method:: setWorkarounds($data, $options = array())

        Create workarounds for data to be cached

        :param $data:
        :param $options:
        :returns: string Data to be cached

    .. php:method:: makeId()

        Create a safe ID for cached data from URL parameters

        :returns: string MD5 encoded cache ID

    .. php:method:: getPlatformPrefix()

        Set a prefix cache key if device calls for separate caching

        :returns: string

    .. php:method:: addIncludePath($path = '')

        Add a directory where Cache should search for handlers. You may either
        pass a string or an array of directories.

        :param $path:
        :returns: array An array with directory elements
