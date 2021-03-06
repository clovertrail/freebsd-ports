# Created by: Johannes Meixner <johannes@perceivon.net>
# $FreeBSD$

PORTNAME=	rails
PORTVERSION=	5.1.0
CATEGORIES=	www rubygems
MASTER_SITES=	RG
PKGNAMESUFFIX=	5

MAINTAINER=	jrm@FreeBSD.org
COMMENT=	Full-stack web application framework

LICENSE=	MIT

RUN_DEPENDS=	rubygem-actioncable5>=5.1.0:www/rubygem-actioncable5 \
		rubygem-actionmailer5>=5.1.0:mail/rubygem-actionmailer5 \
		rubygem-actionpack5>=5.1.0:www/rubygem-actionpack5 \
		rubygem-actionview5>=5.1.0:devel/rubygem-actionview5 \
		rubygem-activejob5>=5.1.0:devel/rubygem-activejob5 \
		rubygem-activemodel5>=5.1.0:databases/rubygem-activemodel5 \
		rubygem-activerecord5>=5.1.0:databases/rubygem-activerecord5 \
		rubygem-activesupport5>=5.1.0:devel/rubygem-activesupport5 \
		rubygem-bundler<2.0:sysutils/rubygem-bundler \
		rubygem-railties5>=5.1.0:www/rubygem-railties5

RUN_DEPENDS+=	rubygem-sprockets-rails>=2.0.0:devel/rubygem-sprockets-rails \
		rubygem-byebug>=9.0.6:devel/rubygem-byebug \
		rubygem-coffee-rails-rails5>=4.2.1:devel/rubygem-coffee-rails-rails5 \
		rubygem-coffee-script-source>=1.12.2:devel/rubygem-coffee-script-source \
		rubygem-coffee-script>=2.4.1:devel/rubygem-coffee-script \
		rubygem-execjs>=2.7.0:devel/rubygem-execjs \
		rubygem-jbuilder>=2.6.3:devel/rubygem-jbuilder \
		rubygem-jquery-rails-rails5>=4.3.1:www/rubygem-jquery-rails-rails5 \
		rubygem-multi_json>=1.12.1:devel/rubygem-multi_json \
		rubygem-puma>=3.8.2:www/rubygem-puma \
		rubygem-sass-rails-rails5>=5.0.3:textproc/rubygem-sass-rails-rails5 \
		rubygem-sass>=3.4.23:textproc/rubygem-sass \
		rubygem-spring>=2.0.1:devel/rubygem-spring \
		rubygem-sqlite3>=1.3.13:databases/rubygem-sqlite3 \
		rubygem-tilt>=2.0.7:devel/rubygem-tilt \
		rubygem-turbolinks-source>=5.0.0:www/rubygem-turbolinks-source \
		rubygem-turbolinks-rails5>=5.0.1:www/rubygem-turbolinks-rails5 \
		rubygem-uglifier>=3.2.0:www/rubygem-uglifier \
		rubygem-web-console>=3.5.0:devel/rubygem-web-console \
		rubygem-bindex>=0.5.0:devel/rubygem-bindex

NO_ARCH=	yes
USE_RUBY=	yes
USES=		gem

CPE_VENDOR=	rubyonrails
CPE_PRODUCT=	ruby_on_rails

.include <bsd.port.mk>
