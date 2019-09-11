Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DF2B007C
	for <lists+tboot-devel@lfdr.de>; Wed, 11 Sep 2019 17:47:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1i84pg-0005Si-1T; Wed, 11 Sep 2019 15:47:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <greg@wind.enjellic.com>) id 1i84pe-0005Sa-34
 for tboot-devel@lists.sourceforge.net; Wed, 11 Sep 2019 15:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ut+NNrZUy9Di6MRvTQyK/9qZCfnrx+YEXgsXy9j8rV4=; b=ECREt4fYlRSdY7eMO5l5CP/OZR
 bXesGRfjmxuFG9XnLPRdSzx6TFrPgpud/Jfc2J8OwFXSTfBDmwBwfO6ldSXBcXuNbdFceNV3LNGVC
 bwmq1NVTcK4Qk/fsLC0j1ABbGyFr598ntgGe5CHfxsyYkS07mtA2QOGLc8KIdGkyNTuQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ut+NNrZUy9Di6MRvTQyK/9qZCfnrx+YEXgsXy9j8rV4=; b=R88PpQLrJDYU+U/Vpd47+xh1JH
 OwHHQPBAB1Kjn/aBu9Y2yGatx650lQeffYtgjtsrzD5hfu9725mXJSxuvL+iYconjKGQpzpQb5bbs
 b6jp0gDvWqZ0X9ycsfSGg+KizuYSW8Z1iWd6+s2F7SUOKPX/rO3rwqMRu5yrdkTVLabM=;
Received: from wind.enjellic.com ([76.10.64.91])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1i84pb-000S9j-Tk
 for tboot-devel@lists.sourceforge.net; Wed, 11 Sep 2019 15:46:58 +0000
Received: from wind.enjellic.com (localhost [127.0.0.1])
 by wind.enjellic.com (8.15.2/8.15.2) with ESMTP id x8BFkX2L027238;
 Wed, 11 Sep 2019 10:46:33 -0500
Received: (from greg@localhost)
 by wind.enjellic.com (8.15.2/8.15.2/Submit) id x8BFkXQU027237;
 Wed, 11 Sep 2019 10:46:33 -0500
Date: Wed, 11 Sep 2019 10:46:33 -0500
From: "Dr. Greg" <greg@enjellic.com>
To: "Haskins, Robert" <robert.haskins@lmco.com>
Message-ID: <20190911154632.GA25934@wind.enjellic.com>
References: <fc9d52706f3d43549996876d4a0b7030@lmco.com>
 <20190907213307.GA12122@wind.enjellic.com>
 <20714fedc99d4e0d8b8c8d54434b3e1a@lmco.com>
 <33f30dd7b8674454be7d9a8b5d280eab@lmco.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33f30dd7b8674454be7d9a8b5d280eab@lmco.com>
User-Agent: Mutt/1.4i
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.2.3
 (wind.enjellic.com [127.0.0.1]); Wed, 11 Sep 2019 10:46:34 -0500 (CDT)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: idfusion.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1i84pb-000S9j-Tk
Subject: Re: [tboot-devel] EXTERNAL: Re:  GETSEC[SENTER]....and then reset
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
Reply-To: "Dr. Greg" <greg@enjellic.com>
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Tue, Sep 10, 2019 at 01:41:53AM +0000, Haskins, Robert wrote:

Hi Robert, I hope your day is going well.

My apologies for the delay in responding.  Lots of fires to put out
and I needed to go back and look at some notes.

> OK, here is my latest TBOOT log. It looks like we did get an error
> code (TXT.ERRORCODE: 0xc0007051) this time around:

The parse_err utility that comes with the tboot package is your
friend.  If you run that numeric error code through it you get the
following:

AC module error : acm_type=0x1, progress=0x05, error=0x1c

tboot is decoding the error as well, ie:

> TBOOT: TXT.ERRORCODE: 0xc0007051
> TBOOT: AC module error : acm_type=0x1, progress=0x05, error=0x1c

If you downloaded the .zip file containing the ACM module it should
have a spreadsheet that details the various internal errors.  It
doesn't match well with the 'progress' or 'error' fields but the 0x1c
code gives some idea on where to start looking.

The most likely candidate error is the following:

---------------------------------------------------------------------------
ERR_INVALID_INPUT_PARA

