-----------------------------------
Joomla\\CMS\\Language\\Associations
-----------------------------------

.. php:namespace: Joomla\\CMS\\Language

.. php:class:: Associations

    Utitlity class for associations in multilang

    .. php:method:: getAssociations($extension, $tablename, $context, $id, $pk = 'id', $aliasField = 'alias', $catField = 'catid', $advClause = array())

        Get the associations.

        :param $extension:
        :param $tablename:
        :param $context:
        :param $id:
        :param $pk:
        :param $aliasField:
        :param $catField:
        :param $advClause:
        :returns: array The associated items

    .. php:method:: isEnabled()

        Method to determine if the language filter Associations parameter is
        enabled.
        This works for both site and administrator.

        :returns: boolean True if the parameter is implemented; false otherwise.
