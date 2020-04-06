-----------------------
Joomla\\CMS\\User\\User
-----------------------

.. php:namespace: Joomla\\CMS\\User

.. php:class:: User

    User class.  Handles all application interaction with a user

    .. php:attr:: isRoot

        :type: boolean

        :scope: protected

        A cached switch for if this user has root access rights.

    .. php:attr:: id

        :type: integer

        Unique id

    .. php:attr:: name

        :type: string

        The user's real name (or nickname)

    .. php:attr:: username

        :type: string

        The login name

    .. php:attr:: email

        :type: string

        The email

    .. php:attr:: password

        :type: string

        MD5 encrypted password

    .. php:attr:: password_clear

        :type: string

        Clear password, only available when a new password is set for a user

    .. php:attr:: block

        :type: integer

        Block status

    .. php:attr:: sendEmail

        :type: integer

        Should this user receive system email

    .. php:attr:: registerDate

        :type: \DateTime

        Date the user was registered

    .. php:attr:: lastvisitDate

        :type: \DateTime

        Date of last visit

    .. php:attr:: activation

        :type: string

        Activation hash

    .. php:attr:: params

        :type: Registry

        User parameters

    .. php:attr:: groups

        :type: array

        Associative array of user names => group ids

    .. php:attr:: guest

        :type: integer

        Guest status

    .. php:attr:: lastResetTime

        :type: string

        Last Reset Time

    .. php:attr:: resetCount

        :type: int

        Count since last Reset Time

    .. php:attr:: requireReset

        :type: int

        Flag to require the user's password be reset

    .. php:attr:: _params

        :type: Registry

        :scope: protected

        User parameters

    .. php:attr:: _authGroups

        :type: array

        :scope: protected

        Authorised access groups

    .. php:attr:: _authLevels

        :type: array

        :scope: protected

        Authorised access levels

    .. php:attr:: _authActions

        :type: array

        :scope: protected

        Authorised access actions

    .. php:attr:: _errorMsg

        :type: string

        :scope: protected

        Error message

    .. php:attr:: userHelper

        :type: UserWrapper

        :scope: protected

        UserWrapper object

    .. php:attr:: instances

        :type: array

        :scope: protected

    .. php:method:: __construct($identifier = 0, UserWrapper $userHelper = null)

        Constructor activating the default information of the language

        :param $identifier:
        :type $userHelper: UserWrapper
        :param $userHelper:

    .. php:method:: getInstance($identifier = 0, UserWrapper $userHelper = null)

        Returns the global User object, only creating it if it doesn't already
        exist.

        :param $identifier:
        :type $userHelper: UserWrapper
        :param $userHelper:
        :returns: User The User object.

    .. php:method:: getParam($key, $default = null)

        Method to get a parameter value

        :param $key:
        :param $default:
        :returns: mixed The value or the default if it did not exist

    .. php:method:: setParam($key, $value)

        Method to set a parameter

        :param $key:
        :param $value:
        :returns: mixed Set parameter value

    .. php:method:: defParam($key, $value)

        Method to set a default parameter if it does not exist

        :param $key:
        :param $value:
        :returns: mixed Set parameter value

    .. php:method:: authorise($action, $assetname = null)

        Method to check User object authorisation against an access control
        object and optionally an access extension object

        :param $action:
        :param $assetname:
        :returns: boolean True if authorised

    .. php:method:: getAuthorisedCategories($component, $action)

        Method to return a list of all categories that a user has permission for a
        given action

        :param $component:
        :param $action:
        :returns: array List of categories that this group can do this action to (empty array if none). Categories must be published.

    .. php:method:: getAuthorisedViewLevels()

        Gets an array of the authorised access levels for the user

        :returns: array

    .. php:method:: getAuthorisedGroups()

        Gets an array of the authorised user groups

        :returns: array

    .. php:method:: clearAccessRights()

        Clears the access rights cache of this user

        :returns: void

    .. php:method:: setLastVisit($timestamp = null)

        Pass through method to the table for setting the last visit date

        :param $timestamp:
        :returns: boolean True on success.

    .. php:method:: getParameters()

        Method to get the user parameters

        This method used to load the user parameters from a file.

        :returns: object The user parameters object.

    .. php:method:: getTimezone()

        Method to get the user timezone.

        If the user didn't set a timezone, it will return the server timezone

        :returns: \DateTimeZone

    .. php:method:: setParameters($params)

        Method to get the user parameters

        :param $params:
        :returns: void

    .. php:method:: getTable($type = null, $prefix = 'JTable')

        Method to get the user table object

        This function uses a static variable to store the table name of the user
        table to instantiate. You can call this function statically to set the
        table name if needed.

        :param $type:
        :param $prefix:
        :returns: object The user table object

    .. php:method:: bind($array)

        Method to bind an associative array of data to a user object

        :param $array:
        :returns: boolean True on success

    .. php:method:: save($updateOnly = false)

        Method to save the User object to the database

        :param $updateOnly:
        :returns: boolean True on success

    .. php:method:: delete()

        Method to delete the User object from the database

        :returns: boolean True on success

    .. php:method:: load($id)

        Method to load a User object by user id number

        :param $id:
        :returns: boolean True on success

    .. php:method:: __sleep()

        Method to allow serialize the object with minimal properties.

        :returns: array The names of the properties to include in serialization.

    .. php:method:: __wakeup()

        Method to recover the full object on unserialize.

        :returns: void
