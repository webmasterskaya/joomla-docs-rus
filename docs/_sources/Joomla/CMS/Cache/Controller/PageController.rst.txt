----------------------------------------------
Joomla\\CMS\\Cache\\Controller\\PageController
----------------------------------------------

.. php:namespace: Joomla\\CMS\\Cache\\Controller

.. php:class:: PageController

    Joomla! Cache page type object

    .. php:attr:: _id

        :type: integer

        :scope: protected

        ID property for the cache page object.

    .. php:attr:: _group

        :type: string

        :scope: protected

        Cache group

    .. php:attr:: _locktest

        :type: \stdClass

        :scope: protected

        Cache lock test

    .. php:attr:: cache

        :type: Cache

        Cache object

    .. php:attr:: options

        :type: array

        Array of options

    .. php:method:: get($id = false, $group = 'page')

        Get the cached page data

        :param $id:
        :param $group:
        :returns: mixed Boolean false on no result, cached object otherwise

    .. php:method:: store($data, $id, $group = null, $wrkarounds = true)

        Stop the cache buffer and store the cached data

        :param $data:
        :param $id:
        :param $group:
        :param $wrkarounds:
        :returns: boolean

    .. php:method:: _makeId()

        Generate a page cache id

        :returns: string MD5 Hash

    .. php:method:: _noChange()

        There is no change in page data so send an unmodified header and die
        gracefully

        :returns: void

    .. php:method:: _setEtag($etag)

        Set the ETag header in the response

        :param $etag:
        :returns: void

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
