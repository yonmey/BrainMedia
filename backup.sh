#! bin/bash

# Sickrage backup
docker run --rm --volumes-from sickrage -v $(pwd)/hypocampus/_backup:/backup alpine tar cvf /backup/sickrage_data.tar /config /blackhole /sorted /unsorted

# Lazylibrarian backup
mkdir -p ./hypocampus/_backup/temp;
docker cp lazylibrarian:/LazyLibrarian/lazylibrarian.db ./hypocampus/_backup/temp;
docker cp lazylibrarian:/LazyLibrarian/config.ini ./hypocampus/_backup/temp;
cd ./hypocampus/_backup/temp;
tar czf ../lazylibrarian_backup.tar *;
cd ../../..;
rm -fr ./hypocampus/_backup/temp;