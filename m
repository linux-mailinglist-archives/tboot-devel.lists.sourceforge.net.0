Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BA881A3E8
	for <lists+tboot-devel@lfdr.de>; Wed, 20 Dec 2023 17:11:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1rFz9v-00014h-0a;
	Wed, 20 Dec 2023 16:10:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <timo.lindfors@iki.fi>) id 1rFz9s-00014U-T1
 for tboot-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 16:10:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j1ZCBZYt66iDVvBI5UdWMmhKBGXh7v4lZ/vrNiMoNC0=; b=T2bYvhgigtngE/EIzzKXoS6lFV
 5wTOzOJrw3GHV6f+QTN01jJ8WpfTo9Rk4WttpLjxQgVcX9EuKo43o4SjZNBIRVyTWeFkbgKCHq7Vo
 bTP3rI1jAu9Va2KlRVCbfoU06jz7YN3divX580JDiaXq5rjWi4PR2GmAwjxvNrZgiiIA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j1ZCBZYt66iDVvBI5UdWMmhKBGXh7v4lZ/vrNiMoNC0=; b=d
 Uf+/RrTEVmyJ4e8maXwvejayWu+epxXts0TRf7/F0R0G96uwe2UXyieZSHzPj/MeVl6ngJWjLQQGm
 mQcE7VbIWaJUlk3aK+OjHqGtNAD+G1aZRFK7XIMFKUlFFKaYfuPXaFHl9d+JMiXyyyC34VQoKTIAe
 oS0yfeWA971cKmt8=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFz9p-000171-G9 for tboot-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 16:10:57 +0000
Received: from meesny.iki.fi (meesny.iki.fi [IPv6:2001:67c:2b0:1c1::201])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by lahtoruutu.iki.fi (Postfix) with ESMTPS id 4SwJ2N5v7gz49Q2p
 for <tboot-devel@lists.sourceforge.net>; Wed, 20 Dec 2023 17:51:24 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1703087484;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=j1ZCBZYt66iDVvBI5UdWMmhKBGXh7v4lZ/vrNiMoNC0=;
 b=WlKFotK1UVS0Ofmf3/z+ytAxwEPhoa59qY4GNq58JA0KFcDaJ/13fewUcvxb9vL54s/Mmw
 CvdsblhnJv3gSAU7jc4gHztr2Kq+kW0L6OJBH1qPEJcG1JdxdhKrwaIKxjrEMbd5+AUsD+
 mZkUIFZw4fIxOj6AxaZ3L44wAPhNJCBDQjWStUxyNZMuOjz1bYSlgZqI0QPNR2Hiq5cWAw
 y8w+pAUlTTtxouwDHuETUjmgNOa10NrbrOr7oQkkQ0Y1wr1CoLD2ZRtR61VEZ7CPgyCCI9
 x3AyHjJPUETmLETqxQR7f/mK46Nrrpuhg1ObX5RaMh6F1GI//UEZsmwSRNU7kw==
Received: from mail.home (82-181-196-180.bb.dnainternet.fi [82.181.196.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 4SwJ222T2WzyPH
 for <tboot-devel@lists.sourceforge.net>; Wed, 20 Dec 2023 17:51:06 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1703087466;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=j1ZCBZYt66iDVvBI5UdWMmhKBGXh7v4lZ/vrNiMoNC0=;
 b=IDr2l13F843jeyLR9gY2sedNZrwzxIltjd0+E5hCMyZStZ3i1B0W2eJ7S8E8DcCCK0ByjM
 hkLdSIU1OfG53CaPHd5N+9zXrhpPGJ7XUKbBvABG0OCptzeT1Tsvk0rSdK3OFKZHOdeOQU
 rDCVRv5P+MItQfOgy3B4PCn1+j/Pvxg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1703087466;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=j1ZCBZYt66iDVvBI5UdWMmhKBGXh7v4lZ/vrNiMoNC0=;
 b=iLkksV8E7tBtHb1zuHDZjh7I6mNjBLnFf9JmVN03SSwY4XMFCXdzIgZVb0Jk6QouGrWRiZ
 aFgSJiG1rCWb5nPtEnDyns3x2ULNd+td50NIlV7rlQZuxw1HxUf3b7r6l3/6gi2KQ8H2fS
 iTt0s/Vdli9evBtAeJ6K4qPLx7FiY/I=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1703087466; a=rsa-sha256; cv=none;
 b=bsJxml++ruTX3VpRtokQXJB1iwyRsPEP2DkeQrPvEtu85iENLCIfvdMaUFfwavmzU83oJH
 lsjEt+jSX2GE2DgLEYI45koXt2VW7gzerHFFHJnLHEKtqY4uKPvJt6226F52JZKweZWIMa
 /L6AHI7RNus+91sig1fBJ3TgbgM3MMY=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1rFyqf-0003CP-Nl
 for tboot-devel@lists.sourceforge.net; Wed, 20 Dec 2023 17:51:05 +0200
Date: Wed, 20 Dec 2023 17:51:05 +0200 (EET)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2312201742410.12261@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, a Debian 12 installation with tboot stopped working when
 I upgraded BIOS from version 2.4.2 to version 2.9.0. Instead of a normal
 boot the system just resets and BIOS tells me that "There was an error during
 TXT SNIT ACM invocation on the previous boot. Verify that the SINIT ACM used
 is compatible with this platform and with the OS loader." 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFz9p-000171-G9
Subject: [tboot-devel] Dell PowerEdge R420 BIOS 2.9.0 regression
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

Hi,

a Debian 12 installation with tboot stopped working when I upgraded BIOS 
from version 2.4.2 to version 2.9.0. Instead of a normal boot the system 
just resets and BIOS tells me that

   "There was an error during TXT SNIT ACM invocation on the previous boot.
    Verify that the SINIT ACM used is compatible with this platform and
    with the OS loader."

Here's more info:

Hardware: Dell PowerEdge R420
Boot mode: BIOS
TPM version: 1.2
CPUs: 2 x Intel(R) Xeon(R) CPU E5-2430 0 @ 2.20GHz
tboot package version: 1.10.5-4
intel-acm package version: 20210710-2

The serial console logs are available at the following URLs:

https://lindi.iki.fi/lindi/tboot/Dell_PowerEdge_R420_BIOS_2.4.2_serial.txt

https://lindi.iki.fi/lindi/tboot/Dell_PowerEdge_R420_BIOS_2.9.0_serial.txt

Reverting back to the old BIOS version resolved the issue but I guess this 
should be investigated?

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
