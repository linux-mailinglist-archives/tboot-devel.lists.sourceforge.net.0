Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B98C4D608B
	for <lists+tboot-devel@lfdr.de>; Fri, 11 Mar 2022 12:27:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nSdQK-0008A3-9s; Fri, 11 Mar 2022 11:27:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nSdQI-00089w-UO
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 11:27:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VhiNsTTKNIwfaFQ4VLQfKOBX3M4DtgexVQzvPfjJHgg=; b=eVON3XmPnmfTxIjApzAh0aIrzY
 pz6U2Bjnw0amFe01TXmEWopgNmwK5u2jKVGB5LGHFWg62qvlx/jCMCCL7sD2E9rN4NrGWOM7SJRcX
 aoSLvkd99Go9SekaVLWVd+1T3eaVmcc7DJIFCfdsQ6bjxYQOqFfVsX6RyaB2EDcm5htI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VhiNsTTKNIwfaFQ4VLQfKOBX3M4DtgexVQzvPfjJHgg=; b=acv9GolqjDhxsWbWJLbbcr5Yf4
 2UZtjOj3XSFJP4WnS8Fv8uOwpNVbtXeTWNTjLEi+w7x2zQPxVsT/ShrkJt+a0/YYA/f7ktp3Hc7qH
 USkDG8XBBUR451OO8arEMoCQaMB/iVkERAocC2F1LajEJKDTbKgP5A/SpOCRSeNSgHx4=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSdQB-0001gF-E3
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 11:27:05 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 1363B20154
 for <tboot-devel@lists.sourceforge.net>; Fri, 11 Mar 2022 13:26:50 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1646998010;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VhiNsTTKNIwfaFQ4VLQfKOBX3M4DtgexVQzvPfjJHgg=;
 b=U9tI2O+cpRgXEr/8vjLccphfz0yynbgZFveGbSNDiL/n6qZrw5rd8C8ZgMpcbE5njvkIeQ
 XqfDqL3oSuXC31rHwCd/Ow7mJvHT1x9i4LACbpW3M1GihIQ9cJv0VgYegBSgt6uBayOSxi
 BLUZZdDUhDR8XUaWGmvrLdeu+5ls/S0=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1nSbUr-0006Ov-Tl
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 11:23:41 +0200
Date: Fri, 11 Mar 2022 11:23:41 +0200 (EET)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <6981e56e786ff0c7e9ebe67cd7465bcb0c87a4e1.camel@hawrylko.pl>
Message-ID: <alpine.DEB.2.20.2203111121420.24510@mail.home>
References: <alpine.DEB.2.20.2203110900580.24286@mail.home>
 <6981e56e786ff0c7e9ebe67cd7465bcb0c87a4e1.camel@hawrylko.pl>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1353230531-1646990621=:24510"
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1646998010; a=rsa-sha256; cv=none;
 b=cZKmQv7rPOmgKYirKdneVp6l5cbq7jHiz6gp7kfEni2GLU/PiE01AC/tBNeVSYJRXjgwc7
 FrgqeCMfAPKez3HzRbyTWwvbS20L4zt5GtRSFhvNqLPCPNIGSrkLtSbHtGU+PnRQFzNTAf
 oPKpMaosGFreHJNpxcMm8GUPc4YA5m4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1646998010;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VhiNsTTKNIwfaFQ4VLQfKOBX3M4DtgexVQzvPfjJHgg=;
 b=SsFT7xORhRhVlKtI5ijsIIz7bN9+5j9E/6itp0sfnrhyRcb1uDDhxbTNNSAijrW/kJw5X1
 AY6LGoIGupE5IjdTJLIQWXxw+/rl9HKW/PHQ6E2wnjbySpTFq/q7HUJ7++BC1f10VuObm8
 1ZZbPXhjjfEqN5ys1/mESPDk6MC0kxM=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Fri, 11 Mar 2022, Łukasz Hawryłko wrote: > In few
    words - when multiple SINITs is loaded, there is a chance that > one (or
   more) of them will be overwritten by some TBOOT data structures > that h [...]
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nSdQB-0001gF-E3
Subject: Re: [tboot-devel] status of the grub patch to support multiple
 SINIT modules?
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
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--8323329-1353230531-1646990621=:24510
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hi,

On Fri, 11 Mar 2022, Łukasz Hawryłko wrote:
> In few words - when multiple SINITs is loaded, there is a chance that
> one (or more) of them will be overwritten by some TBOOT data structures
> that have hardcoded addresses. In most cases it is memory log, but this
> is not a rule.

This sounds annoying indeed. Would it help if we could somehow embed 
or append the SINIT modules to tboot.gz itself? I'm trying to make the 
technology as easy to use and robust as possible. Being able to use e.g. 
the same Live CD on all pieces of hardware would be a huge win.

-Timo

--8323329-1353230531-1646990621=:24510
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--8323329-1353230531-1646990621=:24510
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--8323329-1353230531-1646990621=:24510--

