Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A901CA857
	for <lists+tboot-devel@lfdr.de>; Fri,  8 May 2020 12:29:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jX0Fn-0006rA-DH; Fri, 08 May 2020 10:29:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jX0Fl-0006r3-NU
 for tboot-devel@lists.sourceforge.net; Fri, 08 May 2020 10:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=whA8OKcY0JLFAYlaBWEYjQRwlacfmCL+kkFrdl4vwr4=; b=fOTLYPcHq0dIhx3M9uKK9gVPfH
 IhzCD+zlK4UogKG9awdPS1yu0UD/wE/vNhkOAFpNT7YC/Ii//YbG3TG/fW3cccirLU6yDdkwkD0+g
 vUDBvtFbqvXxFloVUsM2KBI4ewfCRJ2TAtMEE8DzTdF7g1/ZpuGQBNCwmceqIdQqG+2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=whA8OKcY0JLFAYlaBWEYjQRwlacfmCL+kkFrdl4vwr4=; b=e
 U1QlRpze2MLsjq/SmBTNk1SqAMG4n7Aspvo3Ez1Fnl8005hlQSjlZfLPiJNPiEnezt9BLZYIE2QtD
 AjMC6Dw8Hg8mjLXtYGY911PrIAN5HXe9j1qaXB7m1JUeL3GACF+o/eIs0VlZ+RolMce8KQfoc8UPi
 7gkpGRifuv+mGxs0=;
Received: from lahtoruutu.iki.fi ([212.16.98.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jX0Fi-001d4L-HY
 for tboot-devel@lists.sourceforge.net; Fri, 08 May 2020 10:29:13 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 38AC61B002B6
 for <tboot-devel@lists.sourceforge.net>; Fri,  8 May 2020 13:29:00 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1588933740;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=whA8OKcY0JLFAYlaBWEYjQRwlacfmCL+kkFrdl4vwr4=;
 b=r3iIQzq3M6ZSIDlRepV40UNUyFIJsWNkLO7sZNF5VqjR0ts8lYf3rFmCjbwQoj5qFkz7z4
 eqCTQTg6r9ZbxOUBGau6MwWuBfvOxTCOeT1Gc4kvXy5VTipsgMgVa+XuI3VFB7Im5dkyTY
 boxNEPn8V141NhYtxHdrs3zysaJhvfDzttkX+GlpP6G9Y7LilzfW1uxt8FOzo3hUqHDbr/
 p4AOVtrPFVdiPmiuXViyV3W+I0N1iZ7StHfmQDbnVhdZvV2Wz+ZfTjPuBiPuQuazuwXGem
 pb+iIVRQYTM8DPh2YOu+PphIHG1JNT4gU6KTrpCgkmiIU/dwAd+unIcVGLSPFQ==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jX0FS-0000vu-2M
 for tboot-devel@lists.sourceforge.net; Fri, 08 May 2020 13:28:54 +0300
Date: Fri, 8 May 2020 13:28:54 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2005081314230.3560@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1588933740;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=whA8OKcY0JLFAYlaBWEYjQRwlacfmCL+kkFrdl4vwr4=;
 b=dusQlHHym57xQof76NTEevUKzTWmC5cMHFr2hhMgWYgj6xE6a7CmbFdzPTShZyzPIKX2uu
 sOj8aUW9pk8vQUQj4GKjn+jkSIsEq6Fz72NkoUrFqzIuWCCJEvMvMyCKAExDM36kg4anTi
 Bo6PLrd/MYXBFdGi/h5YbFOfqtZwZewdewaKdMLtnv2SOO9UMdmsrHxgw41R/isDJOi1Gq
 0dF1NStiKVkVQo1dg7G4cG8+wBCd5HUTAVaDB6KPvQ0IPpiWfIUD5pZhlRa/hBudMQWeGH
 elNZpru9lVNif2pqGWTCKEwmh+SolP2dkq2EUzK7cMy3b12bKE52HvgLLC3ayw==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1588933740; a=rsa-sha256; cv=none;
 b=c9CY3HnP8NtndxOyPd7KKpouUfYRQfDwF8IF3e/2CIBWhK/XQxoM/uzUxUh01zoySRSv2u
 NgdxwzG8pACPvPDOX+qMKnnDsERvm4dq00MdwHKm7xq1sekqNPRRvVpiXYT4Ekyqucy0qH
 gpnoSWQdAVjHeJwrRuXIXeh+xMBv83Ugbu5OQXCSO+virnwP1VhZ9kLQmpaXIXAvOGUKRZ
 0OJvA4p+bEnE6nEp0j68Id2OKp5Ft3bR+UNrk2pF6Y7/Doa+MOL6CYX7oXsG2Lf6c6jocc
 pLmQQ4ThUJZNt6QKUmTXHqbfsA1YEf4x2dBRbaIW8YSwbycDUz6pFsuJ6aG4AA==
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
X-Headers-End: 1jX0Fi-001d4L-HY
Subject: [tboot-devel] GPG key used for signing releases?
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

where could I get the GPG used for signing releases?

$ gpg tboot-1.9.12.tar.gz.gpg
gpg: WARNING: no command supplied.  Trying to guess what you mean ...
gpg: Signature made Wed 29 Apr 2020 04:29:59 PM EEST
gpg:                using RSA key 5CECC9E12872F424009D0E0B6F2F48CC4E0B23EF
gpg: Can't check signature: No public key



-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
