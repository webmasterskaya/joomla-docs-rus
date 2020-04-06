---------------------------------------
Joomla\\CMS\\Installer\\InstallerScript
---------------------------------------

.. php:namespace: Joomla\\CMS\\Installer

.. php:class:: InstallerScript

    Base install script for use by extensions providing helper methods for common behaviours.

    .. php:attr:: release

        :type: string

        :scope: protected

        The version number of the extension.

    .. php:attr:: paramTable

        :type: string

        :scope: protected

        The table the parameters are stored in.

    .. php:attr:: extension

        :type: string

        :scope: protected

        The extension name. This should be set in the installer script.

    .. php:attr:: deleteFiles

        :type: array

        :scope: protected

        A list of files to be deleted

    .. php:attr:: deleteFolders

        :type: array

        :scope: protected

        A list of folders to be deleted

    .. php:attr:: cliScriptFiles

        :type: array

        :scope: protected

        A list of CLI script files to be copied to the cli directory

    .. php:attr:: minimumPhp

        :type: string

        :scope: protected

        Minimum PHP version required to install the extension

    .. php:attr:: minimumJoomla

        :type: string

        :scope: protected

        Minimum Joomla! version required to install the extension

    .. php:attr:: allowDowngrades

        :type: boolean

        :scope: protected

        Allow downgrades of your extension

        Use at your own risk as if there is a change in functionality people may
        wish to downgrade.

    .. php:method:: preflight($type, $parent)

        Function called before extension installation/update/removal procedure
        commences

        :param $type:
        :param $parent:
        :returns: boolean True on success

    .. php:method:: getInstances($isModule)

        Gets each instance of a module in the #__modules table

        :param $isModule:
        :returns: array An array of ID's of the extension

    .. php:method:: getParam($name, $id = 0)

        Gets parameter value in the extensions row of the extension table

        :param $name:
        :param $id:
        :returns: string The parameter desired

    .. php:method:: setParams($param_array = null, $type = 'edit', $id = 0)

        Sets parameter values in the extensions row of the extension table. Note
        that the
        this must be called separately for deleting and editing. Note if edit is
        called as a
        type then if the param doesn't exist it will be created

        :param $param_array:
        :param $type:
        :param $id:
        :returns: boolean True on success

    .. php:method:: getItemArray($element, $table, $column, $identifier)

        Builds a standard select query to produce better DRY code in this script.
        This should produce a single unique cell which is json encoded - it will
        then
        return an associated array with this data in.

        :param $element:
        :param $table:
        :param $column:
        :param $identifier:
        :returns: array Associated array containing data from the cell

    .. php:method:: removeFiles()

        Remove the files and folders in the given array from

        :returns: void

    .. php:method:: moveCliFiles()

        Moves the CLI scripts into the CLI folder in the CMS

        :returns: void
