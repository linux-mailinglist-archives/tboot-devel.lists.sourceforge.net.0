Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE2725D577
	for <lists+tboot-devel@lfdr.de>; Fri,  4 Sep 2020 11:54:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kE8QE-0000Up-4S; Fri, 04 Sep 2020 09:54:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <olivier.leroy@external.thalesgroup.com>)
 id 1kE8QC-0000Ud-6Y
 for tboot-devel@lists.sourceforge.net; Fri, 04 Sep 2020 09:54:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8/Sh08atjbjLqtlsxx+v9jIxzhG4i6ZbPrECzotV+Z4=; b=KTRFd4RTzolyW/9l6JDimIBdQp
 ZPzzTPTjI109j4TthCAWa55/7Usk6EQu1YppQyu0dysNQHzDYHxWf6zNhRriBpoXWFUYv3QP1g/ph
 3lg+Q+c18N/ea+/fuW9Dpk+M65jSM8UHSM8/lchOuxttxDIyb/BdwQwwpYz0dlfmY4KE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8/Sh08atjbjLqtlsxx+v9jIxzhG4i6ZbPrECzotV+Z4=; b=Z
 2arqET2RmDW/Z6ZHEkvgjosF6gS6liYb8xmLQXUc/vPB9rtLMuI8a5VjdlYNUD4KBj2sXy426MYyQ
 QZCOEFSiMbxp3XEFuhiKH1ZuOgyNm/LT9ujDlXB+62gj+zKYMXwF0EOxKai+w8gaSNRqPJEccy8pZ
 DQ5CFJAqElVdNsLg=;
