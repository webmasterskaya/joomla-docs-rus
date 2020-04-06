-------------------------------
Joomla\\CMS\\Layout\\FileLayout
-------------------------------

.. php:namespace: Joomla\\CMS\\Layout

.. php:class:: FileLayout

    Base class for rendering a display layout
    loaded from from a layout file

    .. php:attr:: cache

        :type: array

        :scope: protected

        Cached layout paths

    .. php:attr:: layoutId

        :type: string

        :scope: protected

        Dot separated path to the layout file, relative to base path

    .. php:attr:: basePath

        :type: string

        :scope: protected

        Base path to use when loading layout files

    .. php:attr:: fullPath

        :type: string

        :scope: protected

        Full path to actual layout files, after possible template override check

    .. php:attr:: includePaths

        :type: array

        :scope: protected

        Paths to search for layouts

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

    .. php:method:: __construct($layoutId, $basePath = null, $options = null)

        Method to instantiate the file-based layout.

        :param $layoutId:
        :param $basePath:
        :param $options:

    .. php:method:: render($displayData = array())

        Method to render the layout.

        :param $displayData:
        :returns: string The necessary HTML to display the layout

    .. php:method:: getPath()

        Method to finds the full real file path, checking possible overrides

        :returns: string The full path to the layout file

    .. php:method:: addIncludePath($path)

        Add one path to include in layout search. Proxy of addIncludePaths()

        :param $path:
        :returns: self

    .. php:method:: addIncludePaths($paths)

        Add one or more paths to include in layout search

        :param $paths:
        :returns: self

    .. php:method:: clearIncludePaths()

        Clear the include paths

        :returns: self

    .. php:method:: getIncludePaths()

        Get the active include paths

        :returns: array

    .. php:method:: getLayoutId()

        Get the active layout id

        :returns: string

    .. php:method:: getSuffixes()

        Get the active suffixes

        :returns: array

    .. php:method:: loadLanguageSuffixes()

        Load the automatically generated language suffixes.
        Example: array('es-ES', 'es', 'ltr')

        :returns: self

    .. php:method:: loadVersionSuffixes()

        Load the automatically generated version suffixes.
        Example: array('j311', 'j31', 'j3')

        :returns: self

    .. php:method:: removeIncludePath($path)

        Remove one path from the layout search

        :param $path:
        :returns: self

    .. php:method:: removeIncludePaths($paths)

        Remove one or more paths to exclude in layout search

        :param $paths:
        :returns: self

    .. php:method:: validComponent($option = null)

        Validate that the active component is valid

        :param $option:
        :returns: boolean

    .. php:method:: setComponent($option)

        Method to change the component where search for layouts

        :param $option:
        :returns: mixed Component option string | null for none

    .. php:method:: setClient($client)

        Function to initialise the application client

        :param $client:
        :returns: void

    .. php:method:: setLayout($layoutId)

        Change the layout

        :param $layoutId:
        :returns: self

    .. php:method:: setLayoutId($layoutId)

        Set the active layout id

        :param $layoutId:
        :returns: self

    .. php:method:: refreshIncludePaths()

        Refresh the list of include paths

        :returns: self

    .. php:method:: getDefaultIncludePaths()

        Get the default array of include paths

        :returns: array

    .. php:method:: setIncludePaths($paths)

        Set the include paths to search for layouts

        :param $paths:
        :returns: self

    .. php:method:: setSuffixes($suffixes)

        Set suffixes to search layouts

        :param $suffixes:
        :returns: self

    .. php:method:: sublayout($layoutId, $displayData)

        Render a layout with the same include paths & options

        :param $layoutId:
        :param $displayData:
        :returns: string The necessary HTML to display the layout

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
