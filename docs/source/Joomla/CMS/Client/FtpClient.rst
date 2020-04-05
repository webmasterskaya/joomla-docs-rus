------------------------------
Joomla\\CMS\\Client\\FtpClient
------------------------------

.. php:namespace: Joomla\\CMS\\Client

.. php:class:: FtpClient

    FTP client class

    .. php:attr:: _conn

        :type: resource

        :scope: protected

    .. php:attr:: _dataconn

        :type: resource

        :scope: protected

    .. php:attr:: _pasv

        :type: array

        :scope: protected

    .. php:attr:: _response

        :type: string

        :scope: protected

    .. php:attr:: _timeout

        :type: integer

        :scope: protected

    .. php:attr:: _type

        :type: integer

        :scope: protected

    .. php:attr:: _autoAscii

        :type: array

        :scope: protected

    .. php:attr:: _lineEndings

        :type: array

        :scope: protected

        Array to hold native line ending characters

    .. php:attr:: instances

        :type: array

        :scope: protected

    .. php:method:: __construct($options = array())

        FtpClient object constructor

        :param $options:

    .. php:method:: __destruct()

        FtpClient object destructor

        Closes an existing connection, if we have one

    .. php:method:: getInstance($host = '127.0.0.1', $port = '21', $options = array(), $user = null, $pass = null)

        Returns the global FTP connector object, only creating it
        if it doesn't already exist.

        You may optionally specify a username and password in the parameters. If
        you do so,
        you may not login() again with different credentials using the same
        object.
        If you do not use this option, you must quit() the current connection when
        you are done, to free it for use by others.

        :param $host:
        :param $port:
        :param $options:
        :param $user:
        :param $pass:
        :returns: FtpClient The FTP Client object.

    .. php:method:: setOptions($options)

        Set client options

        :param $options:
        :returns: boolean True if successful

    .. php:method:: connect($host = '127.0.0.1', $port = 21)

        Method to connect to a FTP server

        :param $host:
        :param $port:
        :returns: boolean True if successful

    .. php:method:: isConnected()

        Method to determine if the object is connected to an FTP server

        :returns: boolean True if connected

    .. php:method:: login($user = 'anonymous', $pass = 'jftp@joomla.org')

        Method to login to a server once connected

        :param $user:
        :param $pass:
        :returns: boolean True if successful

    .. php:method:: quit()

        Method to quit and close the connection

        :returns: boolean True if successful

    .. php:method:: pwd()

        Method to retrieve the current working directory on the FTP server

        :returns: string Current working directory

    .. php:method:: syst()

        Method to system string from the FTP server

        :returns: string System identifier string

    .. php:method:: chdir($path)

        Method to change the current working directory on the FTP server

        :param $path:
        :returns: boolean True if successful

    .. php:method:: reinit()

        Method to reinitialise the server, ie. need to login again

        NOTE: This command not available on all servers

        :returns: boolean True if successful

    .. php:method:: rename($from, $to)

        Method to rename a file/folder on the FTP server

        :param $from:
        :param $to:
        :returns: boolean True if successful

    .. php:method:: chmod($path, $mode)

        Method to change mode for a path on the FTP server

        :param $path:
        :param $mode:
        :returns: boolean True if successful

    .. php:method:: delete($path)

        Method to delete a path [file/folder] on the FTP server

        :param $path:
        :returns: boolean True if successful

    .. php:method:: mkdir($path)

        Method to create a directory on the FTP server

        :param $path:
        :returns: boolean True if successful

    .. php:method:: restart($point)

        Method to restart data transfer at a given byte

        :param $point:
        :returns: boolean True if successful

    .. php:method:: create($path)

        Method to create an empty file on the FTP server

        :param $path:
        :returns: boolean True if successful

    .. php:method:: read($remote, $buffer)

        Method to read a file from the FTP server's contents into a buffer

        :param $remote:
        :param $buffer:
        :returns: boolean True if successful

    .. php:method:: get($local, $remote)

        Method to get a file from the FTP server and save it to a local file

        :param $local:
        :param $remote:
        :returns: boolean True if successful

    .. php:method:: store($local, $remote = null)

        Method to store a file to the FTP server

        :param $local:
        :param $remote:
        :returns: boolean True if successful

    .. php:method:: write($remote, $buffer)

        Method to write a string to the FTP server

        :param $remote:
        :param $buffer:
        :returns: boolean True if successful

    .. php:method:: append($remote, $buffer)

        Method to append a string to the FTP server

        :param $remote:
        :param $buffer:
        :returns: boolean True if successful

    .. php:method:: size($remote)

        Get the size of the remote file.

        :param $remote:
        :returns: mixed number of bytes or false on error

    .. php:method:: listNames($path = null)

        Method to list the filenames of the contents of a directory on the FTP
        server

        Note: Some servers also return folder names. However, to be sure to list
        folders on all servers, you should use listDetails() instead if you also
        need to deal with folders

        :param $path:
        :returns: string Directory listing

    .. php:method:: listDetails($path = null, $type = 'all')

        Method to list the contents of a directory on the FTP server

        :param $path:
        :param $type:
        :returns: mixed If $type is raw: string Directory listing, otherwise array of string with file-names

    .. php:method:: _putCmd($cmd, $expectedResponse)

        Send command to the FTP server and validate an expected response code

        :param $cmd:
        :param $expectedResponse:
        :returns: boolean True if command executed successfully

    .. php:method:: _verifyResponse($expected)

        Verify the response code from the server and log response if flag is set

        :param $expected:
        :returns: boolean True if response code from the server is expected

    .. php:method:: _passive()

        Set server to passive mode and open a data port connection

        :returns: boolean True if successful

    .. php:method:: _findMode($fileName)

        Method to find out the correct transfer mode for a specific file

        :param $fileName:
        :returns: integer Transfer-mode for this filetype [FTP_ASCII|FTP_BINARY]

    .. php:method:: _mode($mode)

        Set transfer mode

        :param $mode:
        :returns: boolean True if successful
