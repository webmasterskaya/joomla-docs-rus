-------------------------
Joomla\\CMS\\Access\\Rule
-------------------------

.. php:namespace: Joomla\\CMS\\Access

.. php:class:: Rule

    Rule class.

    .. php:attr:: data

        :type: array

        :scope: protected

        A named array

    .. php:method:: __construct($identities)

        Constructor.

        The input array must be in the form: array(-42 => true, 3 => true, 4 =>
        false)
        or an equivalent JSON encoded string.

        :param $identities:

    .. php:method:: getData()

        Get the data for the action.

        :returns: array A named array

    .. php:method:: mergeIdentities($identities)

        Merges the identities

        :param $identities:
        :returns: void

    .. php:method:: mergeIdentity($identity, $allow)

        Merges the values for an identity.

        :param $identity:
        :param $allow:
        :returns: void

    .. php:method:: allow($identities)

        Checks that this action can be performed by an identity.

        The identity is an integer where +ve represents a user group,
        and -ve represents a user.

        :param $identities:
        :returns: mixed True if allowed, false for an explicit deny, null for an implicit deny.

    .. php:method:: __toString()

        Convert this object into a JSON encoded string.

        :returns: string JSON encoded string
