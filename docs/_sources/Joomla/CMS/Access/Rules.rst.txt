--------------------------
Joomla\\CMS\\Access\\Rules
--------------------------

.. php:namespace: Joomla\\CMS\\Access

.. php:class:: Rules

    Access rules class.

    .. php:attr:: data

        :type: array

        :scope: protected

        A named array.

    .. php:method:: __construct($input = '')

        Constructor.

        The input array must be in the form: array('action' => array(-42 => true,
        3 => true, 4 => false))
        or an equivalent JSON encoded string, or an object where properties are
        arrays.

        :param $input:

    .. php:method:: getData()

        Get the data for the action.

        :returns: array A named array of Rule objects.

    .. php:method:: mergeCollection($input)

        Method to merge a collection of Rules.

        :param $input:
        :returns: void

    .. php:method:: merge($actions)

        Method to merge actions with this object.

        :param $actions:
        :returns: void

    .. php:method:: mergeAction($action, $identities)

        Merges an array of identities for an action.

        :param $action:
        :param $identities:
        :returns: void

    .. php:method:: allow($action, $identity)

        Checks that an action can be performed by an identity.

        The identity is an integer where +ve represents a user group,
        and -ve represents a user.

        :param $action:
        :param $identity:
        :returns: mixed Object or null if there is no information about the action.

    .. php:method:: getAllowed($identity)

        Get the allowed actions for an identity.

        :param $identity:
        :returns: \JObject Allowed actions for the identity or identities

    .. php:method:: __toString()

        Magic method to convert the object to JSON string representation.

        :returns: string JSON representation of the actions array
