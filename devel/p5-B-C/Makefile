# Created by: Sergei Vyshenski <svysh.fbsd@gmail.com>
# $FreeBSD$

PORTNAME=	B-C
PORTVERSION=	1.55
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:RURBAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl compiler's C backend #'

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-B-Flags>=0.15:devel/p5-B-Flags \
		p5-Opcodes>=0:devel/p5-Opcodes \
		p5-IPC-Run>=0:devel/p5-IPC-Run
RUN_DEPENDS:=	${BUILD_DEPENDS}

PORTSCOUT=	limit:^[0-9\.]*$$

USES=		perl5
USE_PERL5=	configure
PERL_INC_STAGE=	${STAGEDIR}${PREFIX}/lib/perl5/${PERL_VER}/${PERL_ARCH}/CORE
MAKE_ENV+=	PERL_INC_STAGE=${PERL_INC_STAGE}
PLIST_SUB+=	PERL_ARCH=${PERL_ARCH}

post-patch:
	${REINPLACE_CMD} -e "s|PERL_INC|PERL_INC_STAGE|g" ${WRKSRC}/Makefile.PL
	${MKDIR} ${PERL_INC_STAGE}

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/B/C/C.so
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/B/Stash/Stash.so
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/ByteLoader/ByteLoader.so

.include <bsd.port.mk>
