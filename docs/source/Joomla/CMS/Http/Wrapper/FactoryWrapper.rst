------------------------------------------
Joomla\\CMS\\Http\\Wrapper\\FactoryWrapper
------------------------------------------

.. php:namespace: Joomla\\CMS\\Http\\Wrapper

.. php:class:: FactoryWrapper

    Wrapper class for HttpFactory

    .. php:method:: getHttp(Registry $options = null, $adapters = null)

        Helper wrapper method for getHttp

        :type $options: Registry
        :param $options:
        :param $adapters:
        :returns: Http Joomla Http class

    .. php:method:: getAvailableDriver(Registry $options, $default = null)

        Helper wrapper method for getAvailableDriver

        :type $options: Registry
        :param $options:
        :param $default:
        :returns: TransportInterface Interface sub-class

    .. php:method:: getHttpTransports()

        Helper wrapper method for getHttpTransports

        :returns: array An array of available transport handlers
