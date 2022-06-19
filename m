Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9183D550D13
	for <lists+tboot-devel@lfdr.de>; Sun, 19 Jun 2022 23:17:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o32If-0006Jf-Je; Sun, 19 Jun 2022 21:17:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1o32Ia-0006JY-BP
 for tboot-devel@lists.sourceforge.net; Sun, 19 Jun 2022 21:17:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y67zACOjmQOq0Brh+jkaZP919hqNawPL3J61uc5gJ+4=; b=MCZrw+UlIXm9rKJEjSfhdhmikI
 8L2ANCucqEyD22bTB1naoDxyiP1J+MnqCwgxd5ypDNdDk7Wt7B7V4ozoivWs5SzYsfMcqpyLrYjQ3
 3pWPHQtYr+xMyunlTrXBOUm5ecJQYpHhHE+y+lSSKjrEG3yUQElYZ0O0ADSNum3a0gT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y67zACOjmQOq0Brh+jkaZP919hqNawPL3J61uc5gJ+4=; b=W
 CNFMI4fEqWYhkT7SmKRNoUOqEZk6ouRrxouqY5SMBoDamBxQ+RSmwdGo97yFu42SCJPQ+zwkTu9F2
 f4MLc9Lc3Ejx+6i2r4k69Rx51Bgc36QVR/qTd0BPYVmxHXOuEjbvadOtfhbSRbz+KJDckr3GZzgDL
 1juq5d/jWMvCuTwo=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o32IU-007bPw-GQ
 for tboot-devel@lists.sourceforge.net; Sun, 19 Jun 2022 21:17:36 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 8683E1B001CF
 for <tboot-devel@lists.sourceforge.net>; Mon, 20 Jun 2022 00:17:18 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1655673438;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=Y67zACOjmQOq0Brh+jkaZP919hqNawPL3J61uc5gJ+4=;
 b=dZHULA+GfD/JdKRbkkl770FeDsjS4cNgzSUQ8x7CGDMQYOQnOPgApRuqOgPzNTVdZeB84H
 pwFh+kAbmi9IWhQwyKf4aAX2jrZGICtqNA4aIenz4EtHuU9qZfCkzPAs9kGtptLkeytjQO
 ioTWmX991AkHVKyT4e3jt8T2pUnd/sfNbswQCYsByssEU0h7yL+bGhM5BUthMZgSK+96ca
 QKa8YCfrNz0XX96PHyC7A/b6l/pUn5ITGzKPwAdO6bHtjtewNjQ2WKpH7PrZrkIblXG2HL
 Sq15WF5b32Xx3YagAjXG6I0c0eYqSm3Ugr6R9faskcSJUXZYKLHZMSSQfyMvNQ==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1o30Mw-0001U5-Rh
 for tboot-devel@lists.sourceforge.net; Sun, 19 Jun 2022 22:13:58 +0300
Date: Sun, 19 Jun 2022 22:13:58 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2206192209300.5672@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-607472031-1655666038=:5672"
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1655673438; a=rsa-sha256; cv=none;
 b=AuJb9bLNKHpkp259eViX6l/VUuA6BIoS5Db50l5BFvYTzOiMtPDTFowRELlMh8kQ20hcvM
 cGpAW75IKMXfV2/MPDYqhTrlr9klCcz93DQ9ikHb1kQHU/fAF4zL/NFWJ0CtoLXvLwexHb
 GmgzmTfdyDspWK0Fwn0Jk6VqqYoaFZdslk18unK/i66e7vuX1gQJ8BgM4Z2W+JHGcP6XoR
 PQBO107tKCipFmGh+WGHd+Jy3ZljqlgGb6LjBTbirbEV+PgZ1xG00l7ZsCUR2fD+TLzOlX
 X4mldIoY12ZqwwKN2kn49kR0HteBXAULd0GcBDJkj7ZWCidbfT1LIxR0oCXwKg==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1655673438;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=Y67zACOjmQOq0Brh+jkaZP919hqNawPL3J61uc5gJ+4=;
 b=BJWN2+x/ZyGPLJgEa+BrRgVLVOyzxeOpI9wDC/OKNUwzsI732vou8U/LQy1fSTQNHVs6zx
 HbGcjj+vbnBeSCPwcLFNTXikTz6+9r06XszpxQJJ0d8Iropi781wKm81TvILuOrVjRb4Wu
 LMMZGfNfNlDDBQYV0/ExE4VatISwBex66MHPaQljLaJBmcnNnWoHaw+i1ZO+pI6kySgorl
 5CRAVvb2O8IqQsaUZMtV5J8MX3wKy5XCzB/3gT6qJmZFG27s6vV1K/Wbs2lOEM4ya/v4+R
 OqauII+xt5s0jWoZrZ3I8Itdx5ZuwzwfiDKuCJnur/h6KU21ISfdoT9rBQ8MPA==
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, please consider the attached patch to help make tboot
 builds reproducible. Currently using -Werror -Wdate-time causes the build
 to fail. The option -Wdate-time is described as: 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o32IU-007bPw-GQ
