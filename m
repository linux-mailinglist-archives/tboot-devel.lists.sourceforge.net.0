Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 257862B029E
	for <lists+tboot-devel@lfdr.de>; Thu, 12 Nov 2020 11:19:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kd9gt-0006P1-IY; Thu, 12 Nov 2020 10:18:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1kd9gk-0006N2-EK
 for tboot-devel@lists.sourceforge.net; Thu, 12 Nov 2020 10:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8wAZWUjFDXgHpwW6fW6Q1n7T1+VduHFZlj7M/LJX20I=; b=EEBG13sajcNxlC3bdb1NWI182w
 npxwaRmjtXDoE+KipwVSFcrzn36SagzbW7dnQrSIozfYq1OO8eouzz21k+Zsju8JqwmTD55VJDZty
 xK9mt0d2RIleMdp8cmO3CKsw3mJdRSupvyzszlqo0nXo1HcdNihPosE6Tun8VV+kSQTY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8wAZWUjFDXgHpwW6fW6Q1n7T1+VduHFZlj7M/LJX20I=; b=H8Wxu7WSrB4GtkAuu9yzpnpTI8
 /JyCTVzO3y0DfmRx2mBJ3U0dKr82OX5s7zeDFqKrFQ9W2HAwgb0Ka9+qorHVP9o/xGgCte8yNYnhw
 fVYbVXbPhVm+nqiaAmT+vCt6wSGKlOpgQg3KrXdkb23U6pqtJ/NG/oOpnJJvZDK+/E/Y=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kd9gc-000OVh-CV
 for tboot-devel@lists.sourceforge.net; Thu, 12 Nov 2020 10:18:46 +0000
IronPort-SDR: R5KrkfmdX/XitY0tLDVzIHBLTc/MmRp7WFiQMHXJLRSS2OkY3gyNhTpCm33W6P7T79xvYmTYgf
 Mlbj8Wf/DbBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="254995132"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="254995132"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 02:18:24 -0800
IronPort-SDR: 7dVrzzZ4ty3kWDwq+T92/5rv5EbetJS5cK+zERqEvLkxRFCdIcs92qqSDv/pjDlAMW9Ri/2DRH
 FuiYIoqEjikA==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="542206498"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.18.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 02:18:22 -0800
Message-ID: <b72a6b1691951dac5e97ef161a0a95721c8dfd19.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Jerry Snitselaar <jsnitsel@redhat.com>, tboot-devel@lists.sourceforge.net
Date: Thu, 12 Nov 2020 11:18:20 +0100
In-Reply-To: <87h7pv35hy.fsf@redhat.com>
References: <87h7pv35hy.fsf@redhat.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kd9gc-000OVh-CV
Subject: Re: [tboot-devel] tboot and tpm1.2
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

Hi Jerry

On Wed, 2020-11-11 at 15:15 -0700, Jerry Snitselaar wrote:
> Would it be possible, or has any thought been given to being able to
> build tboot with only tpm2.0 support? We have started to deprecate
> support for tpm1.2, and eventually would like to just support
> tpm2.0. One possible stopping point to accomplishing that is the
> dependency tboot has on trousers. I don't know much about tboot,
> so I don't know if that is something that could be possible in
> the future.

TBOOT itself does not depend on TrouSerS. This library is only required
to build policy generation tool - lcptools. If you call 'make' inside
tboot directory, not from repository root, you don't have to install
TrouSerS.

There is a new version of that tool - lcptools-v2 that does not depend
on TrouSerS. In next TBOOT release I am going to mark lcptools as
depreciated and exclude it from building process, so there will be no
dependency on TrouSerS any more in TBOOT.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
