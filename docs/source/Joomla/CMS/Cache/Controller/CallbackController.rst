--------------------------------------------------
Joomla\\CMS\\Cache\\Controller\\CallbackController
--------------------------------------------------

.. php:namespace: Joomla\\CMS\\Cache\\Controller

.. php:class:: CallbackController

    Joomla! Cache callback type object

    .. php:attr:: cache

        :type: Cache

        Cache object

    .. php:attr:: options

        :type: array

        Array of options

    .. php:method:: call()

        Executes a cacheable callback if not found in cache else returns cached
        output and result

        Since arguments to this function are read with func_get_args you can pass
        any number of arguments to this method as long as the first argument
        passed is the callback definition.

        The callback definition can be in several forms:
        - Standard PHP Callback array see <https://www.php.net/callback>
        [recommended]
        - Function name as a string eg. 'foo' for function foo()
        - Static method name as a string eg. 'MyClass::myMethod' for method
        myMethod() of class MyClass

        :returns: mixed Result of the callback

    .. php:method:: get($callback, $args = array(), $id = false, $wrkarounds = false, $woptions = array())

        Executes a cacheable callback if not found in cache else returns cached
        output and result

        :param $callback:
        :param $args:
        :param $id:
        :param $wrkarounds:
        :param $woptions:
        :returns: mixed Result of the callback

    .. php:method:: _makeId($callback, $args)

        Generate a callback cache ID

        :param $callback:
        :param $args:
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
