=============
Downloads API
=============

After months of requests (years in the case of a few hosting providers), PaperMC
has added a downloads API to standardize download links and finding specific
versions of Paper for specific versions of Minecraft.

It is a simple RESTful JSON API. Like most APIs it uses versioned endpoints,
the current version is ``v1``, if any breaking changes are made it will be
incremented to ``v2`` and announced, with the old version continuing to function
for some time until further announcements are made.

Please note that although we have no plans to change the structure of the API in
a breaking way, that it is still relatively new and we will likely be working
through any problems or pain spots as they arise.

I just want to download the latest jar
--------------------------------------
To download the latest jar, simply connect to `<https://papermc.io/api/v1/paper/1.16.2/latest/download>`__

If you're looking for Waterfall or Travertine, their name can be used in place
of `paper` as either `waterfall` or `travertine`. Specific versions can also be
used by replacing `1.16.2` with `1.12.2` or another version. For additional
information about available endpoints, projects, and versions, please read
further below.

The new URLs give me weird filenames
------------------------------------
`curl`, `wget`, and other command line tools make up their own file names based
on the download URL. As the new URL uses standardized links for downloads, these
tools come up with unfamiliar or "useless" names.

If you're using `curl` you can use the ``-JLO`` flags to make it use the
server's suggested name rather than making up its own. Alternatively, you can
use the ``-o`` flag by itself to specify your own name for the downloaded file
(ex: ``curl -o paperclip.jar http://someurl``).
For more information, please see `curl's own documentation <https://curl.haxx.se/docs/manpage.html>`_.

If you're using `wget` you can add the ``--content-disposition`` flag on newer
versions to use the server's suggested name rather than having wget make up its
own name. You can also use the ``-O`` flag to specify your own name for the
downloaded file. (ex: ``wget http://someurl -O paperclip.jar``)
For more information, please see `wget's own documentation <https://www.gnu.org/software/wget/manual/wget.html>`_.

Other tools may or may not make up their own names for files, and they may or
may not have options for following the server's recommended name. You will have
to consult those specific tools' documentation to determine how that is handled.
You can always simply rename the file immediately after download if your
preferred tool does not support it for some reason.

======================
Endpoint Documentation
======================

Requests made to the API should conform to the following pattern:
``https://papermc.io/api/{API_VERSION}/{PROJECT_NAME}/{PROJECT_VERSION}/{BUILD_ID}/download``

You may optionally append the static path ``/download`` to automatically be given
a specific file. Generally, hitting a parent of an item will enumerate it. Cases
where this is not true are documented below.

Example getting a listing of available project versions for waterfall: ``https://papermc.io/api/v1/waterfall``

.. code-block:: json

 {
  "project": "waterfall",
  "versions": [
   "1.16",
   "1.15",
   "1.14",
   "1.13",
   "1.12",
   "1.11"
  ]
 }

API_VERSION
-----------
``v1`` - The initial launch version of the API.

NOTE: The parent (``https://papermc.io/api``) does not currently enumerate the
available API versions and will return a ``403 Forbidden`` if accessed
directly.

PROJECT_NAME
------------
- ``paper`` - The PaperMC server implementation
- ``waterfall`` - The Waterfall server proxy
- ``travertine`` - The Travertine proxy fork

NOTE: The parent (``https://papermc.io/api/v1``) does not currently enumerate the
available project names and will return a ``404 Not Found`` if accessed
directly.

PROJECT_VERSION
---------------
This will vary from project to project above. By accessing the API using just
the project name (ex: ``https://papermc.io/api/v1/paper``), the API will return
an array of supported versions.

.. code-block:: json

 {
  "project": "paper",
  "versions": [
    "1.16.2",
    "1.16.1",
    "1.15.2",
    "1.15.1",
    "1.15",
    "1.14.4",
    "1.14.3",
    "1.14.2",
    "1.14.1",
    "1.14",
    "1.13.2",
    "1.13.1",
    "1.13-pre7",
    "1.13",
    "1.12.2",
    "1.12.1",
    "1.12",
    "1.11.2",
    "1.10.2",
    "1.9.4",
    "1.8.8"
  ]
 }

These versions correspond to the version of Minecraft the software is targeting.
For example, ``https://papermc.io/api/v1/paper/1.16.2`` will return all build IDs
targeting the 1.16.2 version of Minecraft.

.. code-block:: json

 {
  "project": "paper",
  "version": "1.16.2",
  "builds": {
    "latest": "148",
    "all": [
      "148",
      "147",
      "146",
      "145",
      "144",
      "143",
      "142",
      "141"
    ]
  }
 }

BUILD_ID
--------
A specific build of the given project. These build versions correspond
with the build IDs specified by the backend continuous integration tools. As of
v1 of the API they will always be integers.

For example, ``https://papermc.io/api/v1/paper/1.16.2/148`` will return
information about the build for 1.16.2 with the ID of 148.

.. code-block:: json

 {
  "project": "paper",
  "version": "1.16.2",
  "build": "148"
 }

You can use the static keyword `latest` in place of a specific build in order to
get the latest version for that specific release of minecraft.
For example, ``https://papermc.io/api/v1/paper/1.16.2/latest`` will return info
on the latest version of the Paper project for 1.16.2.

.. code-block:: json

 {
  "project": "paper",
  "version": "1.16.2",
  "build": "148"
 }

DOWNLOAD
--------
Finally, if you want to download a version of something, you can simply append
``/download`` to the URL path in order to be served a file.

For example, to download the latest version of the Waterfall project for 1.14,
you would access ``https://papermc.io/api/v1/waterfall/1.16/latest/download``

Downloads served in this way will include ``content-type``, ``content-length``,
and ``content-disposition`` headers for proper identification, progress, and
naming of resources.

.. code-block:: text

    content-type: application/java-archive
    content-length: 13649793
    content-disposition: attachment; filename=waterfall-370.jar
