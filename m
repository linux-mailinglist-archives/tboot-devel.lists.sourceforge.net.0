Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 761E1550D16
	for <lists+tboot-devel@lfdr.de>; Sun, 19 Jun 2022 23:19:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o32Kf-00047a-4S; Sun, 19 Jun 2022 21:19:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1o32Kd-00047T-H4
 for tboot-devel@lists.sourceforge.net; Sun, 19 Jun 2022 21:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3oirwS+KHAT/CWrG+Lf9UqiS2kSuFDffTX76O7ITVig=; b=jp6bEMc2SFyOXXQysw5+cEH3Xf
 XksOSbrWqpp5cUpfjNcOHZLzSrwqQ3rFCTyRo6PvYVqEtFUqiK9eBYkibAqAIy1gv/PjaABDVEEMK
 EZWwSMl4rfxLlk3N9gs45hXhXOFP9UGCHI0CLw9BYUSBKgckwBPH/XsZTwejVmXfG2bo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3oirwS+KHAT/CWrG+Lf9UqiS2kSuFDffTX76O7ITVig=; b=M
 mRNdFpDX6yPS52RK/TBodmoZlr7uxVe2wfGXQmEtX6Nr3+9j7OIdtGj+USeUXKGsqvNYQzYe+dOxn
 ArVEwIyAFKhpEIjxTqs/ADRZI9XP84kXXxvVQFVBrDvKu81uk3F6anuOAun+jEZ02EkeC+2h6N2Go
 GxGpiMxNuJf+bQB4=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o32Kb-0005MH-IV
 for tboot-devel@lists.sourceforge.net; Sun, 19 Jun 2022 21:19:43 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 65A5D20194
 for <tboot-devel@lists.sourceforge.net>; Mon, 20 Jun 2022 00:19:35 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1655673575;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=3oirwS+KHAT/CWrG+Lf9UqiS2kSuFDffTX76O7ITVig=;
 b=Vb5Fu7obipBQN4XGSlbP9v69kxEChN22gFusKGyTLsYNBWg8i/1b1JRhYOxBmsRfb9moUn
 g0qYOA1fLeoJofmPefRiDHrulwWtwWG08Xur5Piy/y2zHeeMScZurawrvDEuMeTNuSeDBm
 QOs3xnxGaH7xug4++fAMdUg9gwBcbnw=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1o30P9-0001UN-Pg
 for tboot-devel@lists.sourceforge.net; Sun, 19 Jun 2022 22:16:15 +0300
Date: Sun, 19 Jun 2022 22:16:15 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2206192214160.5672@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1499868470-1655666175=:5672"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1655673575;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=3oirwS+KHAT/CWrG+Lf9UqiS2kSuFDffTX76O7ITVig=;
 b=W5fk9YK7T0ZYZhnrRyYqeRqRyR5+m44ZfWUgfvA8hafmkVr7QnyZVfSP2iRZigimvQEuhw
 H4XUkOogHh1/qG0PRfU6wReKDy8402zVtScvKdn4OJYO25pzx156IjOc+IK8prPSiVmqE7
 cAigWaH2uyu347SBcg49MU9y00OTl7I=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1655673575; a=rsa-sha256; cv=none;
 b=JCGxcXi6nmGl4gJO398spVnVNeRqq6zOhAhT2d+f9XYmGf5qIyYFh3QTzlbpiueXQkekk+
 5gwemP3UR8UjHDvQuV2VEIfKSdOjyKVbSIAtv0glEe7NS+t6uAm6g8yYZbS2LScXxgnx5V
 ZvA0Mr6BalVsf0VJsXEHhMjrRP7iLrA=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 please consider the attached patch. Currently tboot respects
 CFLAGS and LDFLAGS from the environment but not CPPFLAGS. -Timo 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o32Kb-0005MH-IV
Subject: [tboot-devel] PATCH: Use CPPFLAGS supplied by the environment
 during the build
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

--8323329-1499868470-1655666175=:5672
Content-Type: text/plain; format=flowed; charset=US-ASCII

Hi,

please consider the attached patch. Currently tboot respects CFLAGS and 
LDFLAGS from the environment but not CPPFLAGS.

