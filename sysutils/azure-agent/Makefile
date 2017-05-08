# $FreeBSD$

PORTNAME=	azure-agent
PORTVERSION=	2.2.8
CATEGORIES=	sysutils
MAINTAINER=	honzhan@microsoft.com
COMMENT=	The Microsoft Azure Linux Agent

LICENSE=	APACHE20

RUN_DEPENDS=	python:lang/python \
		sudo:security/sudo \
		bash:shells/bash \
		base64:converters/base64 \
		${PYTHON_PKGNAMEPREFIX}pyasn1>=0:devel/py-pyasn1 \
		${LOCALBASE}/share/certs/ca-root-nss.crt:security/ca_root_nss

NO_BUILD=	yes
USES=		python:2

USE_GITHUB=     yes
GH_ACCOUNT=     Azure
GH_PROJECT=     WALinuxAgent
GH_TAGNAME=     v2.2.8

PLIST_FILES=	sbin/waagent

USE_PYTHON=	autoplist distutils

.include <bsd.port.options.mk>

.include <bsd.port.mk>
