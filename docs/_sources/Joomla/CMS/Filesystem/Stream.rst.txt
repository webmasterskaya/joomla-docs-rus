-------------------------------
Joomla\\CMS\\Filesystem\\Stream
-------------------------------

.. php:namespace: Joomla\\CMS\\Filesystem

.. php:class:: Stream

    Joomla! Stream Interface

    The Joomla! stream interface is designed to handle files as streams where as the legacy File static class treated files in a rather atomic manner.

    .. php:attr:: filemode

        :type: integer

        :scope: protected

        File Mode

    .. php:attr:: dirmode

        :type: integer

        :scope: protected

        Directory Mode

    .. php:attr:: chunksize

        :type: integer

        :scope: protected

        Default Chunk Size

    .. php:attr:: filename

        :type: string

        :scope: protected

        Filename

    .. php:attr:: writeprefix

        :type: string

        :scope: protected

        Prefix of the connection for writing

    .. php:attr:: readprefix

        :type: string

        :scope: protected

        Prefix of the connection for reading

    .. php:attr:: processingmethod

        :type: string

        :scope: protected

        Read Processing method

    .. php:attr:: filters

        :type: array

        :scope: protected

        Filters applied to the current stream

    .. php:attr:: fh

        :type: resource

        :scope: protected

        File Handle

    .. php:attr:: filesize

        :type: integer

        :scope: protected

        File size

    .. php:attr:: context

        :type: resource

        :scope: protected

        Context to use when opening the connection

    .. php:attr:: contextOptions

        :type: array

        :scope: protected

        Context options; used to rebuild the context

    .. php:attr:: openmode

        :type: string

        :scope: protected

        The mode under which the file was opened

    .. php:attr:: _errors

        :type: array

        :scope: protected

        An array of error messages or Exception objects.

    .. php:method:: __construct($writeprefix = '', $readprefix = '', $context = array())

        Constructor

        :param $writeprefix:
        :param $readprefix:
        :param $context:

    .. php:method:: __destruct()

        Destructor

    .. php:method:: open($filename, $mode = 'r', $use_include_path = false, $context = null, $use_prefix = false, $relative = false, $detectprocessingmode = false)

        Generic File Operations

        Open a stream with some lazy loading smarts

        :param $filename:
        :param $mode:
        :param $use_include_path:
        :param $context:
        :param $use_prefix:
        :param $relative:
        :param $detectprocessingmode:
        :returns: boolean

    .. php:method:: close()

        Attempt to close a file handle

        Will return false if it failed and true on success If the file is not open
        the system will return true, this function destroys the file handle as
        well

        :returns: boolean

    .. php:method:: eof()

        Work out if we're at the end of the file for a stream

        :returns: boolean

    .. php:method:: filesize()

        Retrieve the file size of the path

        :returns: mixed

    .. php:method:: gets($length = 0)

        Get a line from the stream source.

        :param $length:
        :returns: mixed

    .. php:method:: read($length = 0)

        Read a file

        Handles user space streams appropriately otherwise any read will return
        8192

        :param $length:
        :returns: mixed

    .. php:method:: seek($offset, $whence = SEEK_SET)

        Seek the file

        Note: the return value is different to that of fseek

        :param $offset:
        :param $whence:
        :returns: boolean True on success, false on failure

    .. php:method:: tell()

        Returns the current position of the file read/write pointer.

        :returns: mixed

    .. php:method:: write($string, $length = 0, $chunk = 0)

        File write

        Whilst this function accepts a reference, the underlying fwrite will do a
        copy! This will roughly double the memory allocation for any write you do.
        Specifying chunked will get around this by only writing in specific chunk
        sizes. This defaults to 8192 which is a sane number to use most of the
        time (change the default with JStream::set('chunksize', newsize);)
        Note: This doesn't support gzip/bzip2 writing like reading does

        :param $string:
        :param $length:
        :param $chunk:
        :returns: boolean

    .. php:method:: chmod($filename = '', $mode = 0)

        Chmod wrapper

        :param $filename:
        :param $mode:
        :returns: boolean

    .. php:method:: get_meta_data()

        Get the stream metadata

        :returns: array header/metadata

    .. php:method:: _buildContext()

        Stream contexts
        Builds the context from the array

        :returns: mixed

    .. php:method:: setContextOptions($context)

        Updates the context to the array

        Format is the same as the options for stream_context_create

        :param $context:
        :returns: void

    .. php:method:: addContextEntry($wrapper, $name, $value)

        Adds a particular options to the context

        :param $wrapper:
        :param $name:
        :param $value:
        :returns: void

    .. php:method:: deleteContextEntry($wrapper, $name)

        Deletes a particular setting from a context

        :param $wrapper:
        :param $name:
        :returns: void

    .. php:method:: applyContextToStream()

        Applies the current context to the stream

        Use this to change the values of the context after you've opened a stream

        :returns: mixed

    .. php:method:: appendFilter($filtername, $read_write = STREAM_FILTER_READ, $params = array())

        Stream filters
        Append a filter to the chain

        :param $filtername:
        :param $read_write:
        :param $params:
        :returns: mixed

    .. php:method:: prependFilter($filtername, $read_write = STREAM_FILTER_READ, $params = array())

        Prepend a filter to the chain

        :param $filtername:
        :param $read_write:
        :param $params:
        :returns: mixed

    .. php:method:: removeFilter($resource, $byindex = false)

        Remove a filter, either by resource (handed out from the append or prepend
        function)
        or via getting the filter list)

        :param $resource:
        :param $byindex:
        :returns: boolean Result of operation

    .. php:method:: copy($src, $dest, $context = null, $use_prefix = true, $relative = false)

        Copy a file from src to dest

        :param $src:
        :param $dest:
        :param $context:
        :param $use_prefix:
        :param $relative:
        :returns: mixed

    .. php:method:: move($src, $dest, $context = null, $use_prefix = true, $relative = false)

        Moves a file

        :param $src:
        :param $dest:
        :param $context:
        :param $use_prefix:
        :param $relative:
        :returns: mixed

    .. php:method:: delete($filename, $context = null, $use_prefix = true, $relative = false)

        Delete a file

        :param $filename:
        :param $context:
        :param $use_prefix:
        :param $relative:
        :returns: mixed

    .. php:method:: upload($src, $dest, $context = null, $use_prefix = true, $relative = false)

        Upload a file

        :param $src:
        :param $dest:
        :param $context:
        :param $use_prefix:
        :param $relative:
        :returns: mixed

    .. php:method:: writeFile($filename, $buffer)

        Writes a chunk of data to a file.

        :param $filename:
        :param $buffer:
        :returns: boolean

    .. php:method:: _getFilename($filename, $mode, $use_prefix, $relative)

        Determine the appropriate 'filename' of a file

        :param $filename:
        :param $mode:
        :param $use_prefix:
        :param $relative:
        :returns: string

    .. php:method:: getFileHandle()

        Return the internal file handle

        :returns: resource File handler

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
