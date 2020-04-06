---------------------------------
Joomla\\CMS\\Client\\ClientHelper
---------------------------------

.. php:namespace: Joomla\\CMS\\Client

.. php:class:: ClientHelper

    Client helper class

    .. php:method:: getCredentials($client, $force = false)

        Method to return the array of client layer configuration options

        :param $client:
        :param $force:
        :returns: array Client layer configuration options, consisting of at least these fields: enabled, host, port, user, pass, root

    .. php:method:: setCredentials($client, $user, $pass)

        Method to set client login credentials

        :param $client:
        :param $user:
        :param $pass:
        :returns: boolean True if the given login credentials have been set and are valid

    .. php:method:: hasCredentials($client)

        Method to determine if client login credentials are present

        :param $client:
        :returns: boolean True if login credentials are available

    .. php:method:: setCredentialsFromRequest($client)

        Determine whether input fields for client settings need to be shown

        If valid credentials were passed along with the request, they are saved to
        the session.
        This functions returns an exception if invalid credentials have been given
        or if the connection to the server failed for some other reason.

        :param $client:
        :returns: mixed True, if FTP settings; JError if using legacy tree.
