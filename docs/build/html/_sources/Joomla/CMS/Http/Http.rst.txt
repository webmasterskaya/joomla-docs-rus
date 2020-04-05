-----------------------
Joomla\\CMS\\Http\\Http
-----------------------

.. php:namespace: Joomla\\CMS\\Http

.. php:class:: Http

    HTTP client class.

    .. php:attr:: options

        :type: Registry

        :scope: protected

    .. php:attr:: transport

        :type: TransportInterface

        :scope: protected

    .. php:method:: __construct(Registry $options = null, TransportInterface $transport = null)

        Constructor.

        :type $options: Registry
        :param $options:
        :type $transport: TransportInterface
        :param $transport:

    .. php:method:: getOption($key)

        Get an option from the HTTP client.

        :param $key:
        :returns: mixed The option value.

    .. php:method:: setOption($key, $value)

        Set an option for the HTTP client.

        :param $key:
        :param $value:
        :returns: Http This object for method chaining.

    .. php:method:: options($url, $headers = null, $timeout = null)

        Method to send the OPTIONS command to the server.

        :param $url:
        :param $headers:
        :param $timeout:
        :returns: Response

    .. php:method:: head($url, $headers = null, $timeout = null)

        Method to send the HEAD command to the server.

        :param $url:
        :param $headers:
        :param $timeout:
        :returns: Response

    .. php:method:: get($url, $headers = null, $timeout = null)

        Method to send the GET command to the server.

        :param $url:
        :param $headers:
        :param $timeout:
        :returns: Response

    .. php:method:: post($url, $data, $headers = null, $timeout = null)

        Method to send the POST command to the server.

        :param $url:
        :param $data:
        :param $headers:
        :param $timeout:
        :returns: Response

    .. php:method:: put($url, $data, $headers = null, $timeout = null)

        Method to send the PUT command to the server.

        :param $url:
        :param $data:
        :param $headers:
        :param $timeout:
        :returns: Response

    .. php:method:: delete($url, $headers = null, $timeout = null)

        Method to send the DELETE command to the server.

        :param $url:
        :param $headers:
        :param $timeout:
        :returns: Response

    .. php:method:: trace($url, $headers = null, $timeout = null)

        Method to send the TRACE command to the server.

        :param $url:
        :param $headers:
        :param $timeout:
        :returns: Response

    .. php:method:: patch($url, $data, $headers = null, $timeout = null)

        Method to send the PATCH command to the server.

        :param $url:
        :param $data:
        :param $headers:
        :param $timeout:
        :returns: Response
