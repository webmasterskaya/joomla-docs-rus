-------------------------------
Joomla\\CMS\\Layout\\BaseLayout
-------------------------------

.. php:namespace: Joomla\\CMS\\Layout

.. php:class:: BaseLayout

    Base class for rendering a display layout

    .. php:attr:: options

        :type: Registry

        :scope: protected

        Options object

    .. php:attr:: data

        :type: array

        :scope: protected

        Data for the layout

    .. php:attr:: debugMessages

        :type: array

        :scope: protected

        Debug information messages

    .. php:method:: setOptions($options = null)

        Set the options

        :param $options:
        :returns: BaseLayout Instance of $this to allow chaining.

    .. php:method:: getOptions()

        Get the options

        :returns: Registry Object with the options

    .. php:method:: resetOptions()

        Function to empty all the options

        :returns: BaseLayout Instance of $this to allow chaining.

    .. php:method:: escape($output)

        Method to escape output.

        :param $output:
        :returns: string The escaped output.

    .. php:method:: getDebugMessages()

        Get the debug messages array

        :returns: array

    .. php:method:: render($displayData)

        Method to render the layout.

        :param $displayData:
        :returns: string The necessary HTML to display the layout

    .. php:method:: renderDebugMessages()

        Render the list of debug messages

        :returns: string Output text/HTML code

    .. php:method:: addDebugMessage($message)

        Add a debug message to the debug messages array

        :param $message:
        :returns: self

    .. php:method:: clearDebugMessages()

        Clear the debug messages array

        :returns: self

    .. php:method:: debug($data = array())

        Render a layout with debug info

        :param $data:
        :returns: string

    .. php:method:: get($key, $defaultValue = null)

        Method to get the value from the data array

        :param $key:
        :param $defaultValue:
        :returns: mixed Value from the data array | defaultValue if doesn't exist

    .. php:method:: getData()

        Get the data being rendered

        :returns: array

    .. php:method:: isDebugEnabled()

        Check if debug mode is enabled

        :returns: boolean

    .. php:method:: set($key, $value)

        Method to set a value in the data array. Example: $layout->set('items',
        $items);

        :param $key:
        :param $value:
        :returns: self

    .. php:method:: setData($data)

        Set the the data passed the layout

        :param $data:
        :returns: self

    .. php:method:: setDebug($debug)

        Change the debug mode

        :param $debug:
        :returns: self
