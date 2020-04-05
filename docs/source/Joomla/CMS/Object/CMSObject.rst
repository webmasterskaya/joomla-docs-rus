------------------------------
Joomla\\CMS\\Object\\CMSObject
------------------------------

.. php:namespace: Joomla\\CMS\\Object

.. php:class:: CMSObject

    Joomla Platform Object Class

    This class allows for simple but smart objects with get and set methods and an internal error handler.

    .. php:attr:: _errors

        :type: array

        :scope: protected

        An array of error messages or Exception objects.

    .. php:method:: __construct($properties = null)

        Class constructor, overridden in descendant classes.

        :param $properties:

    .. php:method:: __toString()

        Magic method to convert the object to a string gracefully.

        :returns: string The classname.

    .. php:method:: def($property, $default = null)

        Sets a default value if not already assigned

        :param $property:
        :param $default:
        :returns: mixed

    .. php:method:: get($property, $default = null)

        Returns a property of the object or the default value if the property is
        not set.

        :param $property:
        :param $default:
        :returns: mixed The value of the property.

    .. php:method:: getProperties($public = true)

        Returns an associative array of object properties.

        :param $public:
        :returns: array

    .. php:method:: getError($i = null, $toString = true)

        Get the most recent error message.

        :param $i:
        :param $toString:
        :returns: string Error message

    .. php:method:: getErrors()

        Return all errors, if any.

        :returns: array Array of error messages or JErrors.

    .. php:method:: set($property, $value = null)

        Modifies a property of the object, creating it if it does not already
        exist.

        :param $property:
        :param $value:
        :returns: mixed Previous value of the property.

    .. php:method:: setProperties($properties)

        Set the object properties based on a named array/hash.

        :param $properties:
        :returns: boolean

    .. php:method:: setError($error)

        Add an error message.

        :param $error:
        :returns: void
