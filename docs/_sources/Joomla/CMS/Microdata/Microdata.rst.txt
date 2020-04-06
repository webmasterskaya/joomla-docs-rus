---------------------------------
Joomla\\CMS\\Microdata\\Microdata
---------------------------------

.. php:namespace: Joomla\\CMS\\Microdata

.. php:class:: Microdata

    Joomla Platform class for interacting with Microdata semantics.

    .. php:attr:: types

        :type: array

        :scope: protected

        Array with all available Types and Properties from the http://schema.org
        vocabulary

    .. php:attr:: type

        :type: string

        :scope: protected

        The Type

    .. php:attr:: property

        :type: string

        :scope: protected

        The Property

    .. php:attr:: content

        :type: string

        :scope: protected

        The Human content

    .. php:attr:: machineContent

        :type: string

        :scope: protected

        The Machine content

    .. php:attr:: fallbackType

        :type: string

        :scope: protected

        The Fallback Type

    .. php:attr:: fallbackProperty

        :type: string

        :scope: protected

        The Fallback Property

    .. php:attr:: enabled

        :type: boolean

        :scope: protected

        Used for checking if the library output is enabled or disabled

    .. php:method:: __construct($type = '', $flag = true)

        Initialize the class and setup the default $Type

        :param $type:
        :param $flag:

    .. php:method:: loadTypes()

        Load all available Types and Properties from the http://schema.org
        vocabulary contained in the types.json file

        :returns: void

    .. php:method:: resetParams()

        Reset all params

        :returns: void

    .. php:method:: enable($flag = true)

        Enable or Disable the library output

        :param $flag:
        :returns: Microdata Instance of $this

    .. php:method:: isEnabled()

        Return 'true' if the library output is enabled

        :returns: boolean

    .. php:method:: setType($type)

        Set a new http://schema.org Type

        :param $type:
        :returns: Microdata Instance of $this

    .. php:method:: getType()

        Return the current $Type name

        :returns: string

    .. php:method:: property($property)

        Setup a $Property

        :param $property:
        :returns: Microdata Instance of $this

    .. php:method:: getProperty()

        Return the current $Property name

        :returns: string

    .. php:method:: content($content, $machineContent = null)

        Setup a Human content or content for the Machines

        :param $content:
        :param $machineContent:
        :returns: Microdata Instance of $this

    .. php:method:: getContent()

        Return the current $content

        :returns: string

    .. php:method:: getMachineContent()

        Return the current $machineContent

        :returns: string

    .. php:method:: fallback($type, $property)

        Setup a Fallback Type and Property

        :param $type:
        :param $property:
        :returns: Microdata Instance of $this

    .. php:method:: getFallbackType()

        Return the current $fallbackType

        :returns: string

    .. php:method:: getFallbackProperty()

        Return the current $fallbackProperty

        :returns: string

    .. php:method:: display($displayType = '', $emptyOutput = false)

        This function handles the display logic.
        It checks if the Type, Property are available, if not check for a
        Fallback,
        then reset all params for the next use and return the HTML.

        :param $displayType:
        :param $emptyOutput:
        :returns: string

    .. php:method:: displayScope()

        Return the HTML of the current Scope

        :returns: string

    .. php:method:: sanitizeType($type)

        Return the sanitized $Type

        :param $type:
        :returns: string

    .. php:method:: sanitizeProperty($property)

        Return the sanitized $Property

        :param $property:
        :returns: string

    .. php:method:: getTypes()

        Return an array with all available Types and Properties from the
        http://schema.org vocabulary

        :returns: array

    .. php:method:: getAvailableTypes()

        Return an array with all available Types from the http://schema.org
        vocabulary

        :returns: array

    .. php:method:: getExpectedTypes($type, $property)

        Return the expected Types of the given Property

        :param $type:
        :param $property:
        :returns: array

    .. php:method:: getExpectedDisplayType($type, $property)

        Return the expected display type: [normal|nested|meta]
        In which way to display the Property:
        normal -> itemprop="name"
        nested -> itemprop="director" itemscope
        itemtype="https://schema.org/Person"
        meta   -> `<meta itemprop="datePublished" content="1991-05-01">`

        :param $type:
        :param $property:
        :returns: string

    .. php:method:: isPropertyInType($type, $property)

        Recursive function, control if the given Type has the given Property

        :param $type:
        :param $property:
        :returns: boolean

    .. php:method:: isTypeAvailable($type)

        Control if the given Type class is available

        :param $type:
        :returns: boolean

    .. php:method:: htmlMeta($content, $property, $scope = '', $invert = false)

        Return Microdata semantics in a `<meta>` tag with content for machines.

        :param $content:
        :param $property:
        :param $scope:
        :param $invert:
        :returns: string

    .. php:method:: htmlSpan($content, $property = '', $scope = '', $invert = false)

        Return Microdata semantics in a `<span>` tag.

        :param $content:
        :param $property:
        :param $scope:
        :param $invert:
        :returns: string

    .. php:method:: htmlDiv($content, $property = '', $scope = '', $invert = false)

        Return Microdata semantics in a `<div>` tag.

        :param $content:
        :param $property:
        :param $scope:
        :param $invert:
        :returns: string

    .. php:method:: htmlTag($tag, $content, $property = '', $scope = '', $invert = false)

        Return Microdata semantics in a specified tag.

        :param $tag:
        :param $content:
        :param $property:
        :param $scope:
        :param $invert:
        :returns: string

    .. php:method:: htmlScope($scope)

        Return the HTML Scope

        :param $scope:
        :returns: string

    .. php:method:: htmlProperty($property)

        Return the HTML Property

        :param $property:
        :returns: string
