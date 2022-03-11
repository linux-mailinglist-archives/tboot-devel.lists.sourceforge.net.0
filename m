Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C1E4D5E14
	for <lists+tboot-devel@lfdr.de>; Fri, 11 Mar 2022 10:13:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nSbKz-0004cE-5N; Fri, 11 Mar 2022 09:13:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nSbKs-0004c7-Ra
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 09:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=udk3oSZX9kCC5/gnwKp0ZvB9mQEQ8ZLHWWgAWr4lgGM=; b=D21vt2eg9grHuj1PWZ2qv8ZCAA
 IjqpwcMfAQT5jsHppUuqko3CDFsk2vw8Ktys7zWl+J3PPrzsjEeCZRgdoRV0cVX/9anaB7/CiUH16
 T0A6AHACZY0accP3hcm9KfbLAWY7x3W65N04HoYeOsyflFnTSUQYyj+h8PaBLfWhTTyU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=udk3oSZX9kCC5/gnwKp0ZvB9mQEQ8ZLHWWgAWr4lgGM=; b=h
 S5H5zXFzuTmctt3QnIhY/pAVbYAplc+LomRlhUPY5RYilgz7FR4oWbOS0+Ja1nsmA1fquWuTMA2A/
 AA0Ph2YM8Gy3fTTqTTkPdsvwOhaQyos5yXY1Ie2X/f2goV+u2rswqL1rrGtTIeHmhfmvWl1aWp8tc
 JBQiNKFIIO8ygiW8=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSbKn-00BxMG-Mp
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 09:13:21 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 2782B20208
 for <tboot-devel@lists.sourceforge.net>; Fri, 11 Mar 2022 11:13:07 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1646989987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=udk3oSZX9kCC5/gnwKp0ZvB9mQEQ8ZLHWWgAWr4lgGM=;
 b=GEe3ZspoRqINXf3qn2AbUhBZZeRhTWmbmYmUC+TmWKLLbMMXRN/OvjF0+/+XUYc+cKgM8H
 D3nVTA6IB3+5EV5/7zYXHThW4G9L1why8C3/Sjm3UAfstBJioVHS2jBnPFF9N/CDL8f+95
 llLqgsaU89kJ3oZmPm/C5XzWypAVizk=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1nSZPS-0006K6-Lm
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 09:09:58 +0200
Date: Fri, 11 Mar 2022 09:09:58 +0200 (EET)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2203110900580.24286@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-199657199-1646982598=:24286"
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1646989987; a=rsa-sha256; cv=none;
 b=Q0K3q+Iq54h5Ym4+hw0afBOG0558mrxgHSUPbJre2RU+0Fvth26B6ADYbaPzgjQfv0Eghu
 K+qVkirQH1pDEZddMbrtU4dxRc0oE8bTuOI/5GZLjnSDNjFB72SSHrj0a0CiHVQQ5tcvGH
 AAHhidvOieIMgSkw+AvgH18QiGbjUeU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1646989987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=udk3oSZX9kCC5/gnwKp0ZvB9mQEQ8ZLHWWgAWr4lgGM=;
 b=d4bXslvKsywXyRi485tnSeG/WFdmYzDBFE5j7PkjbYEtFgmYvC/6lVWQbGFSr1LiUW6mYx
 yY0bhcxcjuXNC1qkuRA82Le0KynIaem4pmZIi5777uxzztETvaaUcCzWOBGZpOZnvyt0rI
 WHdpxF2JwuhhDsa/PtD2HhXITKB0eOw=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 in https://sourceforge.net/p/tboot/mailman/message/37340469/
 there was a discussion about needing to get grub to accept a patch to reliably
 support multiple SINIT modules. Any idea what's the status o [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nSbKn-00BxMG-Mp
Subject: [tboot-devel] status of the grub patch to support multiple SINIT
 modules?
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

--8323329-199657199-1646982598=:24286
Content-Type: text/plain; format=flowed; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

Hi,

in https://sourceforge.net/p/tboot/mailman/message/37340469/ there was a 
discussion about needing to get grub to accept a patch to reliably support 
multiple SINIT modules. Any idea what's the status of this patch?

Using multiple SINIT modules is useful if you want to have a single image 
that works on multiple devices. The intel-acm package in Debian non-free 
provides these in /boot and it is very convenient that tboot can 
choose the matching SINIT module at runtime.

I was reminded of this issue since I hit it again on different hardware.

I've attached two serial console logs for tboot mercurial tip 
(9c625ab2035b):

tboot_9c625ab2035b_2_SINIT_working.txt:
- two SINIT ACMs are specified and the system boots correctly.

tboot_9c625ab2035b_26_SINIT_reboot.txt:
- 26 SINIT ACMs are specified and the system enters an infinïte reboot 
loop.

I do not see this problem on my BIOS system, only UEFI system, but it is 
is difficult to say if this is actually related to the issue.

You can see more logs at https://lindi.iki.fi/lindi/tboot/smoketest/results.html
The attached logs are all from test run 1646942019.

As a workaround, would you accept a patch that modifies 
tboot/20_linux_tboot to use txt-acminfo to include only matching SINIT 
modules in grub configuration? I could make this configurable in 
/etc/default/grub-tboot. We could for example support the following three 
options:

GRUB_TBOOT_SINIT=all
- include all SINIT modules that are found, current behavior

GRUB_TBOOT_SINIT=detect
- use txt-acminfo to find SINIT modules that match the current system.

GRUB_TBOOT_SINIT_LIST="module1 module2 module3"
- use only the listed SINIT modules.

-Timo


--8323329-199657199-1646982598=:24286
Content-Type: application/gzip; name=tboot_9c625ab2035b_2_SINIT_working.txt.gz
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.20.2203110909581.24286@mail.home>
Content-Description: 
Content-Disposition: attachment; filename=tboot_9c625ab2035b_2_SINIT_working.txt.gz

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
RJAAAA==

--8323329-199657199-1646982598=:24286
Content-Type: application/gzip; name=tboot_9c625ab2035b_26_SINIT_reboot.txt.gz
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.20.2203110909582.24286@mail.home>
Content-Description: 
Content-Disposition: attachment; filename=tboot_9c625ab2035b_26_SINIT_reboot.txt.gz

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

--8323329-199657199-1646982598=:24286
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--8323329-199657199-1646982598=:24286
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--8323329-199657199-1646982598=:24286--

