---------------------------------------
Joomla\\CMS\\Extension\\ExtensionHelper
---------------------------------------

.. php:namespace: Joomla\\CMS\\Extension

.. php:class:: ExtensionHelper

    Extension Helper class.

    .. php:attr:: coreExtensions

        :type: array

        :scope: protected

        Array of core extensions
        Each element is an array with elements "type", "element", "folder" and
        "client_id".

    .. php:method:: getCoreExtensions()

        Gets the core extensions.

        :returns: array Array with core extensions. Each extension is an array with following format: `type`, `element`, `folder`, `client_id`.

    .. php:method:: checkIfCoreExtension($type, $element, $client_id = 0, $folder = '')

        Check if an extension is core or not

        :param $type:
        :param $element:
        :param $client_id:
        :param $folder:
        :returns: boolean True if core, false if not.
