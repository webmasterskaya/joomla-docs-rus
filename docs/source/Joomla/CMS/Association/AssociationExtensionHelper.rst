----------------------------------------------------
Joomla\\CMS\\Association\\AssociationExtensionHelper
----------------------------------------------------

.. php:namespace: Joomla\\CMS\\Association

.. php:class:: AssociationExtensionHelper

    Association Extension Helper

    .. php:attr:: extension

        :type: array

        :scope: protected

        The extension name

    .. php:attr:: itemTypes

        :type: array

        :scope: protected

        Array of item types

    .. php:attr:: associationsSupport

        :type: boolean

        :scope: protected

        Has the extension association support

    .. php:method:: hasAssociationsSupport()

        Checks if the extension supports associations

        :returns: boolean Supports the extension associations

    .. php:method:: getItemTypes()

        Get the item types

        :returns: array Array of item types

    .. php:method:: getAssociationList($typeName, $itemId)

        Get the associated items for an item

        :param $typeName:
        :param $itemId:
        :returns: array

    .. php:method:: getType($typeName = '')

        Get information about the type

        :param $typeName:
        :returns: array Array of item types

    .. php:method:: getTypeFields($typeName)

        Get information about the fields the type provides

        :param $typeName:
        :returns: array Array of support information

    .. php:method:: getTypeSupport($typeName)

        Get information about the fields the type provides

        :param $typeName:
        :returns: array Array of support information

    .. php:method:: getTypeTables($typeName)

        Get information about the tables the type use

        :param $typeName:
        :returns: array Array of support information

    .. php:method:: getTypeJoins($typeName)

        Get information about the table joins for the type

        :param $typeName:
        :returns: array Array of support information

    .. php:method:: getTypeTitle($typeName)

        Get the type title

        :param $typeName:
        :returns: array Array of support information

    .. php:method:: getTypeInformation($typeName, $part = 'support')

        Get information about the type

        :param $typeName:
        :param $part:
        :returns: array Array of support information

    .. php:method:: getTypeFieldName($typeName, $fieldName)

        Get a table field name for a type

        :param $typeName:
        :param $fieldName:
        :returns: string

    .. php:method:: getSupportTemplate()

        Get default values for support array

        :returns: array

    .. php:method:: getFieldsTemplate()

        Get default values for fields array

        :returns: array