Internal error. TPM driver detected invalid function input
parameter.
---------------------------------------------------------------------------

Which, given the following output in your logfile:

> TBOOT: reading Verified Launch Policy from TPM NV...
> TBOOT: TPM: fail to get public data of 0x01200001 in TPM NV
> TBOOT: 	:reading failed
> TBOOT: reading Launch Control Policy from TPM NV...
> TBOOT: TPM: fail to get public data of 0x01400001 in TPM NV
> TBOOT: 	:reading failed
> TBOOT: failed to read policy from TPM NV, using default

Probably suggests that the ACM is unhappy about the fact that, at a
minimum, the Platform Owner (PO) NVRAM index has not been configured.

The Intel TXT Software Development Manual (SDM) indicates that the
Platform Supplier (PS), PO and Auxiliary (AUX) NVRAM index locations
are required to be configured.  If you grab a copy of the SDM this
information should be on page 155 or thereabouts

Hopefully, whoever is vending your platform, has TXT 'provisioned' the
platform which involves, at a minimum, configuring the PS NVRAM index.
It has been our experience that you need the Intel supplied TXT/TPM
provisioning tools in order to do this and those are, at our last
experience, only available under NDA.

All of the Intel vended platforms that we have dealt with have been
TXT provisioned.  We had a tough go round with Gigabyte boards which
appeared to have been either not provisioned or provisioned
incorrectly and were thus unusable for TXT.  So caveat emptor for
anyone who stumbles across this message on the INTERNET.

The relevant TPM2 NVRAM indexes are as follows:

PS:  0x1800001 or 0x1c10103
PO:  0x1400001 or 0x1c10106
AUX: 0x1800003 or 0x1c10102
SGX: 0x1800004 or 0x1c10104

The NVRAM index range that is to be used is dependent on the ACM
module.  The tboot package has the acminfo command, if you run that on
your module you will see the following in the output:

TPM capability:
	ext_policy: 0x3
	tpm_family : 0x3
	tpm_nv_index_set : 0x0

The tpm_nv_index_set variable indicates the NVRAM index range that the
ACM is intending to use.  You can also see this in the following
section of your log:

> TBOOT: 	 TPM info list:
> TBOOT: 		 TPM capability:
> TBOOT: 		      ext_policy: 0x3
> TBOOT: 		      tpm_family : 0x3
> TBOOT: 		      tpm_nv_index_set : 0x0

tpm_nv_index_set 0 means the ACM is using the 0x18xxxxx and 0x14xxxxx
locations.

In your previous mail you referred to the following:

