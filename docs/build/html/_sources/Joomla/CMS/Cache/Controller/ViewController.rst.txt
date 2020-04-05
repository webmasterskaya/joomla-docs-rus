----------------------------------------------
Joomla\\CMS\\Cache\\Controller\\ViewController
----------------------------------------------

.. php:namespace: Joomla\\CMS\\Cache\\Controller

.. php:class:: ViewController

    Joomla! Cache view type object

    .. php:attr:: cache

        :type: Cache

        Cache object

    .. php:attr:: options

        :type: array

        Array of options

    .. php:method:: get($view, $method = 'display', $id = false, $wrkarounds = true)

        Get the cached view data

        :param $view:
        :param $method:
        :param $id:
        :param $wrkarounds:
        :returns: boolean True if the cache is hit (false else)

    .. php:method:: _makeId($view, $method)

        Generate a view cache ID.

        :param $view:
        :param $method:
        :returns: string MD5 Hash

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

    .. php:method:: store($data, $id, $group = null, $wrkarounds = true)

        Store data to cache by ID and group

        :param $data:
        :param $id:
        :param $group:
        :param $wrkarounds:
        :returns: boolean True if cache stored
