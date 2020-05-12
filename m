Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DBB1CF1AF
	for <lists+tboot-devel@lfdr.de>; Tue, 12 May 2020 11:35:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jYRJk-0007QV-57; Tue, 12 May 2020 09:35:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jYRJf-0007QH-Nk
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 09:35:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z/JoCZkcnytOFGgJmlhNygWcP+jIeSP+NRrBSrj0s1U=; b=bv59gOUHCwE0Xp6w3A1AsUtPGO
 6GI0tqu/vk8JSPFtOsBA746UKviNBvNmeZ3KVyHnzKIbAi9l85JYI+LKNfHQLfgtsOM+tYi3LnHaI
 scAdWrrjOiETCPGbj8pHCE3BGbRQ3dE4ulXSJAvo/auBk1S+7rScLALYUEz+bixCeMMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z/JoCZkcnytOFGgJmlhNygWcP+jIeSP+NRrBSrj0s1U=; b=HCaRuH/fr0uyk4vgd8S2Ny1g92
 VABdysSQBh+jCuZiVJSO69L+gqVSCPr08yoa+d+1BrmCvqIDRwBuvzz/rf3Os+vfJKdccRpuVlyWV
 3MnnMGM4i/6ntIj/HdO6hkpL+zGAPSkUZM0bg12l1BZc0r3JvLsXwRMTznTAAWUHnPNQ=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYRJe-005vRa-FG
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 09:35:11 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 1EC7F2061C;
 Tue, 12 May 2020 12:35:04 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589276104;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=z/JoCZkcnytOFGgJmlhNygWcP+jIeSP+NRrBSrj0s1U=;
 b=a4wgnFOJ+MwBNwljRyCNtk+pfADg5jIQ3kcWQWnOt3npSi+3LMp2GEnfOSS/dPChl6JTfa
 PFQRYLYplCK/f+sSWDdbfv0+ig4AQrkXMnCdTHYRrIlSk9m73bvf2KtwsOD7CprBP69ptt
 y3jCBDWyO5QGYUtViPCOSsFvxfjN1D0=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jYRJR-0001uf-NQ; Tue, 12 May 2020 12:34:57 +0300
Date: Tue, 12 May 2020 12:34:57 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005121234280.7218@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589276104;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=z/JoCZkcnytOFGgJmlhNygWcP+jIeSP+NRrBSrj0s1U=;
 b=HmeUvJzwTT1OhFP4Sh6XxujK1hqKyP7fPkjab+aiBnqIPd2785TP/ggVU/hid0+wb82K7m
 IZ8/nwGiHzyN9LN8zbXUSW+w6ZmWMRZZelHyJ4Q9SyrB/abbCV5yaxqt7cUjLbV9Eu/x+p
 ODSpbF8ErpawXbllLD89MX6OYAaP3Ak=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589276104; a=rsa-sha256; cv=none;
 b=L0HiZMH60HNc1/aGuFGD8glR9oG91UbpQMxamwOijM/5PdPzVAD5TKL+/KEkZywwAMpJWI
 BtiLW/AiuT5S0/QQCxgR2kLkns4UGdv/s3q54Fo6EtuK1QEVp+1iI+z9qW4iFsR+h4H77X
 3A112K47CMk5emMqG2+1UVwMqmjMWlU=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jYRJe-005vRa-FG
Subject: Re: [tboot-devel] tboot 1.9.12 build failure if CFLAGS is set in
 environment
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
Cc: tboot-devel@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

On Tue, 12 May 2020, Lukasz Hawrylko wrote:
> Thanks for investigating that issue. Fixed in a6180f9e9e86

Thanks, seems to build now.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
