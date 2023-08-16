Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E677D77E86A
	for <lists+tboot-devel@lfdr.de>; Wed, 16 Aug 2023 20:13:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1qWL1B-00010q-SE;
	Wed, 16 Aug 2023 18:13:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <01020189ff7f0863-c9f7decc-ca49-4793-ae1e-1b56ed33d331-000000@mail.imlibra.me>)
 id 1qWL17-00010D-SB for tboot-devel@lists.sourceforge.net;
 Wed, 16 Aug 2023 18:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:References:Date:To:From:
 Subject:Sender:Reply-To:Cc:MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cU5ooum8cYaGcLZU+C+tiqf5GWd/kMajtxYCFxzZ6is=; b=AH5ELxwlJB28RdbMdx3BJETlfi
 X4/SjqSXaSASfv+2YhoFieAoCjp3d/XBPMYArH0iC+U0mqWUFh6oeqhV+MRrUChTXEcGIKnK3rWtP
 I3Q3i9k+az095LVCTKRCmwFc58oFpJiWfsUBSJPO/QfcqXdvk6/kNiyb8mmLRIixTaBA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:References:Date:To:From:Subject:Sender:Reply-To:
 Cc:MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cU5ooum8cYaGcLZU+C+tiqf5GWd/kMajtxYCFxzZ6is=; b=E
 peb1+GsIo6mHM0VnTBJPhr0IYIZyoREb0ayi7UMXVH406DgUjC5IjCsKdChc5f00kHz498sP7vZEP
 XFd7SUkxGX2GmFbVlDRC9gExUJUcZlXo4oInNKr5TPOxwJOMPFzPdcFjiqV+4NzrOWTwYiUwMtHYd
 FZoqZEK6/mqO3MVE=;
