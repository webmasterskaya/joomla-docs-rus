---------------------------------
Joomla\\CMS\\Helper\\ModuleHelper
---------------------------------

.. php:namespace: Joomla\\CMS\\Helper

.. php:class:: ModuleHelper

    Module helper class

    .. php:method:: getModule($name, $title = null)

        Get module by name (real, eg 'Breadcrumbs' or folder, eg
        'mod_breadcrumbs')

        :param $name:
        :param $title:
        :returns: \stdClass The Module object

    .. php:method:: getModules($position)

        Get modules by position

        :param $position:
        :returns: array An array of module objects

    .. php:method:: isEnabled($module)

        Checks if a module is enabled. A given module will only be returned
        if it meets the following criteria: it is enabled, it is assigned to
        the current menu item or all items, and the user meets the access level
        requirements.

        :param $module:
        :returns: boolean See description for conditions.

    .. php:method:: renderModule($module, $attribs = array())

        Render the module.

        :param $module:
        :param $attribs:
        :returns: string The HTML content of the module output.

    .. php:method:: getLayoutPath($module, $layout = 'default')

        Get the path to a layout for a module

        :param $module:
        :param $layout:
        :returns: string The path to the module layout

    .. php:method:: _load()

        Load published modules.

        :returns: array

    .. php:method:: load()

        Load published modules.

        :returns: array

    .. php:method:: getModuleList()

        Module list

        :returns: array

    .. php:method:: cleanModuleList($modules)

        Clean the module list

        :param $modules:
        :returns: array

    .. php:method:: moduleCache($module, $moduleparams, $cacheparams)

        Module cache helper

        Caching modes:
        To be set in XML:
        'static'      One cache file for all pages with the same module parameters
        'oldstatic'   1.5 definition of module caching, one cache file for all
        pages with the same module id and user aid,
        'itemid'      Changes on itemid change, to be called from inside the
        module:
        'safeuri'     Id created from $cacheparams->modeparams array,
        'id'          Module sets own cache id's

        :param $module:
        :param $moduleparams:
        :param $cacheparams:
        :returns: string

    .. php:method:: isAdminMultilang()

        Method to determine if filtering by language is enabled in back-end for
        modules.

        :returns: boolean True if enabled; false otherwise.

    .. php:method:: getModuleById($id)

        Get module by id

        :param $id:
        :returns: \stdClass The Module object