Subject: [tboot-devel] PATCH: Remove references to __DATE__ to make the
 build reproducible
X-BeenThere: tboot-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer support for Trusted Boot <tboot-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tboot-devel>,
 <mailto:tboot-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tboot-devel>
List-Post: <mailto:tboot-devel@lists.sourceforge.net>
List-Help: <mailto:tboot-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tboot-devel>,
 <mailto:tboot-devel-request@lists.sourceforge.net?subject=subscribe>
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--8323329-607472031-1655666038=:5672
Content-Type: text/plain; format=flowed; charset=US-ASCII

Hi,

please consider the attached patch to help make tboot builds reproducible. 
Currently using -Werror -Wdate-time causes the build to fail.

The option -Wdate-time is described as:

     "Warn when macros __TIME__, __DATE__ or __TIMESTAMP__ are encountered
      as they might prevent bit-wise-identical reproducible compilations."




-Timo

--8323329-607472031-1655666038=:5672
Content-Type: text/x-diff; name=proposed_patch_time.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.20.2206192213580.5672@mail.home>
Content-Description: 
Content-Disposition: attachment; filename=proposed_patch_time.patch

IyBIRyBjaGFuZ2VzZXQgcGF0Y2gNCiMgVXNlciBUaW1vIExpbmRmb3JzIDx0
aW1vLmxpbmRmb3JzQGlraS5maT4NCiMgRGF0ZSAxNjU1NDgyMDE3IC0xMDgw
MA0KIyAgICAgIEZyaSBKdW4gMTcgMTk6MDY6NTcgMjAyMiArMDMwMA0KIyBO
b2RlIElEIDBkODBmYWRlYmRmMWFiZDM1MDNhOGY0OTExYmZiNzJkZTM1MmNk
NzMNCiMgUGFyZW50ICAyYmQ3YzdhMzNkNDlmZmViMDFlZGQwMzA2YjU4MWI5
ZjMyMDMxNmU2DQpSZW1vdmUgcmVmZXJlbmNlcyB0byBfX0RBVEVfXyB0byBt
YWtlIHRoZSBidWlsZCByZXByb2R1Y2libGUNCg0KZGlmZiAtciAyYmQ3Yzdh
MzNkNDkgLXIgMGQ4MGZhZGViZGYxIGxjcHRvb2xzLXYyL2NydHBvbC5jDQot
LS0gYS9sY3B0b29scy12Mi9jcnRwb2wuYwlGcmkgSnVuIDE3IDExOjM5OjEx
IDIwMjIgKzAzMDANCisrKyBiL2xjcHRvb2xzLXYyL2NydHBvbC5jCUZyaSBK
dW4gMTcgMTk6MDY6NTcgMjAyMiArMDMwMA0KQEAgLTc4MCw4ICs3ODAsOCBA
QA0KICAgICB9DQogDQogICAgIGVsc2UgaWYgKCBjbWQgPT0gJ1YnICkgLyog
LS12ZXJzaW9uICovIHsNCi0gICAgICAgIERJU1BMQVkoImxjcDJfY3J0cG9s
IHZlcnNpb246ICVpLiVpXG5CdWlsZCBkYXRlOiAlcyIsIFRPT0xfVkVSX01B
Sk9SLA0KLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBUT09MX1ZFUl9NSU5PUiwgX19EQVRFX18pOw0KKyAg
ICAgICAgRElTUExBWSgibGNwMl9jcnRwb2wgdmVyc2lvbjogJWkuJWkiLCBU
T09MX1ZFUl9NQUpPUiwNCisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgVE9PTF9WRVJfTUlOT1IpOw0KICAgICAgICAg
cmV0dXJuIDA7DQogICAgIH0NCiANCmRpZmYgLXIgMmJkN2M3YTMzZDQ5IC1y
IDBkODBmYWRlYmRmMSBsY3B0b29scy12Mi9jcnRwb2xlbHQuYw0KLS0tIGEv
bGNwdG9vbHMtdjIvY3J0cG9sZWx0LmMJRnJpIEp1biAxNyAxMTozOToxMSAy
MDIyICswMzAwDQorKysgYi9sY3B0b29scy12Mi9jcnRwb2xlbHQuYwlGcmkg
SnVuIDE3IDE5OjA2OjU3IDIwMjIgKzAzMDANCkBAIC0yNjEsOCArMjYxLDgg
QEANCiAgICAgfQ0KIA0KICAgICBlbHNlIGlmICggY21kID09ICdWJyApIC8q
IC0tdmVyc2lvbiAqLyB7DQotICAgICAgICBESVNQTEFZKCJsY3AyX2NydHBv
bGVsdCB2ZXJzaW9uOiAlaS4laVxuQnVpbGQgZGF0ZTogJXMiLCBUT09MX1ZF
Ul9NQUpPUiwNCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgVE9PTF9WRVJfTUlOT1IsIF9fREFURV9fKTsN
CisgICAgICAgIERJU1BMQVkoImxjcDJfY3J0cG9sZWx0IHZlcnNpb246ICVp
LiVpIiwgVE9PTF9WRVJfTUFKT1IsDQorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRPT0xfVkVSX01JTk9SKTsN
CiAgICAgICAgIHJldHVybiAwOw0KICAgICB9DQogDQpkaWZmIC1yIDJiZDdj
N2EzM2Q0OSAtciAwZDgwZmFkZWJkZjEgbGNwdG9vbHMtdjIvY3J0cG9sbGlz
dC5jDQotLS0gYS9sY3B0b29scy12Mi9jcnRwb2xsaXN0LmMJRnJpIEp1biAx
NyAxMTozOToxMSAyMDIyICswMzAwDQorKysgYi9sY3B0b29scy12Mi9jcnRw
b2xsaXN0LmMJRnJpIEp1biAxNyAxOTowNjo1NyAyMDIyICswMzAwDQpAQCAt
NzM1LDggKzczNSw4IEBADQogICAgICAgICByZXR1cm4gdmVyaWZ5KCk7DQog
ICAgIH0NCiAgICAgZWxzZSBpZiAoIGNtZCA9PSAndicgKSB7IC8qIC0tdmVy
c2lvbiAqLw0KLSAgICAgICAgRElTUExBWSgibGNwMl9jcnRwb2xsaXN0IHZl
cnNpb246ICVpLiVpXG5CdWlsZCBkYXRlOiAlcyIsIFRPT0xfVkVSX01BSk9S
LA0KLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBUT09MX1ZFUl9NSU5PUiwgX19EQVRFX18pOw0KKyAgICAg
ICAgRElTUExBWSgibGNwMl9jcnRwb2xsaXN0IHZlcnNpb246ICVpLiVpIiwg
VE9PTF9WRVJfTUFKT1IsDQorICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBUT09MX1ZFUl9NSU5PUik7DQogICAg
ICAgICByZXR1cm4gMDsNCiAgICAgfQ0KIA0KZGlmZiAtciAyYmQ3YzdhMzNk
NDkgLXIgMGQ4MGZhZGViZGYxIGxjcHRvb2xzLXYyL21sZWhhc2guYw0KLS0t
IGEvbGNwdG9vbHMtdjIvbWxlaGFzaC5jCUZyaSBKdW4gMTcgMTE6Mzk6MTEg
MjAyMiArMDMwMA0KKysrIGIvbGNwdG9vbHMtdjIvbWxlaGFzaC5jCUZyaSBK
dW4gMTcgMTk6MDY6NTcgMjAyMiArMDMwMA0KQEAgLTQ5MCw4ICs0OTAsOCBA
QA0KICAgICB9DQogDQogICAgIGVsc2UgaWYgKCBjbWQgPT0gJ1YnICkgLyog
LS12ZXJzaW9uICovIHsNCi0gICAgICAgIERJU1BMQVkoImxjcDJfbWxlaGFz
aCB2ZXJzaW9uOiAlaS4laVxuQnVpbGQgZGF0ZTogJXMiLCBUT09MX1ZFUl9N
QUpPUiwNCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgVE9PTF9WRVJfTUlOT1IsIF9fREFURV9fKTsNCisg
ICAgICAgIERJU1BMQVkoImxjcDJfbWxlaGFzaCB2ZXJzaW9uOiAlaS4laSIs
IFRPT0xfVkVSX01BSk9SLA0KKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgVE9PTF9WRVJfTUlOT1IpOw0KICAgICAg
ICAgcmV0ID0gMDsNCiAgICAgICAgIGdvdG8gb3V0Ow0KICAgICB9DQo=

--8323329-607472031-1655666038=:5672
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--8323329-607472031-1655666038=:5672
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--8323329-607472031-1655666038=:5672--

