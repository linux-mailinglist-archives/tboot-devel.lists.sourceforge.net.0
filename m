Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+tboot-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLRaLJ6C4GmgigAAu9opvQ
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	for <lists+tboot-devel@lfdr.de>; Thu, 16 Apr 2026 08:33:02 +0200
X-Original-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CB940AAB5
	for <lists+tboot-devel@lfdr.de>; Thu, 16 Apr 2026 08:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bMkxz0DKKx7J1MfYtV7Pw779wfGLAe+PD32VQPVOtaM=; b=ZhlQPthSdahVSlSAQ51QxCeepf
	LSVOmUXhQjOULH5kQREf10QhY1yUlJQf/VkW2LTQ5y30jJupZubNLpN7gDJ6ZiNhZOhTUXRk/Kcqz
	b85e75uYj7TYUVOhOIOChsJkwVz+FG95hoD62ZRiu+6vQN9eomLvrSXghg3I2Q1LEC5c=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1wDGHP-0000YZ-71;
	Thu, 16 Apr 2026 06:32:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1wDGHM-0000YQ-Gs for tboot-devel@lists.sourceforge.net;
 Thu, 16 Apr 2026 06:32:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b6vS/pFWBa+pbeLjvMX2MIaDHSpisjOmorWGYp/jZs4=; b=Sea+PF8tpGVPhiqeaqcA9JvCEg
 scZ2ZPgI/ychwww2ZXci4QUw40v4i8jvAE1wBcfEWAR5IRjFmtA2asHiq4MHVAm+zZE9DNUxEogzV
 4aRHAZ236e/X6oOJnkg3ZMR84hpQfcZP8wJCIpTMrkiU77TfZW7l0e8CeaHV6bw8AYQc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b6vS/pFWBa+pbeLjvMX2MIaDHSpisjOmorWGYp/jZs4=; b=WTWAFhwE8nm7ojaL6qreMinfM5
 r2T34m/Alto6StHfH6KNUvXxfGgZKjEUhuisZlkCcKB5zRLZCQasTuVRYF8NvuB+6rgOptXyT8EQ3
 wbBWeD1wBzpw7vQnjkMI0Jpdduny/wwmT4cUHQC4uJ/3B2ze2DvVcsvQOgdMLS4RY03Q=;
Received: from mgamail.intel.com ([192.198.163.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wDGHL-00017O-Sd for tboot-devel@lists.sourceforge.net;
 Thu, 16 Apr 2026 06:32:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776321164; x=1807857164;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=uV+lNUUvP683A3lpyftEVU/ZBiXiHewJio7xY8Xo600=;
 b=C7MoBxiugWZ7eGdLYL1A6cRX/B8g4wtjRK2XthlFMolMwt5NAWnHt1nm
 /fL37/edWqeSon9lboFPE4ihDO2r6/HlrcCTGz+70xgn/msPnEn2TedFw
 KwIxOe61PrwxRy9xoacmHOGjI5HgPnU3XcPt5tbaUiD6e8nbyx4mgQQXx
 ooVcFUKmMqnTJQA9bh7O0Nhge8wsEnVLUj/6883dq+V/h94+5is+TE/Cd
 YBKBv94NOt1WZaRNCQnOWUF09WYm3L/8jONTsApCBiUlhEAv4HhvTBrul
 mz29R05FYI1dWlk762X8wHQqWq5PviI8dLO0Dwk35gMOazDA5Li5+Wufn g==;
X-CSE-ConnectionGUID: 207VkMXNSPiK7Szd9nx3QA==
X-CSE-MsgGUID: ZdGoZceKSCGunWiO4xjByw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="102772863"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="102772863"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 23:32:38 -0700
X-CSE-ConnectionGUID: GVw73Cd4Rn27YfgWrYkpNA==
X-CSE-MsgGUID: h9IqZKH8QVq+3HSTGx4AlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229622169"
Received: from iapostol-mobl.ger.corp.intel.com (HELO [10.246.17.8])
 ([10.246.17.8])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 23:32:38 -0700
Message-ID: <c7a27a55-daef-4e9e-b23b-b682a6e84edf@linux.intel.com>
Date: Thu, 16 Apr 2026 08:31:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
References: <alpine.DEB.2.20.2604111216550.9413@mail.home>
Content-Language: en-US
From: "Camacho Romero, Michal" <michal.camacho.romero@linux.intel.com>
In-Reply-To: <alpine.DEB.2.20.2604111216550.9413@mail.home>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Timo, Soon, I'll update this command. Regards, Michal
 Camacho Romero 
 Content analysis details:   (-0.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wDGHL-00017O-Sd
Subject: Re: [tboot-devel] tboot/20_linux_tboot depends on removed function
 version_find_latest
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:timo.lindfors@iki.fi,m:tboot-devel@lists.sourceforge.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[michal.camacho.romero@linux.intel.com,tboot-devel-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	ASN_FAIL(0.00)[7.38.105.216.asn.rspamd.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[tboot-devel@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,intel.com:s=Intel];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,intel.com:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[michal.camacho.romero@linux.intel.com,tboot-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[tboot-devel];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ci.debian.net:url,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 40CB940AAB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Timo,

Soon, I'll update this command.

Regards,
Michal Camacho Romero

On 4/11/2026 11:20 AM, Timo Lindfors wrote:
> Hi,
>
> it seems tboot (hg 728:54ea68a98aef) still depends on the function 
> 'version_find_latest' that is no longer included in grub (removed in 
> git commit a79c567f6b5820a8795c273a9eaabd06a1f92b29)
>
> This causes autopkgtests in Debian to fail:
>
> https://ci.debian.net/packages/t/tboot/testing/amd64/69226640/#S12
>
> Fixing this should be straightforward but I'm quite busy at the moment 
> so I'm just sending this bug report for now.
>
> -Timo
>
>
>
> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tboot-devel



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
