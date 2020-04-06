------------------------------
Joomla\\CMS\\Http\\HttpFactory
------------------------------

.. php:namespace: Joomla\\CMS\\Http

.. php:class:: HttpFactory

    HTTP factory class.

    .. php:method:: getHttp(Registry $options = null, $adapters = null)

        method to receive Http instance.

        :type $options: Registry
        :param $options:
        :param $adapters:
        :returns: Http Joomla Http class

    .. php:method:: getAvailableDriver(Registry $options, $default = null)

        Finds an available http transport object for communication

        :type $options: Registry
        :param $options:
        :param $default:
        :returns: TransportInterface Interface sub-class

    .. php:method:: getHttpTransports()

        Get the http transport handlers

        :returns: array An array of available transport handlers
