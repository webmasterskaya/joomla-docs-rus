---------------------------------------------
Joomla\\CMS\\Http\\Transport\\SocketTransport
---------------------------------------------

.. php:namespace: Joomla\\CMS\\Http\\Transport

.. php:class:: SocketTransport

    HTTP transport class for using sockets directly.

    .. php:attr:: connections

        :type: array

        :scope: protected

    .. php:attr:: options

        :type: Registry

        :scope: protected

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

    .. php:method:: getResponse($content)

        Method to get a response object from a server response.

        :param $content:
        :returns: Response

    .. php:method:: connect(Uri $uri, $timeout = null)

        Method to connect to a server and get the resource.

        :type $uri: Uri
        :param $uri:
        :param $timeout:
        :returns: resource Socket connection resource.

    .. php:method:: isSupported()

        Method to check if http transport socket available for use

        :returns: boolean True if available else false
