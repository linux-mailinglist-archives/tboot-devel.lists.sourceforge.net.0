Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8D026C340
	for <lists+tboot-devel@lfdr.de>; Wed, 16 Sep 2020 15:28:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kIXTw-0004eh-Ib; Wed, 16 Sep 2020 13:28:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kevin.1.briggs@lmco.com>) id 1kIXTt-0004eM-I8
 for tboot-devel@lists.sourceforge.net; Wed, 16 Sep 2020 13:28:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9D8U1OfDpFxXh55ghv58IYY5jXCj2HXTWY2o01QzEK8=; b=DT6MlJ0ar41fdwT7cM8ELR1oId
 n6/x/sxyBBWFExkbjIqyt35tzjnOXc4YaqWT0FhoHEpBnHbrYNCg3EoMho5qed5STMUAKqdSSlsHf
 3RwfyYb16dLQOFQOGcKpPQt07r3AxPJsL0C5M/CXX3ydmYFXOZB69CcTMeMza0aMx8hU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9D8U1OfDpFxXh55ghv58IYY5jXCj2HXTWY2o01QzEK8=; b=ZVMSfMragoGLyC5l2OYLh0ky9Q
 waW9/AJJCgbDrrESUf+6ApLa9ziA8RjPyFz4rI9HDd2pwcO6sXHULyh8h+utfrgAerz0XXt9tS89/
 ZfUnD+gD7/j/zirIkszT/kzyGQ5eDlIEmMN1aAso915j93V5P6mVBOh1uqmJygQNHRGA=;
Received: from mailfo02.lmco.com ([192.35.35.12])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIXTm-00CTJY-SH
 for tboot-devel@lists.sourceforge.net; Wed, 16 Sep 2020 13:28:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lmco.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=corpgw200619;
 bh=9D8U1OfDpFxXh55ghv58IYY5jXCj2HXTWY2o01QzEK8=;
 b=MTmJigqD9mzWfe/GpsmPB9zX2eQmWXTE5EURE4VMVwbJf91K98mjVn9pk7TL1Unx9h9S
 Og6++xsiJyXskIPNjGzb1ffBWlXX3xgHcU0svqCdBBBE6/dCBh3lq/OrUjEmLMoO81nL
 +xsooPWXr9HnEktzJHwEB38KlQVfFGJNGQ18DsqahkSw8hw2MjtwfLcePNOj3vWzitN5
 gpU60GuqNQaj8u8dEh9jB+Rkb+JE3kqDyJfotBen2iVi/ansR2ltVrTf0HfqWqBLw7xZ
 Ij/pycN4jZ/tNFaAB2nIg/0WGgjVHoz1cKhOIqEMA/lR+uxJt4D8vJeatOSLZM2xY1j7 dA== 
Received: from lmxpvfgd12w01.us.lmco.com (lmxpvfgd12w01.ems.lmco.com
 [172.23.84.80])
 by mailfo02.lmco.com (8.16.0.22/8.16.0.22) with ESMTP id 08GDRso5014543
 for <tboot-devel@lists.sourceforge.net>; Wed, 16 Sep 2020 13:27:54 GMT
Received: from lmxpvfgd12w02.us.lmco.com (172.23.84.81) by
 lmxpvfgd12w01.us.lmco.com (172.23.84.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Wed, 16 Sep 2020 09:27:53 -0400
Received: from lmxpvfgd12w02.us.lmco.com ([172.23.84.81]) by
 lmxpvfgd12w02.us.lmco.com ([172.23.84.81]) with mapi id 15.01.1979.003; Wed,
 16 Sep 2020 09:27:53 -0400
From: "Briggs, Kevin 1" <kevin.1.briggs@lmco.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: "no LCP module found" on Getac X500 G3
Thread-Index: AQHWgpzQyBicA2kju0KxA3FqR7aVRqlrTJ8g
Date: Wed, 16 Sep 2020 13:27:53 +0000
Message-ID: <f88bd69d618e4e97a36dee57b755d546@lmco.com>
References: <6e0aeb936ee041f3853388cb4a14e183@external.thalesgroup.com>
In-Reply-To: <6e0aeb936ee041f3853388cb4a14e183@external.thalesgroup.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.23.84.8]
MIME-Version: 1.0
X-LM-Outbound: External 172.23.84.80 cntry=**
 g=UnmBdQSZqdz29hq625EMLLhfp8pjZ1DL q=08GDRso5014543 m=1
X-LM-OBSENDER: kevin.1.briggs@lmco.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-16_07:2020-09-16,
 2020-09-16 signatures=0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.35.35.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kIXTm-00CTJY-SH
Subject: Re: [tboot-devel] "no LCP module found" on Getac X500 G3
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
Content-Type: multipart/mixed; boundary="===============5856453622286079852=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============5856453622286079852==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.3;
	boundary="----=_NextPart_000_0057_01D68C0B.A5908890"

