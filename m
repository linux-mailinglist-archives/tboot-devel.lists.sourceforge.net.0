Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B37E1CDDAF
	for <lists+tboot-devel@lfdr.de>; Mon, 11 May 2020 16:51:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jY9mE-0001L4-9D; Mon, 11 May 2020 14:51:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jY9mD-0001Kr-HX
 for tboot-devel@lists.sourceforge.net; Mon, 11 May 2020 14:51:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CnOzE5sAEkljyd1Q5qTg3B8sWI6a5ZvQdXPa4zlMAfo=; b=E/hBdJx6BYNtDE17+cZrI3Xp5Y
 n9LzWza5BMMLLVYFKNNYB2WAluBtnAKkqWD8GMUEZj7wrxSGUzinVMNQVIGl76Ey1sTvF5Wk9nSXR
 pOV17gIqJTYFfBwEMqPXL61RQVZiCKba91uSgBTSoylW0Gs3J4KUYpixPpz+/BMppkjs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CnOzE5sAEkljyd1Q5qTg3B8sWI6a5ZvQdXPa4zlMAfo=; b=X1bsxG2iEF4Euz6bcPEg2TL05j
 q9RpMatS+NigIgIO/XhHSOjmQYa7Brcuhi9vlp4197Uu+8KoHWzx1QrWptxLPUrX3+PXjTc0ZkUS9
 rMxepdpTlaLHI3ruhRmjwPMBzImJlGhmmBulX51MrXImVLU+ND9IBUaj0M87GEOM4bjA=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jY9mC-0095Gr-38
 for tboot-devel@lists.sourceforge.net; Mon, 11 May 2020 14:51:29 +0000
IronPort-SDR: m9qDwh8D8iIHGakyQo1IF/E4Th3dwg7sD196STx/lj8J8Sf0xrafIQUxvfDIlepzJbJyjbmANb
 xlFjxSLakteQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 07:51:22 -0700
IronPort-SDR: yEdZNRin5JGZwdepiRSv0ZmljiJr7bRZxnj9+HXa1dstwhB5VefwdEsN8dvbdNZM+n3NOFRmR4
 UkBZhKYZlGhg==
X-IronPort-AV: E=Sophos;i="5.73,380,1583222400"; d="scan'208";a="463196072"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.0.181])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 07:51:21 -0700
Message-ID: <ea61204e4d047af932df00ebd066fc72f9bffee5.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Mon, 11 May 2020 16:51:19 +0200
In-Reply-To: <alpine.DEB.2.20.2005081314230.3560@mail.home>
References: <alpine.DEB.2.20.2005081314230.3560@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jY9mC-0095Gr-38
Subject: Re: [tboot-devel] GPG key used for signing releases?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Fri, 2020-05-08 at 13:28 +0300, Timo Lindfors wrote:
> Hi,
> 
> where could I get the GPG used for signing releases?
> 
> $ gpg tboot-1.9.12.tar.gz.gpg
> gpg: WARNING: no command supplied.  Trying to guess what you mean ...
> gpg: Signature made Wed 29 Apr 2020 04:29:59 PM EEST
> gpg:                using RSA key 5CECC9E12872F424009D0E0B6F2F48CC4E0B23EF
> gpg: Can't check signature: No public key
> 
> 
> 
> -Timo
> 

Hi

It looks like I forget to upload public key to PGP server. I have just
done it: https://pgp.mit.edu/pks/lookup?op=get&search=0x6F2F48CC4E0B23EF

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
