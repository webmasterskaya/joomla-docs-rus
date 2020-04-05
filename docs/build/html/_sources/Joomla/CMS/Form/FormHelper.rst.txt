-----------------------------
Joomla\\CMS\\Form\\FormHelper
-----------------------------

.. php:namespace: Joomla\\CMS\\Form

.. php:class:: FormHelper

    Form's helper class.
    Provides a storage for filesystem's paths where Form's entities reside and methods for creating those entities.
    Also stores objects with entities' prototypes for further reusing.

    .. php:attr:: paths

        :type: array

        :scope: protected

        Array with paths where entities(field, rule, form) can be found.

        Array's structure:

        paths:
        {ENTITY_NAME}:
        - /path/1
        - /path/2

    .. php:attr:: prefixes

        :type: string

        :scope: protected

        The class namespaces.

    .. php:attr:: entities

        :type: array

        :scope: protected

        Static array of Form's entity objects for re-use.
        Prototypes for all fields and rules are here.

        Array's structure:
        entities:
        {ENTITY_NAME}:
        {KEY}: {OBJECT}

    .. php:method:: loadFieldType($type, $new = true)

        Method to load a form field object given a type.

        :param $type:
        :param $new:
        :returns: FormField|boolean FormField object on success, false otherwise.

    .. php:method:: loadRuleType($type, $new = true)

        Method to load a form rule object given a type.

        :param $type:
        :param $new:
        :returns: FormRule|boolean FormRule object on success, false otherwise.

    .. php:method:: loadType($entity, $type, $new = true)

        Method to load a form entity object given a type.
        Each type is loaded only once and then used as a prototype for other
        objects of same type.
        Please, use this method only with those entities which support types
        (forms don't support them).

        :param $entity:
        :param $type:
        :param $new:
        :returns: mixed Entity object on success, false otherwise.

    .. php:method:: loadFieldClass($type)

        Attempt to import the JFormField class file if it isn't already imported.
        You can use this method outside of JForm for loading a field for
        inheritance or composition.

        :param $type:
        :returns: string|boolean Class name on success or false otherwise.

    .. php:method:: loadRuleClass($type)

        Attempt to import the JFormRule class file if it isn't already imported.
        You can use this method outside of JForm for loading a rule for
        inheritance or composition.

        :param $type:
        :returns: string|boolean Class name on success or false otherwise.

    .. php:method:: loadClass($entity, $type)

        Load a class for one of the form's entities of a particular type.
        Currently, it makes sense to use this method for the "field" and "rule"
        entities
        (but you can support more entities in your subclass).

        :param $entity:
        :param $type:
        :returns: string|boolean Class name on success or false otherwise.

    .. php:method:: addFieldPath($new = null)

        Method to add a path to the list of field include paths.

        :param $new:
        :returns: array The list of paths that have been added.

    .. php:method:: addFormPath($new = null)

        Method to add a path to the list of form include paths.

        :param $new:
        :returns: array The list of paths that have been added.

    .. php:method:: addRulePath($new = null)

        Method to add a path to the list of rule include paths.

        :param $new:
        :returns: array The list of paths that have been added.

    .. php:method:: addPath($entity, $new = null)

        Method to add a path to the list of include paths for one of the form's
        entities.
        Currently supported entities: field, rule and form. You are free to
        support your own in a subclass.

        :param $entity:
        :param $new:
        :returns: array The list of paths that have been added.

    .. php:method:: addFieldPrefix($new = null)

        Method to add a namespace prefix to the list of field lookups.

        :param $new:
        :returns: array The list of namespaces that have been added.

    .. php:method:: addFormPrefix($new = null)

        Method to add a namespace to the list of form lookups.

        :param $new:
        :returns: array The list of namespaces that have been added.

    .. php:method:: addRulePrefix($new = null)

        Method to add a namespace to the list of rule lookups.

        :param $new:
        :returns: array The list of namespaces that have been added.

    .. php:method:: addPrefix($entity, $new = null)

        Method to add a namespace to the list of namespaces for one of the form's
        entities.
        Currently supported entities: field, rule and form. You are free to
        support your own in a subclass.

        :param $entity:
        :param $new:
        :returns: array The list of namespaces that have been added.

    .. php:method:: parseShowOnConditions($showOn, $formControl = null, $group = null)

        Parse the show on conditions

        :param $showOn:
        :param $formControl:
        :param $group:
        :returns: array Array with show on conditions.
