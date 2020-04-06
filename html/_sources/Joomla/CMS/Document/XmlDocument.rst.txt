----------------------------------
Joomla\\CMS\\Document\\XmlDocument
----------------------------------

.. php:namespace: Joomla\\CMS\\Document

.. php:class:: XmlDocument

    XmlDocument class, provides an easy interface to parse and display XML output

    .. php:attr:: name

        :type: string

        :scope: protected

        Document name

    .. php:attr:: isDownload

        :type: boolean

        :scope: protected

        Flag indicating the document should be downloaded (Content-Disposition =
        attachment) versus displayed inline

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

    .. php:method:: render($cache = false, $params = array())

        Render the document.

        :param $cache:
        :param $params:
        :returns: string The rendered data

    .. php:method:: getName()

        Returns the document name

        :returns: string

    .. php:method:: setName($name = 'joomla')

        Sets the document name

        :param $name:
        :returns: XmlDocument instance of $this to allow chaining

    .. php:method:: isDownload()

        Check if this document is intended for download

        :returns: string

    .. php:method:: setDownload($download = false)

        Sets the document's download state

        :param $download:
        :returns: XmlDocument instance of $this to allow chaining

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

    .. php:method:: getBuffer()

        Get the contents of the document buffer

        :returns: mixed

    .. php:method:: setBuffer($content, $options = array())

        Set the contents of the document buffer

        :param $content:
        :param $options:
        :returns: Document instance of $this to allow chaining

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

    .. php:method:: parse($params = array())

        Parses the document and prepares the buffers

        :param $params:
        :returns: Document instance of $this to allow chaining
