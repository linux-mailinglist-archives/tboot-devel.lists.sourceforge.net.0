Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ADDF46E5
	for <lists+tboot-devel@lfdr.de>; Fri,  8 Nov 2019 12:47:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iT2je-00075X-F4; Fri, 08 Nov 2019 11:47:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iT2jd-00075R-9i
 for tboot-devel@lists.sourceforge.net; Fri, 08 Nov 2019 11:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VL5/w6604l97Vs7Ex83Jd+sWKNf0KNSm8eP5y4UfYtk=; b=XmkkRzw7zglXFmkrvO5HxGetGa
 F/+Lq8kumnkhlOgfsJ2HweS2FOgYMsOtI/230PMISnhBe6iNhnNvXzTGEDpIwg7gtSlaiV4aJk46K
 Qx4EnuTiQA4HnYaWnwkrhEcc9DdmZOL2JJVTEEXjmnPRY0TAJuwB2dQ/aTvmUhObzcBg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VL5/w6604l97Vs7Ex83Jd+sWKNf0KNSm8eP5y4UfYtk=; b=hEStAj84+jDq3xt5tjwq2KZuq4
 2SV8lAp8u3XD5PIySYiRszd7d5YI6qoui7PuirNdxmsOUlm1LXcBu5l+oIm24n9NndMRvc9v5QDu/
 hgcFJIek+dP75jnBzf2X7U2j1uiz9OGtfAmcjMUN/XhrcVOYdq9J/SM54YSMUASvUAY4=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iT2jY-004z7w-7g
 for tboot-devel@lists.sourceforge.net; Fri, 08 Nov 2019 11:47:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 03:47:13 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="196878589"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 03:47:12 -0800
Message-ID: <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, "Travis.Gilbert@dell.com"
 <Travis.Gilbert@dell.com>
Date: Fri, 08 Nov 2019 12:47:10 +0100
In-Reply-To: <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iT2jY-004z7w-7g
Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

For TPM2.0 LCP generation there is a Python tool lcp-gen2 that is
included in tboot's source code. To be honest I didn't try to generate
LCP with tboot's VLP inside but it should work. If not - this is a bug
and need to be fixed.

lcptools-v2 will is not maintained, any new features like new signing
algorithms will not be included there, so I suggest not to use it for
new designs. We are actively improving lcp-gen2, if there is something
that is missing in your opinion please let me know.

Thanks,
Lukasz

