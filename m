Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C2C3446BE
	for <lists+tboot-devel@lfdr.de>; Mon, 22 Mar 2021 15:09:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lOLFB-0002Sw-W8; Mon, 22 Mar 2021 14:09:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1lOLFA-0002Sp-1i
 for tboot-devel@lists.sourceforge.net; Mon, 22 Mar 2021 14:09:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kz7fablsfISPTM05kS4GFfS+aPSgBtzNnigQXF5C+Ow=; b=K9Jhhz99WAxnzu3o6qSBIJmx9i
 bnnIAuRFuiPrOtrMFPFCOVmXkp5KtL4pHkZGrxlvWWGP0dpEBD2bMsXQeycu7BOdOGPuh5gWxvzIT
 uwZKFtF8ZqWoUN2IQNzsRV9w65umuyC0OvS5P7juTKYdwPC9rsmBrC3SqfW80PxLF0z8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Kz7fablsfISPTM05kS4GFfS+aPSgBtzNnigQXF5C+Ow=; b=Gcq8VUHTUjv690kWVAjIdUY2EI
 fGsIJz1eH/1mPNX1RYEwztDwsXftgto5fSieX7WBA5L4LNlzHIAxZEMROPEh1n1qtClQ3gPwm1Nd5
 xySSAgA3G43WA6voRQexv3AvUzs0H5i4YCsIIkRXsaGfLpnHmkhsNg20kn7o+B9QdOnQ=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lOLF6-00ERtw-2O
 for tboot-devel@lists.sourceforge.net; Mon, 22 Mar 2021 14:09:19 +0000
IronPort-SDR: focH6oZwPOhX3c7N7GbBMQT8OENmWrYZORrcGE16DH84fvgyPCbEQZU8ynPTZyAClvG+rt0h+H
 Vt2lc/dlmzkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="254276909"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="254276909"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 07:09:10 -0700
IronPort-SDR: m0AUJNSl9BoWym1kpP44PccWjpV0a4rllfrAlagE/XYe8cgzBxrHousTdfOFtJEqkdhhbCFeDS
 8JZjdVmIL6ug==
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="407846380"
Received: from wszczerb-mobl.ger.corp.intel.com ([10.213.20.253])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 07:09:08 -0700
Message-ID: <d1f2f9b8c131ca0ad35eba2819e8ba0dc9699127.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Oliver, Dario N" <dario.n.oliver@intel.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Mon, 22 Mar 2021 15:09:06 +0100
In-Reply-To: <DM6PR11MB4425DA36A939D9937F14CE8EDB689@DM6PR11MB4425.namprd11.prod.outlook.com>
References: <DM6PR11MB4425A4A47E94DAE32961A0E2DB699@DM6PR11MB4425.namprd11.prod.outlook.com>
 <a92b3ea469052bd058299e4d0edeca0149945d69.camel@linux.intel.com>
 <DM6PR11MB4425DA36A939D9937F14CE8EDB689@DM6PR11MB4425.namprd11.prod.outlook.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lOLF6-00ERtw-2O
Subject: Re: [tboot-devel] Tboot on Intel NUC8i7HVK and Fedora 33
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

On Fri, 2021-03-19 at 17:51 +0000, Oliver, Dario N wrote:
> I could not find any docs on what to do after installing 2.x as regards Secure Boot.
> Should I sign that with my own key and perform Secure Boot customization?
> Can I use the Machine Owner Keys (MOK) feature of the Linux Shim to get that verified?
> After rebooting with Secure Boot enabled, I got the error messages saying that multiboot2 and relocator could not be found, which is weird because I still have them installed in "/boot/efi/EFI/fedora/x86_64-efi/"

If you 'make all' TBOOT, you should get tboot.mb2 file inside tboot
folder. That binary can be signed with standard sbsign tool and then
loaded from GRUB2 using multiboot2.

Looks like Fedora still does not allow to run multiboot2 kernels when
Secure Boot is enabled. You should try to build GRUB2 from the upstream
and then check if you will be able to boot signed tboot.mb2 file. If you
face any issues I can help you and setup QEMU environment where you will
be able to check how it works.TXT in QEMU does not work, but at least we
should get into point where TBOOT starts and complains that platform is
incompatible.

I suggest to use MOK, however custom PK or KEK should also work.
Generate your own key, provision it to MOK database and sign tboot.mb2

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