------=_NextPart_000_0057_01D68C0B.A5908890
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0058_01D68C0B.A5908890"


------=_NextPart_001_0058_01D68C0B.A5908890
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Olivier,

 

Is your system hanging or resetting after:

 

                   TBOOT: executing GETSEC[SENTER]...

 

I've experienced very similar issues with a large quantity of Getac laptops,
TBOOT, and RHEL.  I don't see it in your log output, but check your
TXT.ERRORCODE register value, and use Intel's error code mappings to gain
more information. I believe this is proved in the zips from their website
when downloading a SINIT ACM.

 

In my case, I consistently saw errors related to an invalid bootguard
profile.  After much debugging and communications with Getac, the issue
turned out to be in firmware/hardware, and all laptops needed to be shipped
back and repaired by Getac.

 

Also, I don't see it mentioned often online and in various resources, but it
should be noted that LCP and VLP are optional features.  The errors in
txt-stat output relating to failure to read VLP/LCP from NVRAM are by no
means fatal.  In fact, even in your log output, you can see: ".failed to
read policy from TPM NV, using default.", and below that, it probably says
something like: "..policy_type: TB_POLTYPE_CONT_NON_FATAL".

 

That of course isn't to say LCP/VLP are not useful features, but they are
optional, and if you are for instance only intending to do remote
attestation you may not even need them depending on how your system is
designed.  You can still TBOOT, create attestation keys, generate quotes,
attest remotely to a verifier, and other things without ever using LCP/VLP.
My point here is that I think it is unlikely that the LCP is the source of
your issue.

 

Kevin

 

From: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com> 
Sent: Friday, September 4, 2020 5:29 AM
To: tboot-devel@lists.sourceforge.net
Subject: EXTERNAL: [tboot-devel] "no LCP module found" on Getac X500 G3

 

I have a Getac X500 G3 that I am trying to get TBOOT working on under a
CentOS 7.7 OS with TBOOT 1.9.11. The TBOOT startup, without any policy,
looks as follows:

TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: *********************** TBOOT ***********************
TBOOT:    2019-11-25 16:00 +0200 1.9.11
TBOOT: *****************************************************
TBOOT: command line: extpol=sha256 logging=serial,memory
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
TBOOT:          vendor: 0x8086, device: 0xb006, flags: 0x1, revision: 0x1,
extended: 0x0
TBOOT:      4 ACM processor id entries:
TBOOT:          fms: 0x406e0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
TBOOT:          fms: 0x506e0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
TBOOT:          fms: 0x806e0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
TBOOT:          fms: 0x906e0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
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

 

I tried to implement a LCP @ 0x01400001 and a VLP @ 0x01200001. These 2
policies were known to work on same OS but different platform (Supermicro).

For LCP, I have the following error:


reading Launch Control Policy from TPM NV...
TBOOT:     :70 bytes read
TBOOT: in unwrap_lcp_policy
TBOOT: no LCP module found
TBOOT:     :reading failed
TBOOT: failed to read policy from TPM NV, using default
TBOOT: policy:

 

I tried to implement the LCP @ 0x01800001, but without success, for this
index is locked. I.e.: tpm2_nvlist

0x1800001:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly:
authwrite|policydelete|writelocked|writedefine|authread|no_da|written|platfo
rmcreate
    value: 0x42C0462
  size: 70
  authorization policy:
1169A46A813A8CCDD0F3066785207BB9B67AFD3A6CD6DFE5C5AEE120867A96DF

0x1800003:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly:
policywrite|policydelete|write_stclear|authread|no_da|written|platformcreate
    value: 0x8440462
  size: 104
  authorization policy:
EF9A26FC22D1AE8CECFF59E9481AC1EC533DBE228BEC6D17930F4CB2CC5B9724

0x1800004:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly: authwrite|policydelete|authread|no_da|written|platformcreate
    value: 0x4040462
  size: 8
  authorization policy:
1169A46A813A8CCDD0F3066785207BB9B67AFD3A6CD6DFE5C5AEE120867A96DF

0x1c00002:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly:
ppwrite|writeall|ppread|ownerread|authread|policyread|no_da|written|platform
create
    value: 0x1100F62
  size: 991

0x1c0000a:
  hash algorithm:
    friendly: sha256
    value: 0xB
  attributes:
    friendly:
ppwrite|writeall|ppread|ownerread|authread|policyread|no_da|written|platform
create
    value: 0x1100F62
  size: 788

 

My LCP is created the following manner:

 

        tpm2_nvdefine -x 0x01400001 -a 0x40000001 -s 70 -t 0x204000a -P
$TPM_OWNER_PASSWORD
        lcp2_mlehash --create --alg sha256 --cmdline "extpol=sha256
logging=serial,memory" /boot/tboot.gz > mle_hash
        lcp2_crtpolelt --create --type mle --alg sha256 --ctrl 0x00 --minver
