Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BD7525267
	for <lists+tboot-devel@lfdr.de>; Thu, 12 May 2022 18:21:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1npBZH-0003iy-Hf; Thu, 12 May 2022 16:21:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <z23@posteo.net>) id 1npBZF-0003ii-V6
 for tboot-devel@lists.sourceforge.net; Thu, 12 May 2022 16:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dv3BI7QCRf2rVBMFZ+LKwnUl+ze86Tk7VWZdpMLK1gc=; b=WNNCtnTmLRUnihfvXXnSE50h5w
 qVXFOK3o8uVMSGqXks67wF1Z06NToqxgkWp15PmIipKQ7kWiBTPNWDCw1FDlorfTRwCHHwt27iCYb
 aWZZazC6znFmHl0ks3l59Q5kHyf12Owk+IL5RZJJ2ybB9c8pMVAIn6D5Ka5NzdQbTXUA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dv3BI7QCRf2rVBMFZ+LKwnUl+ze86Tk7VWZdpMLK1gc=; b=cBksc+MikQSskN44JwQYRKbOMt
 MkxljLuzSWwwy4cIc0Qv/YZCnlRNGN+54OjVEoGeTS/wXAwaRM9LJO5k4Fzt9XTSaDxE4iGHkZfsJ
 oxhVx9tT3O0sEKAbvPqIHuDTjBY7D26jFMPU+fROL9qmKtbvyIOOcYDxncRs6rDLTLqY=;
Received: from mout01.posteo.de ([185.67.36.65])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1npBZD-0008JU-OL
 for tboot-devel@lists.sourceforge.net; Thu, 12 May 2022 16:21:34 +0000
Received: from submission (posteo.de [185.67.36.169]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 7B49024002A
 for <tboot-devel@lists.sourceforge.net>; Thu, 12 May 2022 18:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1652372482; bh=AvedaSsMHjSlPfXyNfV+2mCIqFt82CCdftShr1ZAWiw=;
 h=Subject:From:To:Date:From;
 b=RUUC5I4kw6VRuCd7ZxZ2CdSgc7w5T1b5qctxheKTU4KPXLfqL7fL203oSFcIOXxzV
 0vadD+wnL0ryocxJ3xv2gUYdaPI6wMCTHhr9zi64zsCwEf9LNolhcGIlxzjlFyavfZ
 x7DHbFgjq7HdmXJkXUSMB+9kqMezR7pkB6hJCSEH7IVxQzhvwc7UC2l8r+e9VUTBIs
 pm+XlEPQ9R4Py8n0TnDc/6Xx4FCH/spoSv2Tr4wm9r93oqYJhmH585wCwaG5Z/RqWs
 sEMh0sMrqTxc551vjRzpvQWH2tPFtDY2MdrPCEUFI3XtLqh5eEs/C1lAYdJZyOwrIR
 nLcAiE3oVFs0A==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4KzcTs2CD0z6tm6;
 Thu, 12 May 2022 18:21:21 +0200 (CEST)
From: Derek Dolney <z23@posteo.net>
To: =?UTF-8?B?xYF1a2FzeiBIYXdyecWCa28=?= <lukasz@hawrylko.pl>,
 tboot-devel@lists.sourceforge.net
References: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
 <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
 <6ca692b5-c54d-c57c-03a8-e774a86762c0@posteo.net>
 <3ae8a2cd-9ca3-1feb-4a96-0abc54277b34@posteo.net>
Message-ID: <9da7e209-01bf-ee90-33cc-d6ed9ef355f9@posteo.net>
Date: Thu, 12 May 2022 16:19:45 +0000
MIME-Version: 1.0
In-Reply-To: <3ae8a2cd-9ca3-1feb-4a96-0abc54277b34@posteo.net>
Content-Language: en-US
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I have been working on this as best I can. However, I confess
 that I am not a kernel developer and have really no understanding of these
 tboot internals. Nevertheless here is a brief update. Please an [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.67.36.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1npBZD-0008JU-OL
Subject: Re: [tboot-devel] suspend problem since kernel 5.15
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

I have been working on this as best I can. However, I confess that I am
not a kernel developer and have really no understanding of these tboot
internals. Nevertheless here is a brief update. Please anyone feel free
to share any ideas how to move forward to some resolution.

I got a desktop machine with rs232 serial output running tboot and
reproduced the suspend problem that way and with this setup I can
collect kernel printk and also cpu hotplug (cpuhp) tracing output. I
have also thankfully got quite a bit of help from Vincent Donnefort who
wrote the cpuhp changes (the commit I posted) that have exposed the
issue. He has been very helpful, let me try to tell you what we have
figured out.

On suspend, I get into the tboot callback:

static int tboot_dying_cpu(unsigned int cpu)
{
	atomic_inc(&ap_wfs_count);
	if (num_online_cpus() == 1) {
		if (tboot_wait_for_aps(atomic_read(&ap_wfs_count)))
			return -EBUSY;
	}
	return 0;
}

but the tboot_wait_for_aps times out for me so the callback returns
EBUSY. The problem with that happening is that there is not a rollback
mechanism in place at this point in the cpuhp sequence. So I mean from
cpuhp point of view, there is not even a mechanism to handle the tboot
callback failure. Besides that, we don't know what could be a sensible
thing to do in the case of EBUSY. What does it mean tboot is busy and
what should be done about it? Please help us to understand.


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
