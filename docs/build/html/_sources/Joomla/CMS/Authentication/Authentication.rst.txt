-------------------------------------------
Joomla\\CMS\\Authentication\\Authentication
-------------------------------------------

.. php:namespace: Joomla\\CMS\\Authentication

.. php:class:: Authentication

    Authentication class, provides an interface for the Joomla authentication system

    .. php:const:: STATUS_SUCCESS

        This is the status code returned when the authentication is success (permit login)

    .. php:const:: STATUS_CANCEL

        Status to indicate cancellation of authentication (unused)

    .. php:const:: STATUS_FAILURE

        This is the status code returned when the authentication failed (prevent login if no success)

    .. php:const:: STATUS_EXPIRED

        This is the status code returned when the account has expired (prevent login)

    .. php:const:: STATUS_DENIED

        This is the status code returned when the account has been denied (prevent login)

    .. php:const:: STATUS_UNKNOWN

        This is the status code returned when the account doesn't exist (not an error)

    .. php:attr:: observers

        :type: array

        :scope: protected

        An array of Observer objects to notify

    .. php:attr:: state

        :type: mixed

        :scope: protected

        The state of the observable object

    .. php:attr:: methods

        :type: array

        :scope: protected

        A multi dimensional array of [function][] = key for observers

    .. php:attr:: instance

        :type: Authentication

        :scope: protected

    .. php:method:: __construct()

        Constructor

    .. php:method:: getInstance()

        Returns the global authentication object, only creating it
        if it doesn't already exist.

        :returns: Authentication The global Authentication object

    .. php:method:: getState()

        Get the state of the Authentication object

        :returns: mixed The state of the object.

    .. php:method:: attach($observer)

        Attach an observer object

        :param $observer:
        :returns: void

    .. php:method:: detach($observer)

        Detach an observer object

        :param $observer:
        :returns: boolean True if the observer object was detached.

    .. php:method:: authenticate($credentials, $options = array())

        Finds out if a set of login credentials are valid by asking all observing
        objects to run their respective authentication routines.

        :param $credentials:
        :param $options:
        :returns: AuthenticationResponse Response object with status variable filled in for last plugin or first successful plugin.

    .. php:method:: authorise($response, $options = array())

        Authorises that a particular user should be able to login

        :param $response:
        :param $options:
        :returns: AuthenticationResponse[] Array of authentication response objects
