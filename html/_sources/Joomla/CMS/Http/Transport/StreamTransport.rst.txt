---------------------------------------------
Joomla\\CMS\\Http\\Transport\\StreamTransport
---------------------------------------------

.. php:namespace: Joomla\\CMS\\Http\\Transport

.. php:class:: StreamTransport

    HTTP transport class for using PHP streams.

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

    .. php:method:: getResponse($headers, $body)

        Method to get a response object from a server response.

        :param $headers:
        :param $body:
        :returns: Response

    .. php:method:: isSupported()

        Method to check if http transport stream available for use

        :returns: boolean true if available else false
