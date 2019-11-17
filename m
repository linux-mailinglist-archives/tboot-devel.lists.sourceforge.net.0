Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EBAFF86B
	for <lists+tboot-devel@lfdr.de>; Sun, 17 Nov 2019 08:34:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iWF4l-0003WW-KC; Sun, 17 Nov 2019 07:34:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <greg@wind.enjellic.com>) id 1iWF4k-0003WK-KK
 for tboot-devel@lists.sourceforge.net; Sun, 17 Nov 2019 07:34:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uSgoVTVVTN9S5xc1oiUU8QtDhsanvVTrlYRPLLf8IaM=; b=FGNoGvQZ7dgw1yG1+i3DqplTNG
 CPgrmZpx572zvo3AQhpaxNwfdIL8A4IY/TpDX/LdHH3zBDymC0oWpkHa6hKNfLnr2tTx1MgCeM/BZ
 Zw6uKNGmfG2TaSGJpeRubhehgm2JO/F+UtPDgk9+vzd7LIwTCeLDCidr8JEIL4jWdh80=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uSgoVTVVTN9S5xc1oiUU8QtDhsanvVTrlYRPLLf8IaM=; b=BbUzHIk6NVv1QWNyK2f9uEGXxn
 W6rniZNydjMVulx7rdCojSJGhP8Iu42YmLkDcZNekhRCUnTNhYmzA6aoLuf3dDck+WX+g+VPPP7Dt
 ofn/vUM0QpH4KUkLpAwhwfbxMPVuzE6g5+Sb+bZEcTA6iLLmjppjXRrU8PlGn2ZyLzDA=;
Received: from wind.enjellic.com ([76.10.64.91])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1iWF4i-008ZSL-6H
 for tboot-devel@lists.sourceforge.net; Sun, 17 Nov 2019 07:34:26 +0000
Received: from wind.enjellic.com (localhost [127.0.0.1])
 by wind.enjellic.com (8.15.2/8.15.2) with ESMTP id xAH74Qtk025147;
 Sun, 17 Nov 2019 01:04:26 -0600
Received: (from greg@localhost)
 by wind.enjellic.com (8.15.2/8.15.2/Submit) id xAH74P96025146;
 Sun, 17 Nov 2019 01:04:25 -0600
Date: Sun, 17 Nov 2019 01:04:25 -0600
From: "Dr. Greg" <greg@enjellic.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>
Message-ID: <20191117070425.GA25021@wind.enjellic.com>
References: <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
 <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
 <beabd66d2dffc0d8d08d411588501412cca2fdfe.camel@cisco.com>
 <473a0d4460a64bfe8a96c1942ae21de4@AUSX13MPC102.AMER.DELL.COM>
 <f3f94fc1ba73ff604260a6bfb8e4a8ee8b1e9e00.camel@linux.intel.com>
 <248f9a4ad62243db9b46e8d35eca12a9@AUSX13MPC102.AMER.DELL.COM>
 <0064e5367b67e3caf51f5a1f955db577fe51ccd6.camel@linux.intel.com>
 <c967b04a294d2552d0167d52745fb24ccafa1e1c.camel@cisco.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c967b04a294d2552d0167d52745fb24ccafa1e1c.camel@cisco.com>
User-Agent: Mutt/1.4i
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.2.3
 (wind.enjellic.com [127.0.0.1]); Sun, 17 Nov 2019 01:04:26 -0600 (CST)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: idfusion.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1iWF4i-008ZSL-6H
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
Reply-To: "Dr. Greg" <greg@enjellic.com>
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Fri, Nov 15, 2019 at 07:40:58PM +0000, Paul Moore (pmoore2) via tboot-devel wrote:

Hi, I hope the week is starting well for everyone.

> Thanks Lukasz.  I realize that might be a difficult discussion
> internally, but I think it is the right thing to do at this point in
> time.

Hopefully, if relevancy is the metric, it shouldn't be too hard to
sell the concept of C based command-line tools.

There are only a handful of people working on this technology.  Within
that group I would reason, with a high degree of probability, that we
all prefer working with command-line tools and we are all universally
working with C based toolchains.

We did a proof of concept validation for a partner on TPM2 Broadwell
and Skylake based systems that we took as far as getting Linux to do a
trusted boot.  We put that work on the shelf without doing any
significant policy work, in part, because we didn't have the cycles to
deal with implications of the Python based tools.

We had done a lot of partner work on TPM1/TBOOT based embedded systems
and all of our scripting and workflow were command-line and C tool
based.

Hopefully another useful data point.

Best wishes for a productive week.

Dr. Greg

As always,
Dr. Greg Wettstein, Ph.D, Worker
IDfusion, LLC               SGX secured infrastructure and
4206 N. 19th Ave.           autonomously self-defensive platforms.
Fargo, ND  58102
PH: 701-281-1686            EMAIL: greg@idfusion.net
------------------------------------------------------------------------------
"Nullum magnum ingenium sine mixtura dementiae fuit."
        (There is no great genius without some touch of madness.)
                                -- Seneca


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
