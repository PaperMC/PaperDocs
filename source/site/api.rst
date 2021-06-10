=============
Downloads API
=============

.. warning::
    Version 1 of the API has been deprecated as of November 24th, 2020.

    To view the full `v2` documentation, please go to `<https://papermc.io/api/docs/>`__

After months of requests (years in the case of a few hosting providers), PaperMC
has added a downloads API to standardize download links and finding specific
versions of Paper for specific versions of Minecraft.

It is a simple RESTful JSON API. Like most APIs it uses versioned endpoints;
the current version is ``v2``. If any breaking changes are made it will be
incremented to ``v3`` and announced, with the old version continuing to
function for some time until further announcements are made.

I just want to download the latest jar
--------------------------------------
Unlike the v1 API, there is no API endpoint to simply fetch the latest jar.
This is intentional, as it was previously used to make auto-updating servers
which is not recommended and, in rare cases, can lead to world corruption.

The new URLs give me weird filenames
------------------------------------
While downloads using the `v2` API should have reasonable names compared to
that of `v1`, the below instructions are kept for completion.

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

The downloads API is project-based, and downloads can be obtained via the following format:
``https://papermc.io/api/v2/projects/{PROJECT}/versions/{VERSION}/builds/{BUILD}/downloads/{DOWNLOAD}``

Example getting a listing of available project versions for waterfall:
``https://papermc.io/api/v2/projects/waterfall``

.. code-block:: json

 {
  "project_id": "waterfall",
  "project_name": "Waterfall",
  "version_groups": [
    "1.11",
    "1.12",
    "1.13",
    "1.14",
    "1.15",
    "1.16",
    "1.17"
  ],
  "versions": [
    "1.11",
    "1.12",
    "1.13",
    "1.14",
    "1.15",
    "1.16",
    "1.17"
  ]
 }



NOTE: The parent (``https://papermc.io/api``) does not currently enumerate the
available API versions and will instead redirect to a usage page on the latest
version of the API.

PROJECT
------------
- ``paper`` - The PaperMC server implementation
- ``waterfall`` - The Waterfall server proxy
- ``travertine`` - The Travertine proxy; Waterfall, but supprting Minecraft 1.7. Now deprecated.

The parent (``https://papermc.io/api/v2/projects``) will return a list
of all available projects if accessed directly.

VERSION
---------------
This will vary from project to project above. By accessing the API using just
the project name (ex: ``https://papermc.io/api/v2/projects/paper``),
the API will return an array of available versions and version groups.

.. code-block:: json

 {
  "project_id": "paper",
  "project_name": "Paper",
  "version_groups": [
    "1.8",
    "1.9",
    "1.10",
    "1.11",
    "1.12",
    "1.13",
    "1.14",
    "1.15",
    "1.16"
  ],
  "versions": [
    "1.8.8",
    "1.9.4",
    "1.10.2",
    "1.11.2",
    "1.12",
    "1.12.1",
    "1.12.2",
    "1.13-pre7",
    "1.13",
    "1.13.1",
    "1.13.2",
    "1.14",
    "1.14.1",
    "1.14.2",
    "1.14.3",
    "1.14.4",
    "1.15",
    "1.15.1",
    "1.15.2",
    "1.16.1",
    "1.16.2",
    "1.16.3",
    "1.16.4",
    "1.16.5"
  ]
 }

These versions correspond to the version of Minecraft the software is targeting.
For example, ``https://papermc.io/api/v2/projects/paper/versions/1.16.5``
will return all build IDs targeting the 1.16.5 version of Minecraft.

.. code-block:: json
 
 {
  "project_id": "paper",
  "project_name": "Paper",
  "version": "1.16.5",
  "builds": [
    427,
    428,
    429,
    430,
    431,
    432,
    433,
    434,
    435,
  ]
 }

BUILD
--------
A specific build of the given project. These build versions correspond
with the build IDs specified by the backend continuous integration tools. As of
v2 of the API they will always be integers.

For example, ``https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/435`` will return
information about the build for 1.16.5 with the ID of 435.

.. code-block:: json

 {
  "project_id": "paper",
  "project_name": "Paper",
  "version": "1.16.5",
  "build": 435,
  "time": "2021-01-19T22:56:04.092Z",
  "changes": [
    {
      "commit": "8aeb4c9c3f52fae23ebcca07e5d1a934dc774372",
      "summary": "Correctly skip pathfinder ticks for inactive entities (#5085)",
      "message": "Correctly skip pathfinder ticks for inactive entities (#5085)\n\nFixes #5083"
    }
  ],
  "downloads": {
    "application": {
      "name": "paper-1.16.5-435.jar",
      "sha256": "cb1703f41fc837687d81be94b0ca2f3f8af0707fccab0f7d83947fcaaf81c0b9"
    }
  }
 }

DOWNLOAD
--------
Finally, if you want to download a version of something, you must append
the name of the file to download to the URL format in the example above.

For example, to download build 430 of the Waterfall project for 1.16,
you would access the following URL:

``https://papermc.io/api/v2/projects/waterfall/versions/1.16/builds/430/downloads/waterfall-1.16-430.jar``

The final piece of the URL, `waterfall-1.16-430.jar` can be found by using the
previously documented endpoint to obtain information about a build.

Downloads served in this way will include ``content-type``, ``content-length``,
and ``content-disposition`` headers for proper identification, progress, and
naming of resources.

.. code-block:: text

    content-type: application/java-archive
    cache-control: public, max-age=14400, s-maxage=604800
    content-disposition: attachment; filename*=UTF-8''waterfall-1.16-430.jar

API Versions
--------------
``v1`` - The initial launch version of the API, now deprecated.

``v2`` - The current version of the API recommended for all usage.
