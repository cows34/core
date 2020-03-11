QT       -= core gui

TARGET = CryptoPPLib
TEMPLATE = lib
CONFIG += staticlib

DEFINES += CRYPTOPPLIB_LIBRARY

CORE_ROOT_DIR = $$PWD/../../../..
PWD_ROOT_DIR = $$PWD

include(../../../../Common/base.pri)

core_linux:DEFINES -= NDEBUG
core_mac:DEFINES -= MAC
core_ios:DEFINES -= MAC
core_windows:DEFINES -= UNICODE _UNICODE

DEFINES += CRYPTOPP_DISABLE_ASM

HEADERS += \
    ../3way.h \
    ../adler32.h \
    ../aes.h \
    ../algebra.h \
    ../algparam.h \
    ../arc4.h \
    ../argnames.h \
    ../asn.h \
    ../authenc.h \
    ../base32.h \
    ../base64.h \
    ../basecode.h \
    ../bench.h \
    ../blowfish.h \
    ../blumshub.h \
    ../camellia.h \
    ../cast.h \
    ../cbcmac.h \
    ../ccm.h \
    ../channels.h \
    ../cmac.h \
    ../config.h \
    ../cpu.h \
    ../crc.h \
    ../default.h \
    ../des.h \
    ../dh.h \
    ../dh2.h \
    ../dmac.h \
    ../dsa.h \
    ../eax.h \
    ../ec2n.h \
    ../eccrypto.h \
    ../ecp.h \
    ../elgamal.h \
    ../emsa2.h \
    ../eprecomp.h \
    ../esign.h \
    ../factory.h \
    ../files.h \
    ../filters.h \
    ../fips140.h \
    ../fltrimpl.h \
    ../gcm.h \
    ../gf2_32.h \
    ../gf2n.h \
    ../gf256.h \
    ../gfpcrypt.h \
    ../gost.h \
    ../gzip.h \
    ../hex.h \
    ../hkdf.h \
    ../hmac.h \
    ../hrtimer.h \
    ../ida.h \
    ../idea.h \
    ../integer.h \
    ../iterhash.h \
    ../lubyrack.h \
    ../luc.h \
    ../mars.h \
    ../md2.h \
    ../md4.h \
    ../md5.h \
    ../mdc.h \
    ../mersenne.h \
    ../misc.h \
    ../modarith.h \
    ../modes.h \
    ../modexppc.h \
    ../mqueue.h \
    ../mqv.h \
    ../nbtheory.h \
    ../network.h \
    ../nr.h \
    ../oaep.h \
    ../oids.h \
    ../osrng.h \
    ../panama.h \
    ../pch.h \
    ../pkcspad.h \
    ../polynomi.h \
    ../pssr.h \
    ../pubkey.h \
    ../pwdbased.h \
    ../queue.h \
    ../rabin.h \
    ../randpool.h \
    ../rc2.h \
    ../rc5.h \
    ../rc6.h \
    ../rdrand.h \
    ../dll.h \
    ../resource.h \
    ../rijndael.h \
    ../ripemd.h \
    ../rng.h \
    ../rsa.h \
    ../rw.h \
    ../safer.h \
    ../salsa.h \
    ../seal.h \
    ../secblock.h \
    ../seckey.h \
    ../seed.h \
    ../serpent.h \
    ../serpentp.h \
    ../sha.h \
    ../sha3.h \
    ../shacal2.h \
    ../shark.h \
    ../simple.h \
    ../skipjack.h \
    ../smartptr.h \
    ../socketft.h \
    ../sosemanuk.h \
    ../square.h \
    ../stdcpp.h \
    ../strciphr.h \
    ../tea.h \
    ../tiger.h \
    ../trdlocal.h \
    ../trunhash.h \
    ../ttmac.h \
    ../twofish.h \
    ../validate.h \
    ../vmac.h \
    ../wait.h \
    ../wake.h \
    ../whrlpool.h \
    ../winpipes.h \
    ../words.h \
    ../xtr.h \
    ../xtrcrypt.h \
    ../zdeflate.h \
    ../zinflate.h \
    ../zlib.h \
    ../blake2.h \
    ../tweetnacl.h \
    ../trap.h \
    ../threefish.h \
    ../speck.h \
    ../sm4.h \
    ../sm3.h \
    ../siphash.h \
    ../simon.h \
    ../scrypt.h \
    ../ppc-simd.h \
    ../poly1305.h \
    ../padlkrng.h \
    ../ossig.h \
    ../naclite.h \
    ../keccak.h \
    ../kalyna.h \
    ../hmqv.h \
    ../hashfwd.h \
    ../fhmqv.h \
    ../ecpoint.h \
    ../drbg.h \
    ../chacha.h \
    ../aria.h \
    ../adv-simd.h \
    ../cryptlib.h