Received: from a2-65.smtp-out.eu-west-1.amazonses.com ([54.240.2.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.95) id 1qWL12-007HQO-P1
 for tboot-devel@lists.sourceforge.net;
 Wed, 16 Aug 2023 18:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=ysivjl5iuijkqin64yhn2hkb5k4wcd3a; d=imlibra.me; t=1692208663;
 h=Subject:From:To:Date:References:Message-Id:Content-Type;
 bh=eOJpqXB6hxUVEaRiNavWTIYsoVcZTtjefbpAFBMz/TU=;
 b=IGpZsRWK33nroretmU8ZxkHufjZlLEkvAN+WFndpWOvOCh65hLOmFbF+P88IoIMl
 h1phasYDoQrnm5V01jJGleMaWU3MuEUSlkkqLg0oh4fCfaSIsBBuSesUCi9hEBe30Sd
 tqnbOoAJKJqQM43e7hfscII7UWDOGvHSpxjKx4JE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=shh3fegwg5fppqsuzphvschd53n6ihuv; d=amazonses.com; t=1692208663;
 h=Subject:From:To:Date:References:Message-Id:Content-Type:Feedback-ID;
 bh=eOJpqXB6hxUVEaRiNavWTIYsoVcZTtjefbpAFBMz/TU=;
 b=s1mawCZMqsuUSDxrenqBKauE7bLjfdBoo3E/6FsMOe2DoALX8MVSUX4HnwKCuoYf
 075+NZW5nYeaNIOmc/z2KYBtKN8YO/ZNfw+aH5/rJxVyLz2IUhd4G36HAnu8+7MYBL3
 K8RZJmpo6qo3yvvmJm6Qn94kdI5Gpo3TsP/qZqsQ=
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Wed, 16 Aug 2023 17:57:42 +0000
References: <C369D678-82D9-4772-94B2-72FD0939D25C@imlibra.me>
X-Mailer: Amazon WorkMail
Thread-Index: AQHZ0GsmJ/thYUa6RgqZQQpmyxm28w==
Thread-Topic: Missing "rootflags=subvol=root" for Btrfs
X-Wm-Sent-Timestamp: 1692208661
Message-ID: <01020189ff7f0863-c9f7decc-ca49-4793-ae1e-1b56ed33d331-000000@eu-west-1.amazonses.com>
Feedback-ID: 1.eu-west-1.b24dn6frgCi6dh20skzbuMRr7UL8M6Soir/3ogtEjHQ=:AmazonSES
X-SES-Outgoing: 2023.08.16-54.240.2.65
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: All GRUB configurations generated for tboot misses
 "rootflags=subvol=root"
 and causes boot failure: if [ -z "${kernelopts}" ];
 then set kernelopts="root=UUID=f4131454-9e14-4af9-b28e-93afc232a8b2
 ro rootflags=subvol=root
 rd.luks.uuid=luks-3fc85411-b08c-4185-b41d-bc0950877aeb
 rhgb quiet " fi 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.2.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [54.240.2.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 MIME_HEADER_CTYPE_ONLY 'Content-Type' found without required
 MIME headers
X-Headers-End: 1qWL12-007HQO-P1
Subject: [tboot-devel] Missing "rootflags=subvol=root" for Btrfs
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
From: Heting Wang via tboot-devel <tboot-devel@lists.sourceforge.net>
Reply-To: Heting Wang <meow@imlibra.me>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============7685701702628831830=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net


--===============7685701702628831830==
Content-Type: multipart/signed; 
 boundary=Apple-Mail-39777F60-50B9-46CC-97BB-7A0EACD5EEAD; 
 micalg=sha-256; protocol="application/pkcs7-signature"


--Apple-Mail-39777F60-50B9-46CC-97BB-7A0EACD5EEAD
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: base64

QWxsIEdSVUIgY29uZmlndXJhdGlvbnMgZ2VuZXJhdGVkIGZvciB0Ym9vdCBtaXNzZXMgInJvb3Rm
bGFncz1zdWJ2b2w9cm9vdCIgYW5kIGNhdXNlcyBib290IGZhaWx1cmU6DQoNCmlmIFsgLXogIiR7
a2VybmVsb3B0c30iIF07IHRoZW4NCiAgc2V0IGtlcm5lbG9wdHM9InJvb3Q9VVVJRD1mNDEzMTQ1
NC05ZTE0LTRhZjktYjI4ZS05M2FmYzIzMmE4YjIgcm8gcm9vdGZsYWdzPXN1YnZvbD1yb290IHJk
Lmx1a3MudXVpZD1sdWtzLTNmYzg1NDExLWIwOGMtNDE4NS1iNDFkLWJjMDk1MDg3N2FlYiByaGdi
IHF1aWV0ICINCmZpDQoNCuKApuKApg0KDQpzdWJtZW51ICJ0Ym9vdCAxLjEwLjUiIHsNCm1lbnVl
bnRyeSAnRmVkb3JhIEdOVS9MaW51eCwgd2l0aCB0Ym9vdCAxLjEwLjUgYW5kIExpbnV4IDYuNC4x
MC0xMDAuZmMzNy54ODZfNjQnIC0tY2xhc3MgZmVkb3JhIC0tY2xhc3MgZ251LWxpbnV4IC0tY2xh
c3MgZ251IC0tY2xhc3Mgb3MgLS1jbGFzcyB0Ym9vdCB7DQogICAgICAgIGluc21vZCBtdWx0aWJv
b3QyDQogICAgICAgIGluc21vZCBwYXJ0X2dwdA0KICAgICAgICBpbnNtb2QgZXh0Mg0KICAgICAg
ICBzZXQgcm9vdD0naGQxLGdwdDInDQogICAgICAgIGlmIFsgeCRmZWF0dXJlX3BsYXRmb3JtX3Nl
YXJjaF9oaW50ID0geHkgXTsgdGhlbg0KICAgICAgICAgIHNlYXJjaCAtLW5vLWZsb3BweSAtLWZz
LXV1aWQgLS1zZXQ9cm9vdCAtLWhpbnQtYmlvcz1oZDEsZ3B0MiAtLWhpbnQtZWZpPWhkMSxncHQy
IC0taGludC1iYXJlbWV0YWw9YWhjaTEsZ3B0MiAgODUyMTVlMzQtZWZmMC00Y2JhLTlmNDQtZjlj
NDg1NDgzODAwDQogICAgICAgIGVsc2UNCiAgICAgICAgICBzZWFyY2ggLS1uby1mbG9wcHkgLS1m
cy11dWlkIC0tc2V0PXJvb3QgODUyMTVlMzQtZWZmMC00Y2JhLTlmNDQtZjljNDg1NDgzODAwDQog
ICAgICAgIGZpDQogICAgICAgIGVjaG8gICAgJ0xvYWRpbmcgdGJvb3QgMS4xMC41IC4uLicNCiAg
ICAgICAgbXVsdGlib290MiAgICAgIC90Ym9vdC5neiBsb2dnaW5nPXNlcmlhbCxtZW1vcnksdmdh
DQogICAgICAgIGVjaG8gICAgJ0xvYWRpbmcgTGludXggNi40LjEwLTEwMC5mYzM3Lng4Nl82NCAu
Li4nDQogICAgICAgIG1vZHVsZTIgL3ZtbGludXotNi40LjEwLTEwMC5mYzM3Lng4Nl82NCByb290
PVVVSUQ9ZjQxMzE0NTQtOWUxNC00YWY5LWIyOGUtOTNhZmMyMzJhOGIyIHJvIHJkLmx1a3MudXVp
ZD1sdWtzLTNmYzg1NDExLWIwOGMtNDE4NS1iNDFkLWJjMDk1MDg3N2FlYiByaGdiIHF1aWV0IGlu
dGVsX2lvbW11PW9uIG5vZWZpDQogICAgICAgIGVjaG8gICAgJ0xvYWRpbmcgaW5pdGlhbCByYW1k
aXNrIC4uLicNCiAgICAgICAgbW9kdWxlMiAvaW5pdHJhbWZzLTYuNC4xMC0xMDAuZmMzNy54ODZf
NjQuaW1nDQogICAgICAgIGVjaG8gICAgJ0xvYWRpbmcgc2luaXQgU05CX0lWQl9TSU5JVF8yMDE5
MDcwOF9QVy5iaW4gLi4uJw0KICAgICAgICBtb2R1bGUyIC9TTkJfSVZCX1NJTklUXzIwMTkwNzA4
X1BXLmJpbg0KfQ0K
--Apple-Mail-39777F60-50B9-46CC-97BB-7A0EACD5EEAD
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Disposition: attachment;
	filename=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCBdww
ggXYMIIEwKADAgECAhBAAXcKqBd8trQUzHG2IQMZMA0GCSqGSIb3DQEBCwUAMDoxCzAJBgNVBAYT
AlVTMRIwEAYDVQQKEwlJZGVuVHJ1c3QxFzAVBgNVBAMTDlRydXN0SUQgQ0EgQTEzMB4XDTIxMDEx
NjEwMDUyNFoXDTI0MDExNjEwMDUyNFowezEoMCYGA1UECwwfVmVyaWZpZWQgRW1haWw6IG1lb3dA
aW1saWJyYS5tZTEeMBwGCSqGSIb3DQEJARYPbWVvd0BpbWxpYnJhLm1lMS8wLQYKCZImiZPyLGQB
ARMfQTAxNDEwQzAwMDAwMTc3MEFBODE3NkIwMDAwMDUwMjCCASIwDQYJKoZIhvcNAQEBBQADggEP
ADCCAQoCggEBAKRbVFhnx0t8U5lS0ruSmiUJYparPndDg2GrlwifEbMgDczoyrGEcrNJxrwlDWI4
SLbJ+glrSV8RF+aKfTxdEHBZtS5+VY2+b44A7WMGqHUKNHPsNqJ3di26T4YYnZeu9Ke4zBxhcQQb
l6ZpIJYI6FHZ2VXtxKZxzriRZcuPeDrCp+jCfSYA2UQqt0R4vHY95xRv3bIGJLtRtv19g0Qm+h6Y
b8foyteilQWEWUFnd6ZQBjwn16U6ZN7ExEKNQSSH3xfSU0/3VwDXJm0ioKyU3/gT1pkjCM1aTdVA
LEXNJ11WxP0l6DSTTExQfImUzKTv5jKfH4/Rz+p0ez6C27eyWv8CAwEAAaOCApcwggKTMA4GA1Ud
DwEB/wQEAwIFoDCBhAYIKwYBBQUHAQEEeDB2MDAGCCsGAQUFBzABhiRodHRwOi8vY29tbWVyY2lh
bC5vY3NwLmlkZW50cnVzdC5jb20wQgYIKwYBBQUHMAKGNmh0dHA6Ly92YWxpZGF0aW9uLmlkZW50
cnVzdC5jb20vY2VydHMvdHJ1c3RpZGNhYTEzLnA3YzAfBgNVHSMEGDAWgBQtt94bWX4qmC7N4dQb
48UQEl7pFDAJBgNVHRMEAjAAMIIBKwYDVR0gBIIBIjCCAR4wggEaBgtghkgBhvkvAAYLATCCAQkw
SgYIKwYBBQUHAgEWPmh0dHBzOi8vc2VjdXJlLmlkZW50cnVzdC5jb20vY2VydGlmaWNhdGVzL3Bv
bGljeS90cy9pbmRleC5odG1sMIG6BggrBgEFBQcCAjCBrQyBqlRoaXMgVHJ1c3RJRCBDZXJ0aWZp
Y2F0ZSBoYXMgYmVlbiBpc3N1ZWQgaW4gYWNjb3JkYW5jZSB3aXRoIElkZW5UcnVzdCdzIFRydXN0
SUQgQ2VydGlmaWNhdGUgUG9saWN5IGZvdW5kIGF0IGh0dHBzOi8vc2VjdXJlLmlkZW50cnVzdC5j
b20vY2VydGlmaWNhdGVzL3BvbGljeS90cy9pbmRleC5odG1sMEUGA1UdHwQ+MDwwOqA4oDaGNGh0
dHA6Ly92YWxpZGF0aW9uLmlkZW50cnVzdC5jb20vY3JsL3RydXN0aWRjYWExMy5jcmwwGgYDVR0R
BBMwEYEPbWVvd0BpbWxpYnJhLm1lMB0GA1UdDgQWBBQ0+Q0RhQGIDoe1V6IDo4TB8w1xQzAdBgNV
HSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwDQYJKoZIhvcNAQELBQADggEBAFKAStEr6uPgQVsE
HM6yZH8RVfuutFl80rZWLRxjpITmsX59oJ2quMsvoI/e1ABOf1hFPKSgyOLQGhLewLo8fVxzme8d
cVgMRAWUXujzvg0Mw8Hj8QODH65Mj2RT9NJs7KxjbGebRGkNMy9hpW4vu6MgKN52G2Vqx6z0yOmG
1j9nXxPpQRmJ+MpzyNP3hHSRDvMEEvtL2Avy8ELYY8G3pU6o23UWyJGmgqWDEUzuhYnj72byOsfp
Rr3k6LntDd5FUFQVK5ATQMKCzztbQnhhzxdGGpLWHrTu9LXh73Cyhx64rRiqnuib9ynoIAqf0jaM
KDnf4ZbHzjSjbMEvXei/y98xggKmMIICogIBATBOMDoxCzAJBgNVBAYTAlVTMRIwEAYDVQQKEwlJ
ZGVuVHJ1c3QxFzAVBgNVBAMTDlRydXN0SUQgQ0EgQTEzAhBAAXcKqBd8trQUzHG2IQMZMA0GCWCG
SAFlAwQCAQUAoIIBKTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0y
MzA4MTYxNzU3MjlaMC8GCSqGSIb3DQEJBDEiBCCNwbo3ieu4K/CoacL49WZwKMOsFnSstqwtN0UN
ROrRIDBdBgkrBgEEAYI3EAQxUDBOMDoxCzAJBgNVBAYTAlVTMRIwEAYDVQQKEwlJZGVuVHJ1c3Qx
FzAVBgNVBAMTDlRydXN0SUQgQ0EgQTEzAhBAAXcKqBd8trQUzHG2IQMZMF8GCyqGSIb3DQEJEAIL
MVCgTjA6MQswCQYDVQQGEwJVUzESMBAGA1UEChMJSWRlblRydXN0MRcwFQYDVQQDEw5UcnVzdElE
IENBIEExMwIQQAF3CqgXfLa0FMxxtiEDGTANBgkqhkiG9w0BAQsFAASCAQBZe4BmoEojcCWipaU1
qkHsc09ScqHNT9lBX2/SQETcl7e4UKkpm8XxBjnkRNZfLd2pDxcJa7+8kJ9XDiX+zZyBUIlGDzH5
nMzOVraiq2nglLiqXXj/9oSRjXITl6xMTUYeYcp0bvnA/Gg74VTOEQUgPJsGaZNaaIfj9i/LDL3+
nzjnTKoAiQMS//R+gVsbLoBMQTfE3z65abX8Ws/58mGdyqU3X3iIKyCzV6ALGO9YnG9+G/nrFP0k
pdgYlL4eIkxAK5t9879dByDLcKMmkHVodR6FRWsfxl8SIHinVZCXPy6J06idab2medcmx0UFJfke
S8DZfvB888yvYYEpmP+QAAAAAAAA
--Apple-Mail-39777F60-50B9-46CC-97BB-7A0EACD5EEAD--


--===============7685701702628831830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7685701702628831830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============7685701702628831830==--

