APKTOOL="java -jar apktool.jar"

# Clean old files
rm -rf decomp hacked*.apk

echo "[*] Decompile apk..."
$APKTOOL d original.apk --output decomp
echo "[*] Patch..."
patch -s -p0 < librus-patch.patch
echo "[*] Rebuild apk..."
$APKTOOL b decomp --output hacked-unaligned.apk
echo "[*] Align apk..."
zipalign -v -p 4 hacked-unaligned.apk hacked.apk
if [ ! -f keys.keystore ]; then
	echo "[*] Generate signing key..."
	keytool -genkey -v -keystore keys.keystore -keyalg RSA -keysize 2048 -validity 10000 -alias app -noprompt -storepass 123456 -keypass 123456 -dname "CN=krzys_h"
fi
echo "[*] Sign apk..."
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore keys.keystore -storepass 123456 -keypass 123456 hacked.apk app
echo "[*] DONE!"
