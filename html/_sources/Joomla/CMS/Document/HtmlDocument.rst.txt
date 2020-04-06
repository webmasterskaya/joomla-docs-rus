-----------------------------------
Joomla\\CMS\\Document\\HtmlDocument
-----------------------------------

.. php:namespace: Joomla\\CMS\\Document

.. php:class:: HtmlDocument

    HtmlDocument class, provides an easy interface to parse and display a HTML document

    .. php:attr:: _links

        :type: array

        Array of Header `<link>` tags

    .. php:attr:: _custom

        :type: array

        Array of custom tags

    .. php:attr:: template

        :type: string

        Name of the template

    .. php:attr:: baseurl

        :type: string

        Base url

    .. php:attr:: params

        :type: array

        Array of template parameters

    .. php:attr:: _file

        :type: array

        File name

    .. php:attr:: _template

        :type: string

        :scope: protected

        String holding parsed template

    .. php:attr:: _template_tags

        :type: array

        :scope: protected

        Array of parsed template JDoc tags

    .. php:attr:: _caching

        :type: integer

        :scope: protected

        Integer with caching setting

    .. php:attr:: title

        :type: string

        Document title

    .. php:attr:: description

        :type: string

        Document description

    .. php:attr:: link

        :type: string

        Document full URL

    .. php:attr:: base

        :type: string

        Document base URL

    .. php:attr:: language

        :type: string

        Contains the document language setting

    .. php:attr:: direction

        :type: string

        Contains the document direction setting

    .. php:attr:: _generator

        :type: string

        Document generator

    .. php:attr:: _mdate

        :type: string|Date

        Document modified date

    .. php:attr:: _tab

        :type: string

        Tab string

    .. php:attr:: _lineEnd

        :type: string

        Contains the line end string

    .. php:attr:: _charset

        :type: string

        Contains the character encoding string

    .. php:attr:: _mime

        :type: string

        Document mime type

    .. php:attr:: _namespace

        :type: string

        Document namespace

    .. php:attr:: _profile

        :type: string

        Document profile

    .. php:attr:: _scripts

        :type: array

        Array of linked scripts

    .. php:attr:: _script

        :type: array

        Array of scripts placed in the header

    .. php:attr:: scriptOptions

        :type: array

        :scope: protected

        Array of scripts options

    .. php:attr:: _styleSheets

        :type: array

        Array of linked style sheets

    .. php:attr:: _style

        :type: array

        Array of included style declarations

    .. php:attr:: _metaTags

        :type: array

        Array of meta tags

    .. php:attr:: _engine

        :type: object

        The rendering engine

    .. php:attr:: _type

        :type: string

        The document type

    .. php:attr:: _buffer

        :type: mixed

        Array of buffered output

    .. php:attr:: instances

        :type: array

        :scope: protected

        Document instances container.

    .. php:attr:: mediaVersion

        :type: string

        :scope: protected

        Media version added to assets

    .. php:method:: __construct($options = array())

        Class constructor

        :param $options:

    .. php:method:: getHeadData()

        Get the HTML document head data

        :returns: array The document head data in array form

    .. php:method:: resetHeadData($types = null)

        Reset the HTML document head data

        :param $types:
        :returns: HtmlDocument instance of $this to allow chaining

    .. php:method:: resetHeadDatum($type)

        Reset a part the HTML document head data

        :param $type:
        :returns: void

    .. php:method:: setHeadData($data)

        Set the HTML document head data

        :param $data:
        :returns: HtmlDocument|null instance of $this to allow chaining or null for empty input data

    .. php:method:: mergeHeadData($data)

        Merge the HTML document head data

        :param $data:
        :returns: HtmlDocument|null instance of $this to allow chaining or null for empty input data

    .. php:method:: addHeadLink($href, $relation, $relType = 'rel', $attribs = array())

        Adds `<link>` tags to the head of the document

        $relType defaults to 'rel' as it is the most common relation type used.
        ('rev' refers to reverse relation, 'rel' indicates normal, forward
        relation.)
        Typical tag: `<link href="index.php" rel="Start">`

        :param $href:
        :param $relation:
        :param $relType:
        :param $attribs:
        :returns: HtmlDocument instance of $this to allow chaining

    .. php:method:: addFavicon($href, $type = 'image/vnd.microsoft.icon', $relation = 'shortcut icon')

        Adds a shortcut icon (favicon)

        This adds a link to the icon shown in the favorites list or on the left of
        the url in the address bar. Some browsers display it on the tab, as well.

        :param $href:
        :param $type:
        :param $relation:
        :returns: HtmlDocument instance of $this to allow chaining

    .. php:method:: addCustomTag($html)

        Adds a custom HTML string to the head block

        :param $html:
        :returns: HtmlDocument instance of $this to allow chaining

    .. php:method:: isHtml5()

        Returns whether the document is set up to be output as HTML5

        :returns: boolean true when HTML5 is used

    .. php:method:: setHtml5($state)

        Sets whether the document should be output as HTML5

        :param $state:
        :returns: void

    .. php:method:: getBuffer($type = null, $name = null, $attribs = array())

        Get the contents of a document include

        :param $type:
        :param $name:
        :param $attribs:
        :returns: mixed|string The output of the renderer

    .. php:method:: setBuffer($content, $options = array())

        Set the contents a document includes

        :param $content:
        :param $options:
        :returns: HtmlDocument instance of $this to allow chaining

    .. php:method:: parse($params = array())

        Parses the template and populates the buffer

        :param $params:
        :returns: HtmlDocument instance of $this to allow chaining

    .. php:method:: render($caching = false, $params = array())

        Outputs the template to the browser.

        :param $caching:
        :param $params:
        :returns: string The rendered data

    .. php:method:: countModules($condition)

        Count the modules based on the given condition

        :param $condition:
        :returns: integer Number of modules found

    .. php:method:: countMenuChildren()

        Count the number of child menu items of the current active menu item

        :returns: integer Number of child menu items

    .. php:method:: _loadTemplate($directory, $filename)

        Load a template file

        :param $directory:
        :param $filename:
        :returns: string The contents of the template

    .. php:method:: _fetchTemplate($params = array())

        Fetch the template, and initialise the params

        :param $params:
        :returns: HtmlDocument instance of $this to allow chaining

    .. php:method:: _parseTemplate()

        Parse a document template

        :returns: HtmlDocument instance of $this to allow chaining

    .. php:method:: _renderTemplate()

        Render pre-parsed template

        :returns: string rendered template

    .. php:method:: getInstance($type = 'html', $attributes = array())

        Returns the global Document object, only creating it
        if it doesn't already exist.

        :param $type:
        :param $attributes:
        :returns: object The document object.

    .. php:method:: setType($type)

        Set the document type

        :param $type:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getType()

        Returns the document type

        :returns: string

    .. php:method:: getMetaData($name, $attribute = 'name')

        Gets a meta tag.

        :param $name:
        :param $attribute:
        :returns: string

    .. php:method:: setMetaData($name, $content, $attribute = 'name')

        Sets or alters a meta tag.

        :param $name:
        :param $content:
        :param $attribute:
        :returns: Document instance of $this to allow chaining

    .. php:method:: addScript($url, $options = array(), $attribs = array())

        Adds a linked script to the page

        :param $url:
        :param $options:
        :param $attribs:
        :returns: Document instance of $this to allow chaining

    .. php:method:: addScriptVersion($url, $options = array(), $attribs = array())

        Adds a linked script to the page with a version to allow to flush it. Ex:
        myscript.js?54771616b5bceae9df03c6173babf11d
        If not specified Joomla! automatically handles versioning

        :param $url:
        :param $options:
        :param $attribs:
        :returns: Document instance of $this to allow chaining

    .. php:method:: addScriptDeclaration($content, $type = 'text/javascript')

        Adds a script to the page

        :param $content:
        :param $type:
        :returns: Document instance of $this to allow chaining

    .. php:method:: addScriptOptions($key, $options, $merge = true)

        Add option for script

        :param $key:
        :param $options:
        :param $merge:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getScriptOptions($key = null)

        Get script(s) options

        :param $key:
        :returns: array Options for given $key, or all script options

    .. php:method:: addStyleSheet($url, $options = array(), $attribs = array())

        Adds a linked stylesheet to the page

        :param $url:
        :param $options:
        :param $attribs:
        :returns: Document instance of $this to allow chaining

    .. php:method:: addStyleSheetVersion($url, $options = array(), $attribs = array())

        Adds a linked stylesheet version to the page. Ex:
        template.css?54771616b5bceae9df03c6173babf11d
        If not specified Joomla! automatically handles versioning

        :param $url:
        :param $options:
        :param $attribs:
        :returns: Document instance of $this to allow chaining

    .. php:method:: addStyleDeclaration($content, $type = 'text/css')

        Adds a stylesheet declaration to the page

        :param $content:
        :param $type:
        :returns: Document instance of $this to allow chaining

    .. php:method:: setCharset($type = 'utf-8')

        Sets the document charset

        :param $type:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getCharset()

        Returns the document charset encoding.

        :returns: string

    .. php:method:: setLanguage($lang = 'en-gb')

        Sets the global document language declaration. Default is English (en-gb).

        :param $lang:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getLanguage()

        Returns the document language.

        :returns: string

    .. php:method:: setDirection($dir = 'ltr')

        Sets the global document direction declaration. Default is left-to-right
        (ltr).

        :param $dir:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getDirection()

        Returns the document direction declaration.

        :returns: string

    .. php:method:: setTitle($title)

        Sets the title of the document

        :param $title:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getTitle()

        Return the title of the document.

        :returns: string

    .. php:method:: setMediaVersion($mediaVersion)

        Set the assets version

        :param $mediaVersion:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getMediaVersion()

        Return the media version

        :returns: string

    .. php:method:: setBase($base)

        Sets the base URI of the document

        :param $base:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getBase()

        Return the base URI of the document.

        :returns: string

    .. php:method:: setDescription($description)

        Sets the description of the document

        :param $description:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getDescription()

        Return the description of the document.

        :returns: string

    .. php:method:: setLink($url)

        Sets the document link

        :param $url:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getLink()

        Returns the document base url

        :returns: string

    .. php:method:: setGenerator($generator)

        Sets the document generator

        :param $generator:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getGenerator()

        Returns the document generator

        :returns: string

    .. php:method:: setModifiedDate($date)

        Sets the document modified date

        :param $date:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getModifiedDate()

        Returns the document modified date

        :returns: string|Date

    .. php:method:: setMimeEncoding($type = 'text/html', $sync = true)

        Sets the document MIME encoding that is sent to the browser.

        This usually will be text/html because most browsers cannot yet accept the
        proper mime settings for XHTML: application/xhtml+xml and to a lesser
        extent application/xml and text/xml. See the W3C note
        ({@link http://www.w3.org/TR/xhtml-media-types/
        http://www.w3.org/TR/xhtml-media-types/}) for more details.

        :param $type:
        :param $sync:
        :returns: Document instance of $this to allow chaining

    .. php:method:: getMimeEncoding()

        Return the document MIME encoding that is sent to the browser.

        :returns: string

    .. php:method:: setLineEnd($style)

        Sets the line end style to Windows, Mac, Unix or a custom string.

        :param $style:
        :returns: Document instance of $this to allow chaining

    .. php:method:: _getLineEnd()

        Returns the lineEnd

        :returns: string

    .. php:method:: setTab($string)

        Sets the string used to indent HTML

        :param $string:
        :returns: Document instance of $this to allow chaining

    .. php:method:: _getTab()

        Returns a string containing the unit for indenting HTML

        :returns: string

    .. php:method:: loadRenderer($type)

        Load a renderer

        :param $type:
        :returns: DocumentRenderer
