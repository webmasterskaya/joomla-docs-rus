----------------------------------------
Joomla\\CMS\\Router\\AdministratorRouter
----------------------------------------

.. php:namespace: Joomla\\CMS\\Router

.. php:class:: AdministratorRouter

    Class to create and parse routes

    .. php:const:: PROCESS_BEFORE

        Mask for the before process stage

    .. php:const:: PROCESS_DURING

        Mask for the during process stage

    .. php:const:: PROCESS_AFTER

        Mask for the after process stage

    .. php:attr:: mode

        :type: integer

        :scope: protected

        The rewrite mode

    .. php:attr:: _mode

        :type: integer

        :scope: protected

        The rewrite mode

    .. php:attr:: vars

        :type: array

        :scope: protected

        An array of variables

    .. php:attr:: _vars

        :type: array

        :scope: protected

        An array of variables

    .. php:attr:: rules

        :type: array

        :scope: protected

        An array of rules

    .. php:attr:: _rules

        :type: array

        :scope: protected

        An array of rules

    .. php:attr:: cache

        :type: array

        :scope: protected

        Caching of processed URIs

    .. php:attr:: instances

        :type: Router[]

        :scope: protected

        Router instances container.

    .. php:method:: parse($uri)

        Function to convert a route to an internal URI.

        :param $uri:
        :returns: array

    .. php:method:: build($url)

        Function to convert an internal URI to a route

        :param $url:
        :returns: Uri The absolute search engine friendly URL

    .. php:method:: __construct($options = array())

        Class constructor

        :param $options:

    .. php:method:: getInstance($client, $options = array())

        Returns the global Router object, only creating it if it
        doesn't already exist.

        :param $client:
        :param $options:
        :returns: Router A Router object.

    .. php:method:: getMode()

        Get the router mode

        :returns: integer

    .. php:method:: setMode($mode)

        Set the router mode

        :param $mode:
        :returns: void

    .. php:method:: setVar($key, $value, $create = true)

        Set a router variable, creating it if it doesn't exist

        :param $key:
        :param $value:
        :param $create:
        :returns: void

    .. php:method:: setVars($vars = array(), $merge = true)

        Set the router variable array

        :param $vars:
        :param $merge:
        :returns: void

    .. php:method:: getVar($key)

        Get a router variable

        :param $key:
        :returns: mixed Value of the variable

    .. php:method:: getVars()

        Get the router variable array

        :returns: array An associative array of router variables

    .. php:method:: attachBuildRule($callback, $stage = self::PROCESS_DURING)

        Attach a build rule

        :param $callback:
        :param $stage:
        :returns: void

    .. php:method:: attachParseRule($callback, $stage = self::PROCESS_DURING)

        Attach a parse rule

        :param $callback:
        :param $stage:
        :returns: void

    .. php:method:: _parseRawRoute($uri)

        Function to convert a raw route to an internal URI

        :param $uri:
        :returns: boolean

    .. php:method:: parseRawRoute($uri)

        Function to convert a raw route to an internal URI

        :param $uri:
        :returns: array Array of variables

    .. php:method:: _parseSefRoute($uri)

        Function to convert a sef route to an internal URI

        :param $uri:
        :returns: string Internal URI

    .. php:method:: parseSefRoute($uri)

        Function to convert a sef route to an internal URI

        :param $uri:
        :returns: array Array of variables

    .. php:method:: _buildRawRoute($uri)

        Function to build a raw route

        :param $uri:
        :returns: string Raw Route

    .. php:method:: buildRawRoute($uri)

        Function to build a raw route

        :param $uri:
        :returns: string Raw Route

    .. php:method:: _buildSefRoute($uri)

        Function to build a sef route

        :param $uri:
        :returns: string The SEF route

    .. php:method:: buildSefRoute($uri)

        Function to build a sef route

        :param $uri:
        :returns: string The SEF route

    .. php:method:: _processParseRules($uri)

        Process the parsed router variables based on custom defined rules

        :param $uri:
        :returns: array The array of processed URI variables

    .. php:method:: processParseRules($uri, $stage = self::PROCESS_DURING)

        Process the parsed router variables based on custom defined rules

        :param $uri:
        :param $stage:
        :returns: array The array of processed URI variables

    .. php:method:: _processBuildRules($uri)

        Process the build uri query data based on custom defined rules

        :param $uri:
        :returns: void

    .. php:method:: processBuildRules($uri, $stage = self::PROCESS_DURING)

        Process the build uri query data based on custom defined rules

        :param $uri:
        :param $stage:
        :returns: void

    .. php:method:: _createUri($url)

        Create a uri based on a full or partial URL string

        :param $url:
        :returns: \JUri

    .. php:method:: createUri($url)

        Create a uri based on a full or partial URL string

        :param $url:
        :returns: \JUri

    .. php:method:: _encodeSegments($segments)

        Encode route segments

        :param $segments:
        :returns: array Array of encoded route segments

    .. php:method:: encodeSegments($segments)

        Encode route segments

        :param $segments:
        :returns: array Array of encoded route segments

    .. php:method:: _decodeSegments($segments)

        Decode route segments

        :param $segments:
        :returns: array Array of decoded route segments

    .. php:method:: decodeSegments($segments)

        Decode route segments

        :param $segments:
        :returns: array Array of decoded route segments