0 --out mle.elt mle_hash
        lcp2_crtpollist --create --out list_unsig.lst mle.elt
        lcp2_crtpol --create --type list --pol list.pol --alg sha256 --sign
0x0A --ctrl 0x00 --data list.data list_unsig.lst
        tpm2_nvwrite -x 0x01400001 -a 0x40000001 -P $TPM_OWNER_PASSWORD
list.pol
        cp -f list.data /boot/

 

Any idea why this LCP, which consists in just an mle element, could be
functional on a platform and not on another?

 

Cordialement / regards,

Olivier le Roy (contractor)

HW - SW development engineer
Thales LAS France


------=_NextPart_001_0058_01D68C0B.A5908890
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"Lucida Console";
	panose-1:2 11 6 9 4 5 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hi Olivier,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Is your =
system hanging or resetting after:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><pre><span =
style=3D'font-family:"Calibri",sans-serif'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; </span>TBOOT: executing GETSEC[SENTER]...<o:p></o:p></pre><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;ve =
experienced very similar issues with a large quantity of Getac laptops, =
TBOOT, and RHEL.&nbsp; I don&#8217;t see it in your log output, but =
check your TXT.ERRORCODE register value, and use Intel&#8217;s error =
code mappings to gain more information. I believe this is proved in the =
zips from their website when downloading a SINIT ACM.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>In my case, =
I consistently saw errors related to an invalid bootguard profile.&nbsp; =
After much debugging and communications with Getac, the issue turned out =
to be in firmware/hardware, and all laptops needed to be shipped back =
and repaired by Getac.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Also, I =
don&#8217;t see it mentioned often online and in various resources, but =
it should be noted that LCP and VLP are optional features.&nbsp; The =
errors in txt-stat output relating to failure to read VLP/LCP from NVRAM =
are by no means fatal.&nbsp; In fact, even in your log output, you can =
see: &#8220;&#8230;failed to read policy from TPM NV, using =
default&#8230;&#8221;, and below that, it probably says something like: =
&#8220;&#8230;.policy_type: =
TB_POLTYPE_CONT_NON_FATAL&#8221;.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>That of =
course isn&#8217;t to say LCP/VLP are not useful features, but they are =
optional, and if you are for instance only intending to do remote =
attestation you may not even need them depending on how your system is =
designed.&nbsp; You can still TBOOT, create attestation keys, generate =
quotes, attest remotely to a verifier, and other things without ever =
using LCP/VLP.&nbsp; My point here is that I think it is unlikely that =
the LCP is the source of your issue.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Kevin<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> LE ROY Olivier - Contractor =
&lt;olivier.leroy@external.thalesgroup.com&gt; <br><b>Sent:</b> Friday, =
September 4, 2020 5:29 AM<br><b>To:</b> =
tboot-devel@lists.sourceforge.net<br><b>Subject:</b> EXTERNAL: =
[tboot-devel] &quot;no LCP module found&quot; on Getac X500 =
G3<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
id=3Ddivtagdefaultwrapper><pre><span =
style=3D'font-family:"Calibri",sans-serif;color:black'>I have a Getac =
X500 G3 that I am trying to get TBOOT working on under =
a<o:p></o:p></span></pre><pre><span =
style=3D'font-family:"Calibri",sans-serif;color:black'>CentOS 7.7 OS =
with TBOOT 1.9.11. The TBOOT startup, without any policy, looks as =
follows:</span><span =
style=3D'color:black'><o:p></o:p></span></pre><div><p =
class=3DMsoNormal><span style=3D'font-family:"Lucida =
Console";color:black'>TBOOT: IA32_FEATURE_CONTROL_MSR: =
0000ff07</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: CPU is =
SMX-capable</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: SMX is =
enabled</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: TXT chipset =
and all needed capabilities present</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: =
*********************** TBOOT ***********************</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida =
Console";color:black'>TBOOT:&nbsp;&nbsp;&nbsp; 2019-11-25 16:00 +0200 =
1.9.11</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: =
*****************************************************</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: command line: =
extpol=3Dsha256 logging=3Dserial,memory</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>...</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: TXT chipset =
and all needed capabilities present</span><span =
style=3D'font-size:12.0pt;color:black'><br>...<br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: checking if =
module&nbsp; is an SINIT for this platform...</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp; ACM info_table version mismatch (6)</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: chipset =
production fused: 1</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: chipset ids: =
vendor: 0x8086, device: 0xb006, revision: 0x1</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: processor =
family/model/stepping: 0x906e9</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: platform id: =
0x14000000000000</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp; 1 ACM chipset id entries:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vendor: 0x8086, device: 0xb006, flags: =
0x1, revision: 0x1, extended: 0x0</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp; 4 ACM processor id entries:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fms: 0x406e0, fms_mask: 0xfff3ff0, =
platform_id: 0x0, platform_mask: 0x0</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fms: 0x506e0, fms_mask: 0xfff3ff0, =
platform_id: 0x0, platform_mask: 0x0</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fms: 0x806e0, fms_mask: 0xfff3ff0, =
platform_id: 0x0, platform_mask: 0x0</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fms: 0x906e0, fms_mask: 0xfff3ff0, =
platform_id: 0x0, platform_mask: 0x0</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>...<br>TBOOT: SINIT =
matches platform<br>...<br>TBOOT: AC mod base alignment OK</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: AC mod size =
OK</span><span =
style=3D'font-size:12.0pt;color:black'><br><br>...<br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: reading =
Verified Launch Policy from TPM NV...</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: TPM: fail to =
get public data of 0x01200001 in TPM NV</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp;:reading failed</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: reading Launch =
Control Policy from TPM NV...</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: TPM: fail to =
get public data of 0x01400001 in TPM NV</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp;:reading failed</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: failed to read =
policy from TPM NV, using default</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: =
policy:</span><span =
style=3D'font-size:12.0pt;color:black'><br>...<br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: executing =
GETSEC[SENTER]...</span><span =
style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p></div><p><sp=
an =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p><p><sp=
an style=3D'font-size:12.0pt;color:black'>I tried to implement a LCP @ =
0x01400001 and a VLP @ 0x01200001. These 2 policies were known to work =
on same OS but different platform =
(Supermicro).<o:p></o:p></span></p><p><span =
style=3D'font-size:12.0pt;color:black'>For LCP, I have the following =
error:<o:p></o:p></span></p><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>reading Launch =
Control Policy from TPM NV...</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp;:70 bytes read</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: in =
unwrap_lcp_policy</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: no LCP module =
found</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: &nbsp;&nbsp; =
&nbsp;:reading failed</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: failed to read =
policy from TPM NV, using default</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>TBOOT: =
policy:</span><span =
style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p></div><p =
class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p><p><sp=
an style=3D'font-size:12.0pt;color:black'>I tried to implement the LCP @ =
0x01800001, but without success, for this index is locked. I.e.: =
</span><span style=3D'font-family:"Lucida =
Console";color:black'>tpm2_nvlist</span><span =
style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p><div><p =
class=3DMsoNormal><span style=3D'font-family:"Lucida =
Console";color:black'>0x1800001:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; hash =
algorithm:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: sha256</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0xB</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; =
attributes:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: =
authwrite|policydelete|writelocked|writedefine|authread|no_da|written|pla=
tformcreate</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0x42C0462</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; size: =
70</span><span style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; authorization =
policy: =
1169A46A813A8CCDD0F3066785207BB9B67AFD3A6CD6DFE5C5AEE120867A96DF</span><s=
pan style=3D'font-size:12.0pt;color:black'><br><br></span><span =
style=3D'font-family:"Lucida =
Console";color:black'>0x1800003:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; hash =
algorithm:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: sha256</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0xB</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; =
attributes:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: =
policywrite|policydelete|write_stclear|authread|no_da|written|platformcre=
ate</span><span style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0x8440462</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; size: =
104</span><span style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; authorization =
policy: =
EF9A26FC22D1AE8CECFF59E9481AC1EC533DBE228BEC6D17930F4CB2CC5B9724</span><s=
pan style=3D'font-size:12.0pt;color:black'><br><br></span><span =
style=3D'font-family:"Lucida =
Console";color:black'>0x1800004:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; hash =
algorithm:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: sha256</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0xB</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; =
attributes:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: =
authwrite|policydelete|authread|no_da|written|platformcreate</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0x4040462</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; size: =
8</span><span style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; authorization =
policy: =
1169A46A813A8CCDD0F3066785207BB9B67AFD3A6CD6DFE5C5AEE120867A96DF</span><s=
pan style=3D'font-size:12.0pt;color:black'><br><br></span><span =
style=3D'font-family:"Lucida =
Console";color:black'>0x1c00002:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; hash =
algorithm:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: sha256</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0xB</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; =
attributes:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: =
ppwrite|writeall|ppread|ownerread|authread|policyread|no_da|written|platf=
ormcreate</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0x1100F62</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; size: =
991</span><span =
style=3D'font-size:12.0pt;color:black'><br><br></span><span =
style=3D'font-family:"Lucida =
Console";color:black'>0x1c0000a:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; hash =
algorithm:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: sha256</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0xB</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; =
attributes:</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
friendly: =
ppwrite|writeall|ppread|ownerread|authread|policyread|no_da|written|platf=
ormcreate</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp;&nbsp; =
value: 0x1100F62</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp; size: =
788</span><span =
style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p></div><p><sp=
an =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p><p><sp=
an style=3D'font-size:12.0pt;color:black'>My LCP is created the =
following manner:<o:p></o:p></span></p><p><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p><div><=
p class=3DMsoNormal><span style=3D'font-family:"Lucida =
Console";color:black'>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; =
tpm2_nvdefine -x 0x01400001 -a 0x40000001 -s 70 -t 0x204000a -P =
$TPM_OWNER_PASSWORD</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp; &nbsp;lcp2_mlehash --create --alg sha256 --cmdline =
&quot;extpol=3Dsha256 logging=3Dserial,memory&quot; /boot/tboot.gz &gt; =
mle_hash</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp; &nbsp;lcp2_crtpolelt --create --type mle --alg sha256 =
--ctrl 0x00 --minver 0 --out mle.elt mle_hash</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp; &nbsp;lcp2_crtpollist --create --out list_unsig.lst =
mle.elt</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp; &nbsp;lcp2_crtpol --create --type list --pol list.pol =
--alg sha256 --sign 0x0A --ctrl 0x00 --data list.data =
list_unsig.lst</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp; tpm2_nvwrite -x 0x01400001 -a 0x40000001 -P =
$TPM_OWNER_PASSWORD list.pol</span><span =
style=3D'font-size:12.0pt;color:black'><br></span><span =
style=3D'font-family:"Lucida Console";color:black'>&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp; cp -f list.data /boot/</span><span =
style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p></div><p =
class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p><p><sp=
an style=3D'font-size:12.0pt;color:black'>Any idea why this LCP, which =
consists in just an </span><span style=3D'font-family:"Lucida =
Console";color:black'>mle</span><span =
style=3D'font-size:12.0pt;color:black'> element, could be functional on =
a platform and not on another?<o:p></o:p></span></p><p><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p><div =
id=3DSignature><div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Cordialement / =
regards,<br><br>Olivier le Roy (contractor)<br><br>HW &#8211; SW =
development engineer<br>Thales LAS =
France<o:p></o:p></span></p></div></div></div></div></div></body></html>
------=_NextPart_001_0058_01D68C0B.A5908890--