On Thu, 2019-11-07 at 21:09 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> On Wed, 2019-11-06 at 20:12 +0000, 
> Travis.Gilbert@dell.com
>  wrote:
> > > -----Original Message-----
> > > From: Paul Moore (pmoore2) <
> > > pmoore2@cisco.com
> > > >
> > > Sent: Tuesday, November 5, 2019 19:28
> > > To: Gilbert, Travis
> > > Cc: 
> > > tboot-devel@lists.sourceforge.net
> > > 
> > > Subject: Re: Creating a TXT/tboot policy suitable for a modern
> > > system with
> > > TXT+TPM2
> > > 
> > > On Tue, 2019-11-05 at 23:02 +0000, 
> > > Travis.Gilbert@dell.com
> > >  wrote:
> > > > > -----Original Message-----
> > > > > From: Paul Moore (pmoore2) via tboot-devel <tboot-
> > > > > devel@lists.sourceforge.net
> > > > > >
> > > > > Sent: Tuesday, November 5, 2019 16:50
> > > > > To: 
> > > > > lukasz.hawrylko@linux.intel.com
> > > > > ;
> > > > > tboot-devel@lists.sourceforge.net
> > > > > 
> > > > > Subject: [tboot-devel] Creating a TXT/tboot policy suitable for
> > > > > a
> > > > > modern system with TXT+TPM2
> > > > > 
> > > > > 
> > > > > 
> > > > > Hi Lukasz, others,
> > > > > 
> > > > > I'm in the process of working on the TXT/sig extensions to the
> > > > > LCP
> > > > > but I'm running into problems using the tboot tools to create a
> > > > > working LCP as a baseline.  Simply put, the instructions I've
> > > > > been
> > > > > able to find either in the sources, the mailing list archives,
> > > > > or
> > > > > through Google searches do not produce a working LCP on my test
> > > > > system.  The tools/arguments are either wrong, or the resulting
> > > > > LCP
> > > > > is bogus.
> > > > 
> > > > I had to patch lcptools-v2 because I found the same problem.
> > > > Nothing
> > > > would produce a good LCP.
> > > > 
> > > > > Before I start hacking away at the tools to get them to create a
> > > > > functional LCP that tboot understands, does anyone have a
> > > > > working
> > > > > how-to for creating a LCP using the current sources?
> > > > 
> > > > When I patched lcptools-v2, I added a simple how-to for an MLE
> > > > LCP,
> > > > it's in the mailing list archives at the link below. If you need
> > > > more,
> > > > I have a few other examples.
> > > > 
> > > > https://sourceforge.net/p/tboot/mailman/message/35976955/
> > > > 
> > > 
> > > Thanks Travis, that got me going in the right direction; I needed to
> > > add a
> > > tboot policy element to make my system happy, but that was a trivial
> > > addition to your instructions above.
> > > 
> > > If you're willing to share your other examples, I'd love to see
> > > them, and I'm
> > > sure others would as well.
> > > 
> > > Thanks again.
> > 
> > I've got about 20 some of which are negative test cases. They're bash
> > scripts. I've stripped out the beginning shell line to make it more
> > email handler friendly. #9 is actually split into 5 different tests
> > signing various other policies that were previously unsigned. They
> > were designed to be run in order as some later tests rely on the
> > outputs of previous tests. I've included #3 and one of #9. Let me know
> > if you have interest in any of the others. You don't have to take
> > ownership or define the index every time, but keeping it in the script
> > didn't cause us any issues. We could just copy some of the
> > intermediate files and keep things simple when running tests out of
> > order on multiple machines.
> > 
> > TXT - Scenario#1, Single MLE element and Unsigned Policy
> > TXT - Scenario#2, Three MLE elements and Unsigned LCP
> > TXT - Scenario#3, One PCONF element and Unsigned LCP
> > TXT - Scenario#4, Two PCONF elements and Unsigned LCP
> > TXT - Scenario#5, MLE, PCONF list Unsigned
> > TXT - Scenario#6, SINIT Revocation (Negative Testing)
> > TXT - Scenario#7, MLE Mismatch 1 - wrong hash file (Negative Testing)
> > TXT - Scenario#8, PCONF mismatch (Negative Testing)
> > TXT - Scenario#9, Signed policies with 2048 keys
> > TXT - Scenario#10, Signed policy with 1024 key
> > TXT - Scenario#11, Signed policy with 3072 key
> > TXT - Scenario#12: signed policy with invalid key size (2000)
> > TXT - Scenario#13 Input Validation, signed policy with invalid key
> > size (512)
> > TXT - Scenario#14, signed policy with invalid key size (4096)
> > TXT - Scenario#15, MLE Mismatch - change in boot parameters (Negative
> > Testing)
> > 
> > <3>
> > cd /boot
> > tpm2_takeownership -o new -e new -l new
> > tpm2_nvdefine -x 0x1c10106 -a 0x40000001 -P new -s 70 -t 0x204000A
> > 
> > #TXT - Scenario#3, One PCONF element and Unsigned LCP
> > tpm2_listpcrs -g 0x0B -o 1pcrs
> > truncate -s 32 1pcrs #only select PCR0 for the policy
> > lcp2_crtpolelt --create --type pconf --out 1pconf.elt 1pcrs
> > lcp2_crtpollist --create --out lists3_unsig.lst 1pconf.elt
> > lcp2_crtpol --create --type list --pol lists3.pol --alg sha256 --sign
> > 0x0A --data lists3.data lists3_unsig.lst
> > tpm2_nvwrite -x 0x1c10106 -a 0x40000001 -P new -f lists3.pol
> > echo TBOOT_POLICY_DATA_FILE="lists3.data" > /etc/default/grub-tboot
> > grub2-mkconfig -o /boot/grub2/grub.cfg
> > </3>
> > 
> > <9>
> > cd /boot
> > tpm2_takeownership -o new -e new -l new
> > tpm2_nvdefine -x 0x1c10106 -a 0x40000001 -P new -s 70 -t 0x204000A
> > 
> > #TXT - Scenario#9, Signed policies with 2048 keys
> > openssl genrsa -out privkey.pem 2048
> > openssl rsa -pubout -in privkey.pem -out pubkey.pem
> > cp lists1_unsig.lst lists1_sig.lst
> > lcp2_crtpollist --sign --pub pubkey.pem --priv privkey.pem --out
> > lists1_sig.lst
> > lcp2_crtpol --create --type list --alg sha256 --sign 0x0A --pol
> > lists9a.pol --data lists9a.data lists1_sig.lst
> > tpm2_nvwrite -x 0x1c10106 -a 0x40000001 -P new -f lists9a.pol
> > echo GRUB_TBOOT_POLICY_DATA="lists9a.data" > /etc/default/grub-tboot
> > grub2-mkconfig -o /boot/grub2/grub.cfg
> > </9>
> 
> Thanks Travis!
> 
> 
> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> 
> https://lists.sourceforge.net/lists/listinfo/tboot-devel
> 
> 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
