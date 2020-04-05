---------------------
Joomla\\CMS\\Uri\\Uri
---------------------

.. php:namespace: Joomla\\CMS\\Uri

.. php:class:: Uri

    JUri Class

    This class serves two purposes. First it parses a URI and provides a common interface for the Joomla Platform to access and manipulate a URI.  Second it obtains the URI of the current executing script from the server regardless of server.

    .. php:attr:: instances

        :type: Uri[]

        :scope: protected

    .. php:attr:: base

        :type: array

        :scope: protected

    .. php:attr:: root

        :type: array

        :scope: protected

    .. php:attr:: current

        :type: string

        :scope: protected

    .. php:method:: getInstance($uri = 'SERVER')

        Returns the global JUri object, only creating it if it doesn't already
        exist.

        :param $uri:
        :returns: Uri The URI object.

    .. php:method:: base($pathonly = false)

        Returns the base URI for the request.

        :param $pathonly:
        :returns: string The base URI string

    .. php:method:: root($pathonly = false, $path = null)

        Returns the root URI for the request.

        :param $pathonly:
        :param $path:
        :returns: string The root URI string.

    .. php:method:: current()

        Returns the URL for the request, minus the query.

        :returns: string

    .. php:method:: reset()

        Method to reset class static members for testing and other various issues.

        :returns: void

    .. php:method:: setPath($path)

        Set the URI path string. Note we keep this method here so it uses the old
        _cleanPath function

        :param $path:
        :returns: void

    .. php:method:: isInternal($url)

        Checks if the supplied URL is internal

        :param $url:
        :returns: boolean True if Internal.

    .. php:method:: buildQuery($params)

        Build a query from an array (reverse of the PHP parse_str()).

        :param $params:
        :returns: string The resulting query string.

    .. php:method:: parse($uri)

        Parse a given URI and populate the class fields.

        :param $uri:
        :returns: boolean True on success.

    .. php:method:: _cleanPath($path)

        Resolves //, ../ and ./ from a path and returns
        the result. Eg:

        /foo/bar/../boo.php    => /foo/boo.php
        /foo/bar/../../boo.php => /boo.php
        /foo/bar/.././/boo.php => /foo/boo.php

        :param $path:
        :returns: string Cleaned and resolved URI path.