Received: from thsbbfxrt02p.thalesgroup.com ([192.93.158.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kE8Q0-00BlBd-BZ
 for tboot-devel@lists.sourceforge.net; Fri, 04 Sep 2020 09:54:16 +0000
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 4BjXRY2nkvzJyky
 for <tboot-devel@lists.sourceforge.net>; Fri,  4 Sep 2020 11:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=external.thalesgroup.com; s=xrt20181201; t=1599211721;
 bh=8/Sh08atjbjLqtlsxx+v9jIxzhG4i6ZbPrECzotV+Z4=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:From;
 b=oLbadfYsnpH4gkdGvSFhENMjgFX1fUKvVKd6BXyAB/fVtKiEAE9r6o4REIvZ/OGre
 AtsGig38JEgD2vMIv/XEJN8nJLLrwSM4FkE9WjgV1PHGSzOtEfWKDRSupBd1+BZSt1
 NuMxUO3iXUyJESibALWc1N3vDaWf3w//4aiZ2pRRqEbAwpWwwjMP0XnHjiuHT19U77
 OkRmSHH8Ck1qJSbUtIF4r9qoD8jA5mf4B24tvB2WLiUZ0ie1epOqvi0FHR3TYBBll2
 wfhRtC9cFJL897TrGjcTzAqJEkW+spTkWC0wyM6/ElylToh8J3f6AVJG6hU8eNw3f9
 S1y7XaTKpF+TA==
From: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: "no LCP module found" on Getac X500 G3
Thread-Index: AQHWgpzQyBicA2kju0KxA3FqR7aVRg==
Date: Fri, 4 Sep 2020 09:28:40 +0000
Message-ID: <6e0aeb936ee041f3853388cb4a14e183@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.79.0, Antivirus-Data: 5.77
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.93.158.29 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kE8Q0-00BlBd-BZ
Subject: [tboot-devel] "no LCP module found" on Getac X500 G3
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
Content-Type: multipart/mixed; boundary="===============4300279871545637067=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============4300279871545637067==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_6e0aeb936ee041f3853388cb4a14e183externalthalesgroupcom_"

--_000_6e0aeb936ee041f3853388cb4a14e183externalthalesgroupcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I have a Getac X500 G3 that I am trying to get TBOOT working on under a
CentOS 7.7 OS with TBOOT 1.9.11. The TBOOT startup, without any policy, loo=
ks as follows:

TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: *********************** TBOOT ***********************
TBOOT:    2019-11-25 16:00 +0200 1.9.11
TBOOT: *****************************************************
TBOOT: command line: extpol=3Dsha256 logging=3Dserial,memory
...
TBOOT: TXT chipset and all needed capabilities present
...
TBOOT: checking if module  is an SINIT for this platform...
TBOOT:      ACM info_table version mismatch (6)
TBOOT: chipset production fused: 1
TBOOT: chipset ids: vendor: 0x8086, device: 0xb006, revision: 0x1
TBOOT: processor family/model/stepping: 0x906e9
TBOOT: platform id: 0x14000000000000
TBOOT:      1 ACM chipset id entries:
TBOOT:          vendor: 0x8086, device: 0xb006, flags: 0x1, revision: 0x1, =
extended: 0x0
TBOOT:      4 ACM processor id entries:
TBOOT:          fms: 0x406e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platfo=
rm_mask: 0x0
TBOOT:          fms: 0x506e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platfo=
rm_mask: 0x0
TBOOT:          fms: 0x806e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platfo=
rm_mask: 0x0
TBOOT:          fms: 0x906e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platfo=
rm_mask: 0x0
...
TBOOT: SINIT matches platform
...
TBOOT: AC mod base alignment OK
TBOOT: AC mod size OK

...
TBOOT: reading Verified Launch Policy from TPM NV...
TBOOT: TPM: fail to get public data of 0x01200001 in TPM NV
TBOOT:     :reading failed
TBOOT: reading Launch Control Policy from TPM NV...
TBOOT: TPM: fail to get public data of 0x01400001 in TPM NV
TBOOT:     :reading failed
TBOOT: failed to read policy from TPM NV, using default
TBOOT: policy:
...
TBOOT: executing GETSEC[SENTER]...


I tried to implement a LCP @ 0x01400001 and a VLP @ 0x01200001. These 2 pol=
icies were known to work on same OS but different platform (Supermicro).

For LCP, I have the following error:

reading Launch Control Policy from TPM NV...
TBOOT:     :70 bytes read
TBOOT: in unwrap_lcp_policy
TBOOT: no LCP module found
TBOOT:     :reading failed
TBOOT: failed to read policy from TPM NV, using default
TBOOT: policy:


I tried to implement the LCP @ 0x01800001, but without success, for this in=
dex is locked. I.e.: tpm2_nvlist

0x1800001:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly: authwrite|policydelete|writelocked|writedefine|authread|no_da=
|written|platformcreate
    value: 0x42C0462
  size: 70
  authorization policy: 1169A46A813A8CCDD0F3066785207BB9B67AFD3A6CD6DFE5C5A=
EE120867A96DF

0x1800003:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly: policywrite|policydelete|write_stclear|authread|no_da|written=
|platformcreate
    value: 0x8440462
  size: 104
  authorization policy: EF9A26FC22D1AE8CECFF59E9481AC1EC533DBE228BEC6D17930=
F4CB2CC5B9724

0x1800004:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly: authwrite|policydelete|authread|no_da|written|platformcreate
    value: 0x4040462
  size: 8
  authorization policy: 1169A46A813A8CCDD0F3066785207BB9B67AFD3A6CD6DFE5C5A=
EE120867A96DF

0x1c00002:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly: ppwrite|writeall|ppread|ownerread|authread|policyread|no_da|w=
ritten|platformcreate
    value: 0x1100F62
  size: 991

0x1c0000a:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly: ppwrite|writeall|ppread|ownerread|authread|policyread|no_da|w=
ritten|platformcreate
    value: 0x1100F62
  size: 788


My LCP is created the following manner:


        tpm2_nvdefine -x 0x01400001 -a 0x40000001 -s 70 -t 0x204000a -P $TP=
M_OWNER_PASSWORD
        lcp2_mlehash --create --alg sha256 --cmdline "extpol=3Dsha256 loggi=
ng=3Dserial,memory" /boot/tboot.gz > mle_hash
        lcp2_crtpolelt --create --type mle --alg sha256 --ctrl 0x00 --minve=
r 0 --out mle.elt mle_hash
        lcp2_crtpollist --create --out list_unsig.lst mle.elt
        lcp2_crtpol --create --type list --pol list.pol --alg sha256 --sign=
 0x0A --ctrl 0x00 --data list.data list_unsig.lst
        tpm2_nvwrite -x 0x01400001 -a 0x40000001 -P $TPM_OWNER_PASSWORD lis=
t.pol
        cp -f list.data /boot/


Any idea why this LCP, which consists in just an mle element, could be func=
tional on a platform and not on another?


Cordialement / regards,

Olivier le Roy (contractor)

HW =96 SW development engineer
Thales LAS France

--_000_6e0aeb936ee041f3853388cb4a14e183externalthalesgroupcom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-serif,&quot;EmojiFont&=
quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmo=
ji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;">
<p></p>
<pre><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,&quot;Em=
ojiFont&quot;">I have a Getac X500 G3 that I am trying to get TBOOT working=
 on under a=0A=
CentOS 7.7 OS with TBOOT 1.9.11. The TBOOT startup, without any policy, loo=
ks as follows</span><span style=3D"font-family:Calibri,Helvetica,sans-serif=
,serif,&quot;EmojiFont&quot;">:</span></pre>
<div><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace=
,serif,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: IA32_FEATURE_CONTROL_M=
SR: 0000ff07</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: CPU is SMX-capable</span><b=
r>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: SMX is enabled</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: TXT chipset and all needed =
capabilities present</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: *********************** TBO=
OT ***********************</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT:&nbsp;&nbsp;&nbsp; 2019-11-2=
5 16:00 &#43;0200 1.9.11</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: ***************************=
**************************</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: command line: extpol=3Dsha2=
56 logging=3Dserial,memory</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">...</span><span style=3D"font-fami=
ly:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&quot;;=
 font-size:11pt"></span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: TXT chipset and all needed =
capabilities present</span><br>
...<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,s=
erif,&quot;EmojiFont&quot;; font-size:11pt"></span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: checking if module&nbsp; is=
 an SINIT for this platform...</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; ACM inf=
o_table version mismatch (6)</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: chipset production fused: 1=
</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: chipset ids: vendor: 0x8086=
, device: 0xb006, revision: 0x1</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: processor family/model/step=
ping: 0x906e9</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: platform id: 0x140000000000=
00</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; 1 ACM c=
hipset id entries:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; vendor: 0x8086, device: 0xb006, flags: 0x1, revision: 0x1,=
 extended: 0x0</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; 4 ACM p=
rocessor id entries:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; fms: 0x406e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platf=
orm_mask: 0x0</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; fms: 0x506e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platf=
orm_mask: 0x0</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; fms: 0x806e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platf=
orm_mask: 0x0</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; fms: 0x906e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platf=
orm_mask: 0x0</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">...<br>
<span>TBOOT: SINIT matches platform</span><br>
...<br>
</span><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospa=
ce,serif,&quot;EmojiFont&quot;; font-size:11pt"></span><span style=3D"font-=
family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&qu=
ot;; font-size:11pt">TBOOT: AC mod base alignment OK</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: AC mod size OK</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt"></span><br>
...<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,s=
erif,&quot;EmojiFont&quot;; font-size:11pt"></span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: reading Verified Launch Pol=
icy from TPM NV...</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: TPM: fail to get public dat=
a of 0x01200001 in TPM NV</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;:reading=
 failed</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: reading Launch Control Poli=
cy from TPM NV...</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: TPM: fail to get public dat=
a of 0x01400001 in TPM NV</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;:reading=
 failed</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: failed to read policy from =
TPM NV, using default</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: policy:</span><br>
...<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,s=
erif,&quot;EmojiFont&quot;; font-size:11pt"></span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: executing GETSEC[SENTER]...=
</span></div>
<p><br>
</p>
<p>I tried to implement a LCP @ 0x01400001 and a VLP @ <span>0x01200001. Th=
ese 2 policies were known to work on same OS but different platform (Superm=
icro).</span></p>
<p><span>For LCP, I have the following error:</span></p>
<p><span></span></p>
<div><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">reading Launch Control Policy from=
 TPM NV...</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;:70 byte=
s read</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: in unwrap_lcp_policy</span>=
<br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: no LCP module found</span><=
br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;:reading=
 failed</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: failed to read policy from =
TPM NV, using default</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">TBOOT: policy:</span></div>
<br>
<p>I tried to implement the LCP @ 0x01800001, but without success, for this=
 index is locked. I.e.:
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">
t</span><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monosp=
ace,serif,&quot;EmojiFont&quot;; font-size:11pt">p</span><span style=3D"fon=
t-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&=
quot;; font-size:11pt">m</span><span style=3D"font-family:&quot;Lucida Cons=
ole&quot;,Monaco,monospace,serif,&quot;EmojiFont&quot;; font-size:11pt">2</=
span><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace=
,serif,&quot;EmojiFont&quot;; font-size:11pt">_</span><span style=3D"font-f=
amily:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&quo=
t;; font-size:11pt">n</span><span style=3D"font-family:&quot;Lucida Console=
&quot;,Monaco,monospace,serif,&quot;EmojiFont&quot;; font-size:11pt">v</spa=
n><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,se=
rif,&quot;EmojiFont&quot;; font-size:11pt">l</span><span style=3D"font-fami=
ly:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&quot;;=
 font-size:11pt">i</span><span style=3D"font-family:&quot;Lucida Console&qu=
ot;,Monaco,monospace,serif,&quot;EmojiFont&quot;; font-size:11pt">s</span><=
span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif=
,&quot;EmojiFont&quot;; font-size:11pt">t</span></p>
<div><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace=
,serif,&quot;EmojiFont&quot;; font-size:11pt">0</span><span style=3D"font-f=
amily:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&quo=
t;; font-size:11pt">x</span><span style=3D"font-family:&quot;Lucida Console=
&quot;,Monaco,monospace,serif,&quot;EmojiFont&quot;; font-size:11pt">1</spa=
n><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,se=
rif,&quot;EmojiFont&quot;; font-size:11pt">8</span><span style=3D"font-fami=
ly:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&quot;;=
 font-size:11pt">0</span><span style=3D"font-family:&quot;Lucida Console&qu=
ot;,Monaco,monospace,serif,&quot;EmojiFont&quot;; font-size:11pt">0</span><=
span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif=
,&quot;EmojiFont&quot;; font-size:11pt">0</span><span style=3D"font-family:=
&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&quot;; fo=
nt-size:11pt">0</span><span style=3D"font-family:&quot;Lucida Console&quot;=
,Monaco,monospace,serif,&quot;EmojiFont&quot;; font-size:11pt">1:</span><br=
>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; hash alg</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">orithm:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: sha256</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">xB</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; attribute</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">s:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: authwrite|policydelete|writelock=
ed|writedefine|authread|no_da|written|platformcreate</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">x42C0462</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; size: 70</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; authoriz</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">ation policy: 1169A46A813A8CCDD0F3066785207BB=
9B67AFD3A6CD6DFE5C5AEE120867A96DF</span><br>
<br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">0x180000</span><span style=3D"font=
-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&q=
uot;; font-size:11pt">3:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; hash alg</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">orithm:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: sha256</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">xB</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; attribute</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">s:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: policywrite|policydelete|write_s=
tclear|authread|no_da|written|platformcreate</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">x8440462</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; size: 104</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; authoriz</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">ation policy: EF9A26FC22D1AE8CECFF59E9481AC1E=
C533DBE228BEC6D17930F4CB2CC5B9724</span><br>
<br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">0x180000</span><span style=3D"font=
-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&q=
uot;; font-size:11pt">4:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; hash alg</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">orithm:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: sha256</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">xB</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; attribute</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">s:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: authwrite|policydelete|authread|=
no_da|written|platformcreate</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">x4040462</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; size: 8</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; authoriz</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">ation policy: 1169A46A813A8CCDD0F3066785207BB=
9B67AFD3A6CD6DFE5C5AEE120867A96DF</span><br>
<br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">0x1c0000</span><span style=3D"font=
-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&q=
uot;; font-size:11pt">2:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; hash alg</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">orithm:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: sha256</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">xB</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; attribute</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">s:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: ppwrite|writeall|ppread|ownerrea=
d|authread|policyread|no_da|written|platformcreate</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">x1100F62</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; size: 991</span><br>
<br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">0x1c0000</span><span style=3D"font=
-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&q=
uot;; font-size:11pt">a:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; hash alg</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">orithm:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: sha256</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">xB</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; attribute</span><span style=
=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;Emo=
jiFont&quot;; font-size:11pt">s:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; friendly</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">: ppwrite|writeall|ppread|ownerrea=
d|authread|policyread|no_da|written|platformcreate</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp;&nbsp; value: 0</span>=
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">x1100F62</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp; size: 788</span></div>
<p><br>
</p>
<p>My LCP is created the following manner:</p>
<p><br>
</p>
<div><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace=
,serif,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp; &nbsp;&nbsp;&nbs=
p;&nbsp; tpm2_nvdefine -x 0x01400001 -a 0x40000001 -s 70 -t 0x204000a -P $T=
PM_OWNER_PASSWORD</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &n=
bsp;lcp2_mlehash --create --alg sha256 --cmdline &quot;extpol=3Dsha256 logg=
ing=3Dserial,memory&quot; /boot/tboot.gz &gt; mle_hash</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &n=
bsp;lcp2_crtpolelt --create --type mle --alg sha256 --ctrl 0x00 --minver 0 =
--out mle.elt mle_hash</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &n=
bsp;lcp2_crtpollist --create --out list_unsig.lst mle.elt</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &n=
bsp;lcp2_crtpol --create --type list --pol list.pol --alg sha256 --sign 0x0=
A --ctrl 0x00 --data list.data list_unsig.lst</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp; tpm2_nvwrite -x 0x01400001 -a 0x40000001 -P $TPM_OWNER_PASSWORD list.po=
l</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace,seri=
f,&quot;EmojiFont&quot;; font-size:11pt">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp; cp -f list.data /boot/</span></div>
<br>
<p>Any idea why this LCP, which consists in just an <span style=3D"font-fam=
ily:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&quot;=
; font-size:11pt">
m</span><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monosp=
ace,serif,&quot;EmojiFont&quot;; font-size:11pt">l</span><span style=3D"fon=
t-family:&quot;Lucida Console&quot;,Monaco,monospace,serif,&quot;EmojiFont&=
quot;; font-size:11pt">e</span> element, could be functional on a platform =
and
 not on another?<br>
</p>
<p><br>
</p>
<p></p>
<div id=3D"Signature">
<div class=3D"BodyFragment"><font size=3D"2">
<div class=3D"PlainText">Cordialement / regards,<br>
<br>
Olivier le Roy (contractor)<br>
<br>
HW =96 SW development engineer<br>
Thales LAS France<br>
</div>
</font></div>
</div>
</div>
</body>
</html>

--_000_6e0aeb936ee041f3853388cb4a14e183externalthalesgroupcom_--


--===============4300279871545637067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4300279871545637067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============4300279871545637067==--

