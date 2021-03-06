# $FreeBSD$

.if !defined(LICENSE)
LICENSE=	MIT PSFL
LICENSE_COMB=	multi
.endif

USES+=		compiler:c11

PYPY_DIR=	${PORTNAME}-${PORTVERSION:C|([0-9])\.([0-9]).*|\1.\2|}
PYPY_CFFI_VER?=	pypy-41
PLIST_SUB+=	PYPY_DIR=${PYPY_DIR} PYPY_CFFI_VER=${PYPY_CFFI_VER}
