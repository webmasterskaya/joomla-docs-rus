-------------------------------------
Joomla\\CMS\\Http\\TransportInterface
-------------------------------------

.. php:namespace: Joomla\\CMS\\Http

.. php:interface:: TransportInterface

    HTTP transport class interface.

    .. php:method:: __construct(Registry $options)

        Constructor.

        :type $options: Registry
        :param $options:

    .. php:method:: request($method, Uri $uri, $data = null, $headers = null, $timeout = null, $userAgent = null)

        Send a request to the server and return a HttpResponse object with the
        response.

        :param $method:
        :type $uri: Uri
        :param $uri:
        :param $data:
        :param $headers:
        :param $timeout:
        :param $userAgent:
        :returns: Response

    .. php:method:: isSupported()

        Method to check if HTTP transport is available for use

        :returns: boolean True if available else false
