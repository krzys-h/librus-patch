librus-patch
============

Librus wyłączył swoją [starą aplikację](https://play.google.com/store/apps/details?id=pl.devcraft.edziennik) zastępując ją [nową](https://play.google.com/store/apps/details?id=pl.librus.synergiaDru2). Moim zdaniem stara wersja aplikacji jest dużo wygodniejsza w obsłudze (i jak widać po ocenach w Google Play nie jestem jedyny), więc zmodyfikowałem ją żeby działała z nową konfiguracją API.

Możesz zbudować spatchowaną waną wersję samodzielnie używając skryptu patch.sh, albo możesz pobrać już zbudowane wersje pod https://github.com/krzys-h/librus-patch/releases

FAQ
---

1. **Nie mogę zainstalować aplikacji**

  Ze względu na zabezpieczenia systemu Android przed nieautoryzowanymi aktualizacjami, przed zainstalowaniem zmodyfikowanej wersji aplikacji trzeba odinstalować tę oryginalną.

2. **Synchronizacja nie powiodła się, wystąpił błąd LIBRUS_MOBILE_APP_ACCEPT_NEEDED**

  Należy przynajmniej raz uruchomić NOWĄ oficjalną aplikację, zalogować się do niej i zaakceptować regulamin
