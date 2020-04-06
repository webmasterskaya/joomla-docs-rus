-------------------------------------------
Joomla\\CMS\\Http\\Transport\\CurlTransport
-------------------------------------------

.. php:namespace: Joomla\\CMS\\Http\\Transport

.. php:class:: CurlTransport

    HTTP transport class for using cURL.

    .. php:attr:: options

        :type: Registry

        :scope: protected

    .. php:method:: __construct(Registry $options)

        Constructor. CURLOPT_FOLLOWLOCATION must be disabled when open_basedir or
        safe_mode are enabled.

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

    .. php:method:: getResponse($content, $info)

        Method to get a response object from a server response.

        :param $content:
        :param $info:
        :returns: Response

    .. php:method:: isSupported()

        Method to check if HTTP transport cURL is available for use

        :returns: boolean true if available, else false

    .. php:method:: redirectsAllowed()

        Check if redirects are allowed

        :returns: boolean
