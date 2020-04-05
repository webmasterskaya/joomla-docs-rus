---------------------------------
Joomla\\CMS\\Plugin\\PluginHelper
---------------------------------

.. php:namespace: Joomla\\CMS\\Plugin

.. php:class:: PluginHelper

    Plugin helper class

    .. php:attr:: plugins

        :type: array

        :scope: protected

        A persistent cache of the loaded plugins.

    .. php:method:: getLayoutPath($type, $name, $layout = 'default')

        Get the path to a layout from a Plugin

        :param $type:
        :param $name:
        :param $layout:
        :returns: string Layout path

    .. php:method:: getPlugin($type, $plugin = null)

        Get the plugin data of a specific type if no specific plugin is specified
        otherwise only the specific plugin data is returned.

        :param $type:
        :param $plugin:
        :returns: mixed An array of plugin data objects, or a plugin data object.

    .. php:method:: isEnabled($type, $plugin = null)

        Checks if a plugin is enabled.

        :param $type:
        :param $plugin:
        :returns: boolean

    .. php:method:: importPlugin($type, $plugin = null, $autocreate = true, JEventDispatcher $dispatcher = null)

        Loads all the plugin files for a particular type if no specific plugin is
        specified
        otherwise only the specific plugin is loaded.

        :param $type:
        :param $plugin:
        :param $autocreate:
        :type $dispatcher: JEventDispatcher
        :param $dispatcher:
        :returns: boolean True on success.

    .. php:method:: _import($plugin, $autocreate = true, JEventDispatcher $dispatcher = null)

        Loads the plugin file.

        :param $plugin:
        :param $autocreate:
        :type $dispatcher: JEventDispatcher
        :param $dispatcher:
        :returns: void

    .. php:method:: import($plugin, $autocreate = true, JEventDispatcher $dispatcher = null)

        Loads the plugin file.

        :param $plugin:
        :param $autocreate:
        :type $dispatcher: JEventDispatcher
        :param $dispatcher:
        :returns: void

    .. php:method:: _load()

        Loads the published plugins.

        :returns: array An array of published plugins

    .. php:method:: load()

        Loads the published plugins.

        :returns: array An array of published plugins
