LANGUAGE_FONTS_SANS_REGULAR := \
	NotoNaskhArabic-Regular.ttf \
	NotoSansArmenian-Regular.ttf \
	NotoSansAvestan-Regular.ttf \
	NotoSansBalinese-Regular.ttf \
	NotoSansBamum-Regular.ttf \
	NotoSansBatak-Regular.ttf \
	NotoSansBengali-Regular.ttf \
	NotoSansBrahmi-Regular.ttf \
	NotoSansBuginese-Regular.ttf \
	NotoSansBuhid-Regular.ttf \
	NotoSansCanadianAboriginal-Regular.ttf \
	NotoSansCarian-Regular.ttf \
	NotoSansCham-Regular.ttf \
	NotoSansCherokee-Regular.ttf \
	NotoSansCoptic-Regular.ttf \
	NotoSansCuneiform-Regular.ttf \
	NotoSansCypriot-Regular.ttf \
	NotoSansDeseret-Regular.ttf \
	NotoSansDevanagari-Regular.ttf \
	NotoSansEgyptianHieroglyphs-Regular.ttf \
	NotoSansEthiopic-Regular.ttf \
	NotoSansGeorgian-Regular.ttf \
	NotoSansGlagolitic-Regular.ttf \
	NotoSansGothic-Regular.ttf \
	NotoSansGujarati-Regular.ttf \
	NotoSansGurmukhi-Regular.ttf \
	NotoSansHanunoo-Regular.ttf \
	NotoSansHebrew-Regular.ttf \
	NotoSansImperialAramaic-Regular.ttf \
	NotoSansInscriptionalPahlavi-Regular.ttf \
	NotoSansInscriptionalParthian-Regular.ttf \
	NotoSansJavanese-Regular.ttf \
	NotoSansKaithi-Regular.ttf \
	NotoSansKannada-Regular.ttf \
	NotoSansKayahLi-Regular.ttf \
	NotoSansKharoshthi-Regular.ttf \
	NotoSansKhmer-Regular.ttf \
	NotoSansLao-Regular.ttf \
	NotoSansLepcha-Regular.ttf \
	NotoSansLimbu-Regular.ttf \
	NotoSansLinearB-Regular.ttf \
	NotoSansLisu-Regular.ttf \
	NotoSansLycian-Regular.ttf \
	NotoSansLydian-Regular.ttf \
	NotoSansMalayalam-Regular.ttf \
	NotoSansMandaic-Regular.ttf \
	NotoSansMeeteiMayek-Regular.ttf \
	NotoSansMongolian-Regular.ttf \
	NotoSansMyanmar-Regular.ttf \
	NotoSansNewTaiLue-Regular.ttf \
	NotoSansNKo-Regular.ttf \
	NotoSansOgham-Regular.ttf \
	NotoSansOlChiki-Regular.ttf \
	NotoSansOldItalic-Regular.ttf \
	NotoSansOldPersian-Regular.ttf \
	NotoSansOldSouthArabian-Regular.ttf \
	NotoSansOldTurkic-Regular.ttf \
	NotoSansOsmanya-Regular.ttf \
	NotoSansPhagsPa-Regular.ttf \
	NotoSansPhoenician-Regular.ttf \
	NotoSansRejang-Regular.ttf \
	NotoSansRunic-Regular.ttf \
	NotoSansSamaritan-Regular.ttf \
	NotoSansSaurashtra-Regular.ttf \
	NotoSansShavian-Regular.ttf \
	NotoSansSinhala-Regular.ttf \
	NotoSansSundanese-Regular.ttf \
	NotoSansSylotiNagri-Regular.ttf \
	NotoSansSymbols-Regular.ttf \
	NotoSansSyriacEastern-Regular.ttf \
	NotoSansSyriacEstrangela-Regular.ttf \
	NotoSansSyriacWestern-Regular.ttf \
	NotoSansTagalog-Regular.ttf \
	NotoSansTagbanwa-Regular.ttf \
	NotoSansTaiLe-Regular.ttf \
	NotoSansTaiTham-Regular.ttf \
	NotoSansTaiViet-Regular.ttf \
	NotoSansTamil-Regular.ttf \
	NotoSansTelugu-Regular.ttf \
	NotoSansThaana-Regular.ttf \
	NotoSansThai-Regular.ttf \
	NotoSansTifinagh-Regular.ttf \
	NotoSansUgaritic-Regular.ttf \
	NotoSansVai-Regular.ttf \
	NotoSansYi-Regular.ttf

# Multilingual OTF, with Simplified Chinese as the default language
CJK_FONTS_SANS_REGULAR := NotoSansCJKsc-Regular.otf

FONTS_SANS_REGULAR := \
	NotoSans-Regular.ttf \
	$(CJK_FONTS_SANS_REGULAR) \
	$(LANGUAGE_FONTS_SANS_REGULAR)

LANGUAGE_FONTS_SANS_BOLD := \
	NotoNaskhArabic-Bold.ttf \
	NotoSansArmenian-Bold.ttf \
	NotoSansBengali-Bold.ttf \
	NotoSansCham-Bold.ttf \
	NotoSansDevanagari-Bold.ttf \
	NotoSansEthiopic-Bold.ttf \
	NotoSansGeorgian-Bold.ttf \
	NotoSansGujarati-Bold.ttf \
	NotoSansGurmukhi-Bold.ttf \
	NotoSansHebrew-Bold.ttf \
	NotoSansKannada-Bold.ttf \
	NotoSansKhmer-Bold.ttf \
	NotoSansLao-Bold.ttf \
	NotoSansMalayalam-Bold.ttf \
	NotoSansMyanmar-Bold.ttf \
	NotoSansSinhala-Bold.ttf \
	NotoSansTamil-Bold.ttf \
	NotoSansTelugu-Bold.ttf \
	NotoSansThai-Bold.ttf

# Multilingual OTF, with Simplified Chinese as the default language
CJK_FONTS_SANS_BOLD := NotoSansCJKsc-Bold.otf

FONTS_SANS_BOLD := \
	NotoSans-Bold.ttf \
	$(CJK_FONTS_SANS_BOLD) \
	$(LANGUAGE_FONTS_SANS_BOLD)

PREFIX ?= /usr/share/fonts/truetype/noto

all:

install-sans-regular: $(FONTS_SANS_REGULAR)
	mkdir -p $(DESTDIR)$(PREFIX)/sans
	install --mode=0644 --target-directory=$(DESTDIR)$(PREFIX)/sans $^

install-sans-bold: $(FONTS_SANS_BOLD)
	mkdir -p $(DESTDIR)$(PREFIX)/sans
	install --mode=0644 --target-directory=$(DESTDIR)$(PREFIX)/sans $^

install: install-sans-regular install-sans-bold

.PHONY: all install install-sans-regular install-sans-bold
