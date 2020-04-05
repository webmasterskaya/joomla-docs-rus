----------------------------------
Joomla\\CMS\\Client\\ClientWrapper
----------------------------------

.. php:namespace: Joomla\\CMS\\Client

.. php:class:: ClientWrapper

    Wrapper class for ClientHelper

    .. php:method:: getCredentials($client, $force = false)

        Helper wrapper method for getCredentials

        :param $client:
        :param $force:
        :returns: array Client layer configuration options, consisting of at least

    .. php:method:: setCredentials($client, $user, $pass)

        Helper wrapper method for setCredentials

        :param $client:
        :param $user:
        :param $pass:
        :returns: boolean True if the given login credentials have been set and are valid

    .. php:method:: hasCredentials($client)

        Helper wrapper method for hasCredentials

        :param $client:
        :returns: boolean True if login credentials are available

    .. php:method:: setCredentialsFromRequest($client)

        Helper wrapper method for setCredentialsFromRequest

        :param $client:
        :returns: mixed True, if FTP settings; JError if using legacy tree