> 3) I am not sure what you mean by this question. Are you referring to index
> 0x1c10103? (see https://sourceforge.net/p/tboot/mailman/message/35551544/)

The message you are referring to with the URL is a bit of a red
herring in all of this, since Travis Gilbert works/worked for Dell and
was working on a platform that had the ACM module included with the
platform BIOS/firwmare.  I suspect they were doing early ground work
in preparation for delivering systems which support the Windows
'System Guard' feature, which is an implementation of Dynamic Root of
Trust for Measurement (DRTM) for the Windows platform.

The downloable 7th/8th gen ACM modules are using index set 1 locations
but that is the first downloadable ACM to move to the higher order
NVRAM indexes.  I suspect that is the first generation of hardware
that is actively supporting System Guard.

So you will need to make sure that the PS, PO and AUX indexes are
created and with the proper attributes.

Table J-2 in Appendix J of the TXT/SDM has details on how to properly
configure the NVRAM index locations.  Here is a summary table that may
be useful for your efforts:

---------------------------------------------------------------------------
PS index:
	PS1 attributes (non-permanent): 0x42040408
		TPMA_NV_POLICYWRITE
		TPMA_NV_POLICY_DELETE
		TPMA_NV_AUTHREAD
		TPMA_NV_NO_DA
		TPMA_NV_PLATFORMCREATE
	Size:	38 + HASHALGID_DIGEST_SIZE
		SHA256: 70

AUX index:
	Attributes: 0x42044408
		TPMA_NV_POLICYWRITE
		TPMA_NV_POLICY_DELETE
		TPMA_NV_WRITE_STCLEAR
		TPMA_NV_AUTHREAD
		TPMA_NV_NO_DA
		TPMA_NV_PLATFORMCREATE
	Size: 40 + 2 * HASHALGID_DIGEST_SIZE
		SHA256: 104

SGX index:
	Attributes: 0x42040404
		TPMA_NV_AUTHWRITE
		TPMA_NV_POLICY_DELETE
		TPMA_NV_AUTHREAD
		TPMA_NV_NO_DA
		TPMA_NV_PLATFORMCREATE
	Size:
		all: 8

PO index:
	Attributes Broadwell: 0x4000A
		TPMA_NV_OWNERWRITE
		TPMA_NV_POLICYWRITE
		TPMA_NV_AUTHREAD
	Attributes post-Skylake: 0x204000A
		TPMA_NV_OWNERWRITE
		TPMA_NV_POLICYWRITE
		TPMA_NV_AUTHREAD
		TPMA_NV_NO_DA
	Size:	38 + HASHALGID_DIGEST_SIZE
		SHA256: 70
---------------------------------------------------------------------------

I see from your logs that you are allowing tboot to default to using
SHA1 for its measurement algorithm.  Since you are getting started
with all of this I would recommand you use the following command line
arguement for tboot:

extpol=sha256

That will configure tboot to use SHA256 for its measurement and
hashing.  The size attributes for the NVRAM index locations in the
above NVRAM summary are based on SHA256.

So your next step will be to find a set of TPM2 command-line utilities
that you are comfortable with and work on getting the PO and AUX NVRAM
index locations created with the proper size and attributes and to
verify that the PS index has been configured.

I'm assuming that Lockheed Martin has enough juice with Intel to get
the necessary tooling if your platform has not been TXT provisioned.
Either that or enough juice with your hardware OEM in order to get
them to vend properly provisioned platforms in order make this
technology useful in support of your security initiatives.

We built a TPM2 toolbox on top of Ken Goldman's TSS2 library, the
latter of which is simply excellent.  Ken is at IBM TJ Watson, and I
believe, sits on the TCG/TPM2 steering committee for IBM and probably
knows as much about TPM's as anyone on the planet.

The 0x1200001 NVRAM location is for a Verified Launch Policy (VLP)
measurement, that is an invention of tboot's.  It is not strictly
necessary from the perspective of getting the ACM to a point where it
will not simply reset the platform.

I see from your logs that you have an SGX capable platform:

> TBOOT: SGX:verify_IA32_se_svn_status is called
> TBOOT: SGX is enabled, cpuid.ebx:0x29c6fbf
> TBOOT: Comparing se_svn with ACM Header se_svn
> TBOOT: se_svn is equal to ACM se_svn

You may want to keep in the back of your mind that the ACM may also be
unhappy if it doesn't have the SGX NVRAM index provisioned as well.

So if you move forward with these configurations it should advance you
to the point where the platform will act a bit more hospitably.

The target for your efforts should be to get a successful system boot
with a LCP_ANY policy written into the 0x1400001 index location using
SHA256 as the measurement algorithm.  Once you are at that point you
will at least have verified there are no 'gotchas' in the hardware and
you can begin advancing to more sophisticated launch control policies.

Hopefully all of this is useful information in pursuit of advancing
the Lockheed/Martin security efforts.... :-)

Speaking of which I was doing a presentation on the application of SGX
security technology to the implementation of autonomously
self-defensive computing platforms at the National Defense Industry
Association (NDIA) cyber-security conference in Austin, TX in March.
A Lockheed engineer that was attending ended up engaging me a couple
of times regarding our work.

We develop something that we call the Secure Runtime Development
Environment (SRDE) that integrates all of these technologies in order
to allow the rapid creation of purpose built platforms that are
capable of independently defending themselves.

BTW: Yes, we have done a lot of work on TXT and SGX.  Unfortunately,
at a time when it is absolutely critical that we advance our
industrial cyber-security posture, the barriers to effectively using
hardware platform security are nothing short of horrendous... :-)(

Let us know how things go with your efforts.

Good luck with your project.

Dr. Greg

As always,
Dr. Greg Wettstein, Ph.D, Worker
IDfusion, LLC               SGX secured infrastructure and
4206 N. 19th Ave.           autonomously self-defensive platforms.
Fargo, ND  58102
PH: 701-281-1686            EMAIL: greg@idfusion.net
------------------------------------------------------------------------------
"Politics is the business of getting power and privilege without possessing
 merit."
                                -- P.J. O'Rourke


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
