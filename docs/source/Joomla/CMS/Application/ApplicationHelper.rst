-------------------------------------------
Joomla\\CMS\\Application\\ApplicationHelper
-------------------------------------------

.. php:namespace: Joomla\\CMS\\Application

.. php:class:: ApplicationHelper

    Application helper functions

    .. php:attr:: _clients

        :type: array

        :scope: protected

        Client information array

    .. php:method:: getComponentName($default = null)

        Return the name of the request component [main component]

        :param $default:
        :returns: string Option (e.g. com_something)

    .. php:method:: getHash($seed)

        Provides a secure hash based on a seed

        :param $seed:
        :returns: string A secure hash

    .. php:method:: stringURLSafe($string, $language = '')

        This method transliterates a string into a URL
        safe string or returns a URL safe UTF-8 string
        based on the global configuration

        :param $string:
        :param $language:
        :returns: string Processed string

    .. php:method:: getClientInfo($id = null, $byName = false)

        Gets information on a specific client id.  This method will be useful in
        future versions when we start mapping applications in the database.

        This method will return a client information array if called with no
        arguments which can be used to add custom application information.

        :param $id:
        :param $byName:
        :returns: mixed Object describing the client or false if not known

    .. php:method:: addClientInfo($client)

        Adds information for a client.

        :param $client:
        :returns: boolean True if the information is added. False on error

    .. php:method:: parseXMLInstallFile($path)

        Parse a XML install manifest file.

        XML Root tag should be 'install' except for languages which use meta file.

        :param $path:
        :returns: array XML metadata.

    .. php:method:: parseXMLLangMetaFile($path)

        Parse a XML language meta file.

        XML Root tag  for languages which is meta file.

        :param $path:
        :returns: array XML metadata.
