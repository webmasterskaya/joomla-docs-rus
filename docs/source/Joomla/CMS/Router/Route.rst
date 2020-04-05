--------------------------
Joomla\\CMS\\Router\\Route
--------------------------

.. php:namespace: Joomla\\CMS\\Router

.. php:class:: Route

    Route handling class

    .. php:const:: TLS_IGNORE

        No change, use the protocol currently used.

    .. php:const:: TLS_FORCE

        Make URI secure using http over TLS (https).

    .. php:const:: TLS_DISABLE

        Make URI unsecure using plain http (http).

    .. php:method:: _($url, $xhtml = true, $tls = self::TLS_IGNORE, $absolute = false)

        Translates an internal Joomla URL to a humanly readable URL. This method
        builds links for the current active client.

        :param $url:
        :param $xhtml:
        :param $tls:
        :param $absolute:
        :returns: string The translated humanly readable URL.

    .. php:method:: link($client, $url, $xhtml = true, $tls = self::TLS_IGNORE, $absolute = false)

        Translates an internal Joomla URL to a humanly readable URL.
        NOTE: To build link for active client instead of a specific client, you
        can use <var>JRoute::_()</var>

        :param $client:
        :param $url:
        :param $xhtml:
        :param $tls:
        :param $absolute:
        :returns: string The translated humanly readable URL.