------=_NextPart_000_0057_01D68C0B.A5908890
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCCGLAw
ggVIMIIDsKADAgECAhA9IsMYF0Frg07hyKGyJEZIMA0GCSqGSIb3DQEBCwUAMIG0MQswCQYDVQQG
EwJVUzERMA8GA1UECBMIQ29sb3JhZG8xDzANBgNVBAcTBkRlbnZlcjEkMCIGA1UEChMbTG9ja2hl
ZWQgTWFydGluIENvcnBvcmF0aW9uMSIwIAYDVQQLExlDZXJ0aWZpY2F0aW9uIEF1dGhvcml0aWVz
MTcwNQYDVQQDEy5Mb2NraGVlZCBNYXJ0aW4gUm9vdCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSAz
MB4XDTE1MDkwOTE5MTM1M1oXDTQwMDkwOTE5MTgwMlowgbQxCzAJBgNVBAYTAlVTMREwDwYDVQQI
EwhDb2xvcmFkbzEPMA0GA1UEBxMGRGVudmVyMSQwIgYDVQQKExtMb2NraGVlZCBNYXJ0aW4gQ29y
cG9yYXRpb24xIjAgBgNVBAsTGUNlcnRpZmljYXRpb24gQXV0aG9yaXRpZXMxNzA1BgNVBAMTLkxv
Y2toZWVkIE1hcnRpbiBSb290IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDMwggGiMA0GCSqGSIb3
DQEBAQUAA4IBjwAwggGKAoIBgQCfEp3BULVAKx0GX4akWtQdMSZ57cfHeYB9qb5zSHoae7PIcI61
kBXmFDBqkX45K4kCdS+uL6+bM84sSTbdqEHFPJ6Ef2YCxmlEMpWIKXrM6nEGoTwUvqd6ja/xcN4n
YjVEW3BcqEV8/JpR+Q3IzZuTpdRY2hmpJSeXVwQYOI9BdMCZxpA8ef9kiRc50Hq//U89pen8RONQ
BRoqUchnKmD45aXojcBVl8IwkVAixXgyQ/hKk5yd64+VDacOWhRuJ5HoAHJEAVksURcsDbsFT7z4
+u+N432T3RpQ5fU+hSHBkNRiLb0YNx9/oOXTVzlstSTZw6IcZhfr0sp/6XgYnMLdCDW8snHfKdKI
obqAiTifNl5HqygUEYw9r4nyv/ES28A7WR3N7liygI29JbPlWDTniNTBqdJxRM+tBO8xr1clklzE
uEVDXRJsyDSSwL7biWcpVQQH88YQtfWcrbBhEY6/q2w6a4UFpM+UjpHsrVfsbw+U33pL+uwgKgUu
wZ52EPsCAwEAAaNUMFIwDgYDVR0PAQH/BAQDAgHGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYE
FGoJHI/i+1uL7Ktty4nVeV9bzMiuMBAGCSsGAQQBgjcVAQQDAgEAMA0GCSqGSIb3DQEBCwUAA4IB
gQB+nCU9UfVSFF9Py60rUXTJbwWQ085z9KAy2ronCmyHsIZYLxXVtMSbJnVjjvvmSifvqtLSXZfF
F0q1LwXuxgVxuRbx5DA9m7pZm1Ec/IaBZhZoEAFBLz0bTEL0SDbiMMO/dJosHNbysoeTy4ISo9eB
V9eKVHJAj9gCoyy2dosC3M9mr9XlAW53rkFRIsiDvGoV3Yvo7cBZSn0uj7VlbZYdd28K/CWlzGg+
vXERqDr+jPoxhx0k1tJFiC9dMgncwOTMThuViVhRuXyU0uMljGp5QJyTTvZbTW3PljyPkTS3cnqC
RvzBiRd8nh4N4HVYlawDgM8MeepXowYOeclBbnb4d4cMmGHkAfKUagPjcdbfrmcqaoUK2Grero79
fFlBxC+8IGXKdM20SXwHwKu+MW6ZY7Lx7FuUFdLp/6UL+3oAF8WLhYlWCsX+u8jV7unw3m698jFj
UMCzdy8mLv09hrCp0uBdlFCl4XaCu9k1jxDpZL9Flgc3dmTB7qlXXvRb8GgwggWiMIIECqADAgEC
AhNIAAAAKRP2j2Vereb5AAAAAAApMA0GCSqGSIb3DQEBCwUAMIG0MQswCQYDVQQGEwJVUzERMA8G
A1UECBMIQ29sb3JhZG8xDzANBgNVBAcTBkRlbnZlcjEkMCIGA1UEChMbTG9ja2hlZWQgTWFydGlu
IENvcnBvcmF0aW9uMSIwIAYDVQQLExlDZXJ0aWZpY2F0aW9uIEF1dGhvcml0aWVzMTcwNQYDVQQD
Ey5Mb2NraGVlZCBNYXJ0aW4gUm9vdCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSAzMB4XDTE5MDIy
MDAwNDUyMloXDTI1MDkxMDAwNTUyMlowgY4xCzAJBgNVBAYTAlVTMSQwIgYDVQQKExtMb2NraGVl
ZCBNYXJ0aW4gQ29ycG9yYXRpb24xIjAgBgNVBAsTGUNlcnRpZmljYXRpb24gQXV0aG9yaXRpZXMx
NTAzBgNVBAMTLExvY2toZWVkIE1hcnRpbiBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSA3IEcyMIIB
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
KwYBBAFnZAECAgUwRjBEBggrBgEFBQcCARY4aHR0cHM6Ly9jcmwuZXh0ZXJuYWwubG1jby5jb20v
Y3JsL2NlcnR1cGQvZG9jcy9MTUNQLnBkZgAwTgYDVR0RBEcwRaAqBgorBgEEAYI3FAIDoBwMGmUz
MDg0MjdAYWNjdDA1LnVzLmxtY28uY29tgRdrZXZpbi4xLmJyaWdnc0BsbWNvLmNvbTAdBgNVHQ4E
FgQUwI0UazUsVdAPa4Chzcn/TddcPdMwHwYDVR0jBBgwFoAU3t9edD4VsHr+ypO5hsaqQzGy26sw
dAYDVR0fBG0wazBpoGegZYZjaHR0cDovL2NybC5leHRlcm5hbC5sbWNvLmNvbS9jcmwvY2VydHVw
ZC9Mb2NraGVlZCUyME1hcnRpbiUyMENlcnRpZmljYXRpb24lMjBBdXRob3JpdHklMjA3JTIwRzIu
Y3JsMIIBUgYIKwYBBQUHAQEEggFEMIIBQDCBhQYIKwYBBQUHMAKGeWh0dHA6Ly9jcmwuZXh0ZXJu
YWwubG1jby5jb20vY3JsL2NlcnR1cGQvdXNhcGtjczA3LnVzLmxtY28uY29tX0xvY2toZWVkJTIw
TWFydGluJTIwQ2VydGlmaWNhdGlvbiUyMEF1dGhvcml0eSUyMDclMjBHMi5wN2MwgYUGCCsGAQUF
BzAChnlodHRwOi8vY3JsLmV4dGVybmFsLmxtY28uY29tL2NybC9jZXJ0dXBkL3VzYXBrY3MwNy51
cy5sbWNvLmNvbV9Mb2NraGVlZCUyME1hcnRpbiUyMENlcnRpZmljYXRpb24lMjBBdXRob3JpdHkl
MjA3JTIwRzIuY3J0MC4GCCsGAQUFBzABhiJodHRwOi8vb2NzcC5leHRlcm5hbC5sbWNvLmNvbS9v
Y3NwMA0GCSqGSIb3DQEBCwUAA4IBAQCqQobLsOCSUoPxNnARVXUD8gqVXXeUIy06wZEi7w5X39fI
H5dKW4Db8eK9iP2kiBwMp/JcdLTnXm+4CT7UKxTi7ETPnYtHuUdN7l7iaJMwtN14iibVcFQYwsYa
XOcQRi7Le/ijx0eUHNz8cWRCp4BX6n8113iJoPP2sau8ZHH7zfrtQhmIL+ulLraaHW6n7Fvc75wx
kN379Fnqkt46TTXTyFRXYBvjFrbJ0unEt7ukE3flfzN3dPjICuu471+xYHOxuZ+eT+7z2GOS8lkQ
b435Pxv2xiG9ore4ap/a0IEKNASjcYC1KMvLQMHujRcwZGRU2iLXXlNXtgtEvI4vt7bpMIIG4TCC
BcmgAwIBAgITEwAKNwRaP3KBc6NjtwAAAAo3BDANBgkqhkiG9w0BAQsFADCBjjELMAkGA1UEBhMC
VVMxJDAiBgNVBAoTG0xvY2toZWVkIE1hcnRpbiBDb3Jwb3JhdGlvbjEiMCAGA1UECxMZQ2VydGlm
aWNhdGlvbiBBdXRob3JpdGllczE1MDMGA1UEAxMsTG9ja2hlZWQgTWFydGluIENlcnRpZmljYXRp
b24gQXV0aG9yaXR5IDcgRzIwHhcNMjAwMjA0MTMyMjI5WhcNMjEwMjAzMTMyMjI5WjCBjzETMBEG
CgmSJomT8ixkARkWA2NvbTEUMBIGCgmSJomT8ixkARkWBGxtY28xEjAQBgoJkiaJk/IsZAEZFgJ1
czEWMBQGCgmSJomT8ixkARkWBkFDQ1QwNTEMMAoGA1UECxMDTVMyMQ4wDAYDVQQLEwVVc2VyczEY
MBYGA1UEAxMPQnJpZ2dzLCBLZXZpbiAxMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
5yx/YkvL4HkL+1RorO8h79uErj8UOaFGKn3vZqSzI0k3rIeeMxIRQ2MBuzrFNKHNrBgb1rE+VXeA
bF9rGZrIw5xaijfwwcWHe0Ev/Ewe3CQnwybsv4sU/AQnp9kflgc/RLSoVt0JCxt1+qtLQ/ABB2sk
3oqpSkI9ee3z+vC7u6iGqaVVavcZSU7hSy/jyBRDmpAgEuWq9uLmgyoHcIzejBdt4tONd6xYkgtM
yAik3SzMTDPPYPTDO8i+p5qt1wdMb5VKJPRiaXtIv9PO/WPaFNCWlmyif5AZms/JkU6zaWWak4uN
FOFFKQVLf1sgdFHKWGYbHlPRvrJoZJtAXXVKMQIDAQABo4IDMzCCAy8wPgYJKwYBBAGCNxUHBDEw
LwYnKwYBBAGCNxUIgf+NGYPis0uF3ZMoh9LwQ4KHokGBNoTStwOD+fB6AgFkAgEOMB8GA1UdJQQY
MBYGCisGAQQBgjcKAwwGCCsGAQUFBwMEMA4GA1UdDwEB/wQEAwIGwDBgBgNVHSAEWTBXMFUGCysG
AQQBZ2QBAgIFMEYwRAYIKwYBBQUHAgEWOGh0dHBzOi8vY3JsLmV4dGVybmFsLmxtY28uY29tL2Ny
bC9jZXJ0dXBkL2RvY3MvTE1DUC5wZGYAME4GA1UdEQRHMEWgKgYKKwYBBAGCNxQCA6AcDBplMzA4
NDI3QGFjY3QwNS51cy5sbWNvLmNvbYEXa2V2aW4uMS5icmlnZ3NAbG1jby5jb20wHQYDVR0OBBYE
FKAWWmGieSVKo0FSGAxJewpOGUCFMB8GA1UdIwQYMBaAFN7fXnQ+FbB6/sqTuYbGqkMxsturMHQG
A1UdHwRtMGswaaBnoGWGY2h0dHA6Ly9jcmwuZXh0ZXJuYWwubG1jby5jb20vY3JsL2NlcnR1cGQv
TG9ja2hlZWQlMjBNYXJ0aW4lMjBDZXJ0aWZpY2F0aW9uJTIwQXV0aG9yaXR5JTIwNyUyMEcyLmNy
bDCCAVIGCCsGAQUFBwEBBIIBRDCCAUAwgYUGCCsGAQUFBzAChnlodHRwOi8vY3JsLmV4dGVybmFs
LmxtY28uY29tL2NybC9jZXJ0dXBkL3VzYXBrY3MwNy51cy5sbWNvLmNvbV9Mb2NraGVlZCUyME1h
cnRpbiUyMENlcnRpZmljYXRpb24lMjBBdXRob3JpdHklMjA3JTIwRzIucDdjMIGFBggrBgEFBQcw
AoZ5aHR0cDovL2NybC5leHRlcm5hbC5sbWNvLmNvbS9jcmwvY2VydHVwZC91c2Fwa2NzMDcudXMu
bG1jby5jb21fTG9ja2hlZWQlMjBNYXJ0aW4lMjBDZXJ0aWZpY2F0aW9uJTIwQXV0aG9yaXR5JTIw
NyUyMEcyLmNydDAuBggrBgEFBQcwAYYiaHR0cDovL29jc3AuZXh0ZXJuYWwubG1jby5jb20vb2Nz
cDANBgkqhkiG9w0BAQsFAAOCAQEAs/4sAx5Gh6d9wowker59GtWno4xn0wSqIk68fcl5I2Vi4gKb
KYdV+iIj6WXDUmcIXuPGTQHVzt32Mv0n98KbQjnbZb3V8aIhtR6Gq+B06Xi46CUEgnyFx3SEHKcN
j2H6IVofCbICQwFVN8asfa7Y23xC4hG3XCinCqX8sOwo8jA8GcEEjGmwSefhwH293TDNiBFBHbcF
4/wuLhKOkplUKD3bPWGuO4I6s1tIR9Ouu6SrP8eENNiH7xcVOsv/uogmDCjNu6np1MoJHWzOcMrd
hFt6SjjSyHBTZfY4+msML6TiICb/4aJCB0+Z4S6tQA+8sNEvTPpcma0OIqCBa8LdhjGCBGswggRn
AgEBMIGmMIGOMQswCQYDVQQGEwJVUzEkMCIGA1UEChMbTG9ja2hlZWQgTWFydGluIENvcnBvcmF0
aW9uMSIwIAYDVQQLExlDZXJ0aWZpY2F0aW9uIEF1dGhvcml0aWVzMTUwMwYDVQQDEyxMb2NraGVl
ZCBNYXJ0aW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgNyBHMgITEwAKNwRaP3KBc6NjtwAAAAo3
BDANBglghkgBZQMEAgMFAKCCApUwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0B
CQUxDxcNMjAwOTE2MTMyNzUwWjBPBgkqhkiG9w0BCQQxQgRAZuedDv3oN4QfJURo+Uqgti1vbiih
oBKNsZNYl2OU3UVEe0EqLZOBZj4i+BP8+bxnGLiXZ5TZTTv97+K0uE/uAzCBkwYJKoZIhvcNAQkP
MYGFMIGCMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAEC
MA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDALBglghkgBZQMEAgMwCwYJYIZIAWUDBAIC
MAsGCWCGSAFlAwQCATAHBgUrDgMCGjCBtwYJKwYBBAGCNxAEMYGpMIGmMIGOMQswCQYDVQQGEwJV
UzEkMCIGA1UEChMbTG9ja2hlZWQgTWFydGluIENvcnBvcmF0aW9uMSIwIAYDVQQLExlDZXJ0aWZp
Y2F0aW9uIEF1dGhvcml0aWVzMTUwMwYDVQQDEyxMb2NraGVlZCBNYXJ0aW4gQ2VydGlmaWNhdGlv
biBBdXRob3JpdHkgNyBHMgITEwAKNwzXIH69rQezxAAAAAo3DDCBuQYLKoZIhvcNAQkQAgsxgamg
gaYwgY4xCzAJBgNVBAYTAlVTMSQwIgYDVQQKExtMb2NraGVlZCBNYXJ0aW4gQ29ycG9yYXRpb24x
IjAgBgNVBAsTGUNlcnRpZmljYXRpb24gQXV0aG9yaXRpZXMxNTAzBgNVBAMTLExvY2toZWVkIE1h
cnRpbiBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSA3IEcyAhMTAAo3DNcgfr2tB7PEAAAACjcMMA0G
CSqGSIb3DQEBAQUABIIBABInhHsJuawXiLqQFAxg7vF4ULHTyrd+XSTMD7IEBRjPBlDqIXyOyk48
cXiaGLBNcNjLT0eD/qJ3UXxpu+eFM1bEj9qO6NPD2zf+lhmhKGlUfV4upVJ+jHDrReQZsYrUbsnL
9PcxIi1IvQB64kPbeBn/VoyVB4K5wblWg+cDcPBeKzh/Hu3Jyc8gXoWlJQzExmigCVWStc79PJJN
nifqmrjBoBl2YOO8JtimecP+diT35EvTQCZuWkEB0qsvnY0u69CrEDoyM9sS7Fk+rTS7paHF7vIy
ey8OPpNPtRsk9FqumVgq2U7M7RhPfwqMgVqBmO7dN5WnV7brHTWIwMdIXb8AAAAAAAA=

------=_NextPart_000_0057_01D68C0B.A5908890--


--===============5856453622286079852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5856453622286079852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============5856453622286079852==--