-Timo

--8323329-1499868470-1655666175=:5672
Content-Type: text/x-diff; name=proposed_patch_cppflags.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.20.2206192216150.5672@mail.home>
Content-Description: 
Content-Disposition: attachment; filename=proposed_patch_cppflags.patch

IyBIRyBjaGFuZ2VzZXQgcGF0Y2gNCiMgVXNlciBUaW1vIExpbmRmb3JzIDx0
aW1vLmxpbmRmb3JzQGlraS5maT4NCiMgRGF0ZSAxNjU1NDU1MTUxIC0xMDgw
MA0KIyAgICAgIEZyaSBKdW4gMTcgMTE6Mzk6MTEgMjAyMiArMDMwMA0KIyBO
b2RlIElEIDJiZDdjN2EzM2Q0OWZmZWIwMWVkZDAzMDZiNTgxYjlmMzIwMzE2
ZTYNCiMgUGFyZW50ICAyMDZhNDdmM2U5ZDJjMThjOGEzZGIwODIyMTZlZTZm
YzNjNWQ0NzVjDQpVc2UgQ1BQRkxBR1Mgc3VwcGxpZWQgYnkgdGhlIGVudmly
b25tZW50IGR1cmluZyB0aGUgYnVpbGQNCg0KVGhpcyBtYWtlcyBpdCBwb3Nz
aWJsZSB0byB1c2UgZGlzdHJpYnV0aW9uLXdpZGUgc2VjdXJpdHkgaGFyZGVu
aW5nDQpvcHRpb25zIGF1dG9tYXRpY2FsbHkgd2l0aCB0Ym9vdCBidWlsZHMu
IFRoaXMgY29tbWl0IG9ubHkgYWRkcw0KQ1BQRkxBR1MgdG8gdXNlcmxhbmQg
dXRpbGl0aWVzIGFzIHRoZXJlIGlzIGEgcmlzayBvZiByZWdyZXNzaW9ucyBp
Zg0Kc3VjaCBoYXJkZW5pbmcgb3B0aW9ucyBhcmUgc2V0IGZvciB0aGUgdGJv
b3QgYmluYXJ5IGl0c2VsZi4NCg0KZGlmZiAtciAyMDZhNDdmM2U5ZDIgLXIg
MmJkN2M3YTMzZDQ5IGxjcHRvb2xzLXYyL01ha2VmaWxlDQotLS0gYS9sY3B0
b29scy12Mi9NYWtlZmlsZQlUaHUgTWFyIDE3IDIzOjU4OjUwIDIwMjIgKzAy
MDANCisrKyBiL2xjcHRvb2xzLXYyL01ha2VmaWxlCUZyaSBKdW4gMTcgMTE6
Mzk6MTEgMjAyMiArMDMwMA0KQEAgLTkzLDQgKzkzLDQgQEANCiBCVUlMRF9E
RVBTIDo9ICQoUk9PVERJUikvQ29uZmlnLm1rICQoQ1VSRElSKS9NYWtlZmls
ZQ0KIA0KICUubyA6ICUuYyAkKEhEUlMpICQoQlVJTERfREVQUykNCi0JJChD
QykgJChDRkxBR1MpIC1ETk9fVEJPT1RfTE9HTFZMIC1jICQ8IC1vICRADQor
CSQoQ0MpICQoQ0ZMQUdTKSAkKENQUEZMQUdTKSAtRE5PX1RCT09UX0xPR0xW
TCAtYyAkPCAtbyAkQA0KZGlmZiAtciAyMDZhNDdmM2U5ZDIgLXIgMmJkN2M3
YTMzZDQ5IHNhZmVzdHJpbmdsaWIvbWFrZWZpbGUNCi0tLSBhL3NhZmVzdHJp
bmdsaWIvbWFrZWZpbGUJVGh1IE1hciAxNyAyMzo1ODo1MCAyMDIyICswMjAw
DQorKysgYi9zYWZlc3RyaW5nbGliL21ha2VmaWxlCUZyaSBKdW4gMTcgMTE6
Mzk6MTEgMjAyMiArMDMwMA0KQEAgLTI2LDcgKzI2LDcgQEANCiANCiAkKE9E
SVIpLyUubzogJChTUkNESVIpLyUuYyAkKERFUFMpICQoT0RFUFMpDQogCW1r
ZGlyIC1wICQoT0RJUikNCi0JJChDQykgJChMREZMQUdTKSAtYyAtbyAkQCAk
PCAkKENGTEFHUykNCisJJChDQykgJChMREZMQUdTKSAtYyAtbyAkQCAkPCAk
KENGTEFHUykgJChDUFBGTEFHUykNCiANCiBsaWJzYWZlc3RyaW5nLmE6ICQo
T0JKKQ0KIAlhciByY3MgJEAgJF4gDQpAQCAtNDEsNyArNDEsNyBAQA0KIA0K
ICQoT1RESVIpLyUubzogJChURVNURElSKS8lLmMgJChURVNURElSKS90ZXN0
X3ByaXZhdGUuaA0KIAlta2RpciAtcCAkKE9URElSKQ0KLQkkKENDKSAtYyAt
byAkQCAkPCAkKENGTEFHUykNCisJJChDQykgLWMgLW8gJEAgJDwgJChDRkxB
R1MpICQoQ1BQRkxBR1MpDQogDQogDQogc2FmZXN0cmluZ3Rlc3Q6IGxpYnNh
ZmVzdHJpbmcuYSAkKFRPQkopDQpkaWZmIC1yIDIwNmE0N2YzZTlkMiAtciAy
YmQ3YzdhMzNkNDkgdGJfcG9sZ2VuL01ha2VmaWxlDQotLS0gYS90Yl9wb2xn
ZW4vTWFrZWZpbGUJVGh1IE1hciAxNyAyMzo1ODo1MCAyMDIyICswMjAwDQor
KysgYi90Yl9wb2xnZW4vTWFrZWZpbGUJRnJpIEp1biAxNyAxMTozOToxMSAy
MDIyICswMzAwDQpAQCAtNjIsNCArNjIsNCBAQA0KIEJVSUxEX0RFUFMgOj0g
JChST09URElSKS9Db25maWcubWsgJChDVVJESVIpL01ha2VmaWxlDQogDQog
JS5vIDogJS5jICQoSERSUykgJChCVUlMRF9ERVBTKQ0KLQkkKENDKSAkKENG
TEFHUykgLUROT19UQk9PVF9MT0dMVkwgLWMgJDwgLW8gJEANCisJJChDQykg
JChDRkxBR1MpICQoQ1BQRkxBR1MpIC1ETk9fVEJPT1RfTE9HTFZMIC1jICQ8
IC1vICRADQpkaWZmIC1yIDIwNmE0N2YzZTlkMiAtciAyYmQ3YzdhMzNkNDkg
dXRpbHMvTWFrZWZpbGUNCi0tLSBhL3V0aWxzL01ha2VmaWxlCVRodSBNYXIg
MTcgMjM6NTg6NTAgMjAyMiArMDIwMA0KKysrIGIvdXRpbHMvTWFrZWZpbGUJ
RnJpIEp1biAxNyAxMTozOToxMSAyMDIyICswMzAwDQpAQCAtNjEsNCArNjEs
NCBAQA0KIHR4dC1hY21pbmZvIDogdHh0LWFjbWluZm8ubw0KIAkkKENDKSAk
KENGTEFHUykgJChMREZMQUdTKSAkXiAkKExJQlMpIC1vICRADQogJS5vIDog
JS5jICQoQlVJTERfREVQUykNCi0JJChDQykgJChDRkxBR1MpIC1ETk9fVEJP
T1RfTE9HTFZMIC1jICQ8IC1vICRADQorCSQoQ0MpICQoQ0ZMQUdTKSAkKENQ
UEZMQUdTKSAtRE5PX1RCT09UX0xPR0xWTCAtYyAkPCAtbyAkQA0K

--8323329-1499868470-1655666175=:5672
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--8323329-1499868470-1655666175=:5672
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--8323329-1499868470-1655666175=:5672--

