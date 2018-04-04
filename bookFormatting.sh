mkdir ebook
cp cover.jpg ebook
cp index.html ebook
cp index.opf ebook
cp toc.html ebook
cp toc.ncx ebook
mkdir ebook/files
cp files/ebook_basic_rules.css ebook/files/basic_rules.css
cp files/basic-rules_title.png ebook/files/
cp files/pattern-separator.png ebook/files/
cp files/faction_banner_*.png ebook/files/

zip -r DungeonsAndDragonsBasicRules.zip ebook
mv DungeonsAndDragonsBasicRules.zip DungeonsAndDragonsBasicRules.epub
ebook-convert DungeonsAndDragonsBasicRules.epub DungeonsAndDragonsBasicRules.mobi
rm -dR ebook


mkdir ebook
cp dungeonMaster/master-cover.jpg ebook
cp master.html ebook
cp dungeonMaster/index.opf ebook
cp dungeonMaster/toc.html ebook
cp dungeonMaster/toc.ncx ebook
mkdir ebook/files
cp files/basic-rules_title.png ebook/files/
cp files/pattern-separator.png ebook/files/
cp files/ebook_basic_rules.css ebook/files/basic_rules.css

zip -r DungeonsAndDragonsDungeonMasterBasicRules.zip ebook
mv DungeonsAndDragonsDungeonMasterBasicRules.zip DungeonsAndDragonsDungeonMasterBasicRules.epub
ebook-convert DungeonsAndDragonsDungeonMasterBasicRules.epub DungeonsAndDragonsDungeonMasterBasicRules.mobi
rm -dR ebook
