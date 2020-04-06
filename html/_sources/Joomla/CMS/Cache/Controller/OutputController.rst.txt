------------------------------------------------
Joomla\\CMS\\Cache\\Controller\\OutputController
------------------------------------------------

.. php:namespace: Joomla\\CMS\\Cache\\Controller

.. php:class:: OutputController

    Joomla Cache output type object

    .. php:attr:: _id

        :type: string

        :scope: protected

        Cache data ID

    .. php:attr:: _group

        :type: string

        :scope: protected

        Cache data group

    .. php:attr:: _locktest

        :type: \stdClass

        :scope: protected

        Object to test locked state

    .. php:attr:: cache

        :type: Cache

        Cache object

    .. php:attr:: options

        :type: array

        Array of options

    .. php:method:: start($id, $group = null)

        Start the cache

        :param $id:
        :param $group:
        :returns: boolean

    .. php:method:: end()

        Stop the cache buffer and store the cached data

        :returns: boolean True if the cache data was stored

    .. php:method:: get($id, $group = null)

        Get stored cached data by ID and group

        :param $id:
        :param $group:
        :returns: mixed Boolean false on no result, cached object otherwise

    .. php:method:: store($data, $id, $group = null, $wrkarounds = true)

        Store data to cache by ID and group

        :param $data:
        :param $id:
        :param $group:
        :param $wrkarounds:
        :returns: boolean True if cache stored

    .. php:method:: __construct($options)

        Constructor

        :param $options:

    .. php:method:: __call($name, $arguments)

        Magic method to proxy CacheController method calls to Cache

        :param $name:
        :param $arguments:
        :returns: mixed

    .. php:method:: getInstance($type = 'output', $options = array())

        Returns a reference to a cache adapter object, always creating it

        :param $type:
        :param $options:
        :returns: CacheController

    .. php:method:: addIncludePath($path = '')

        Add a directory where Cache should search for controllers. You may either
        pass a string or an array of directories.

        :param $path:
        :returns: array An array with directory elements