# List cryptlib.cpp first, then cpu.cpp, then integer.cpp to tame C++ static initialization problems.
SOURCES += \
    ../cryptlib.cpp \
    ../cpu.cpp \
    ../integer.cpp \
    ../3way.cpp \
    ../adler32.cpp \
    ../algebra.cpp \
    ../algparam.cpp \
    ../arc4.cpp \
    ../aria-simd.cpp \
    ../aria.cpp \
    ../ariatab.cpp \
    ../asn.cpp \
    ../authenc.cpp \
    ../base32.cpp \
    ../base64.cpp \
    ../basecode.cpp \
    ../bfinit.cpp \
    ../blake2-simd.cpp \
    ../blake2.cpp \
    ../blowfish.cpp \
    ../blumshub.cpp \
    ../camellia.cpp \
    ../cast.cpp \
    ../casts.cpp \
    ../cbcmac.cpp \
    ../ccm.cpp \
    ../chacha.cpp \
    ../channels.cpp \
    ../cmac.cpp \
    ../crc-simd.cpp \
    ../crc.cpp \
    ../default.cpp \
    ../des.cpp \
    ../dessp.cpp \
    ../dh.cpp \
    ../dh2.cpp \
    ../dll.cpp \
    ../dsa.cpp \
    ../eax.cpp \
    ../ec2n.cpp \
    ../eccrypto.cpp \
    ../ecp.cpp \
    ../elgamal.cpp \
    ../emsa2.cpp \
    ../eprecomp.cpp \
    ../esign.cpp \
    ../files.cpp \
    ../filters.cpp \
    ../fips140.cpp \
    ../fipstest.cpp \
    ../gcm-simd.cpp \
    ../gcm.cpp \
    ../gf256.cpp \
    ../gf2_32.cpp \
    ../gf2n.cpp \
    ../gfpcrypt.cpp \
    ../gost.cpp \
    ../gzip.cpp \
    ../hex.cpp \
    ../hmac.cpp \
    ../hrtimer.cpp \
    ../ida.cpp \
    ../idea.cpp \
    ../iterhash.cpp \
    ../kalyna.cpp \
    ../kalynatab.cpp \
    ../keccak.cpp \
    ../luc.cpp \
    ../mars.cpp \
    ../marss.cpp \
    ../md2.cpp \
    ../md4.cpp \
    ../md5.cpp \
    ../misc.cpp \
    ../modes.cpp \
    ../mqueue.cpp \
    ../mqv.cpp \
    ../nbtheory.cpp \
    ../neon-simd.cpp \
    ../network.cpp \
    ../oaep.cpp \
    ../osrng.cpp \
    ../panama.cpp \
    ../pkcspad.cpp \
    ../poly1305.cpp \
    ../polynomi.cpp \
    ../pssr.cpp \
    ../pubkey.cpp \
    ../queue.cpp \
    ../rabin.cpp \
    ../randpool.cpp \
    ../rc2.cpp \
    ../rc5.cpp \
    ../rc6.cpp \
    ../rdrand.cpp \
    ../rdtables.cpp \
    ../rijndael.cpp \
    ../ripemd.cpp \
    ../rng.cpp \
    ../rsa.cpp \
    ../rw.cpp \
    ../safer.cpp \
    ../salsa.cpp \
    ../seal.cpp \
    ../seed.cpp \
    ../serpent.cpp \
    ../sha-simd.cpp \
    ../sha.cpp \
    ../sha3.cpp \
    ../shacal2-simd.cpp \
    ../shacal2.cpp \
    ../shark.cpp \
    ../sharkbox.cpp \
    ../skipjack.cpp \
    ../socketft.cpp \
    ../sosemanuk.cpp \
    ../square.cpp \
    ../squaretb.cpp \
    ../sse-simd.cpp \
    ../strciphr.cpp \
    ../tea.cpp \
    ../tftables.cpp \
    ../threefish.cpp \
    ../tiger.cpp \
    ../tigertab.cpp \
    ../trdlocal.cpp \
    ../ttmac.cpp \
    ../twofish.cpp \
    ../vmac.cpp \
    ../wait.cpp \
    ../wake.cpp \
    ../whrlpool.cpp \
    ../xtr.cpp \
    ../xtrcrypt.cpp \
    ../zdeflate.cpp \
    ../zinflate.cpp \
    ../zlib.cpp