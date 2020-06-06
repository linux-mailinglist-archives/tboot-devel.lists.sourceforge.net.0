Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCC61F0875
	for <lists+tboot-devel@lfdr.de>; Sat,  6 Jun 2020 22:03:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jhf28-00040P-3Z; Sat, 06 Jun 2020 20:03:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jhf21-0003zg-RU
 for tboot-devel@lists.sourceforge.net; Sat, 06 Jun 2020 20:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ATJhp33LUqwQzydlg9uvwrAGjPnnFkNEZHiNa/RwJeE=; b=hHSVDamkQ/2FZM2tFgzvj5oUrW
 Drn2YpLIqYvgJQnQ3UQHldCKw5MWK6gPTpAjNrOuhVUUyHRWK2Ji/B14A1Run7HIMiAJDQfzAOvP6
 co3YQiEVDoRCi++yp06c5MbaWayufToOiVF1waQEfmZ1aplpxiQKNBTOB0byMkIEFbOQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ATJhp33LUqwQzydlg9uvwrAGjPnnFkNEZHiNa/RwJeE=; b=S
 Jm+Ct2Ky79zAEQhbddFR8YXLC0xhOgAWIcqk1f3mLhDkRVXMU73V8CPdFQT7rcKZ7z6MbRSnLesII
 4dIotjd99qS5LfY9ykm7VZn0xPfn4tBPlCep1pQN7KxWCllddXaOybbmOwS/fiEdwqq1v6xwjxl+d
 tj/yRt95lrJdaMTs=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jhf1x-008m5O-V4
 for tboot-devel@lists.sourceforge.net; Sat, 06 Jun 2020 20:03:05 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id DAEB920083
 for <tboot-devel@lists.sourceforge.net>; Sat,  6 Jun 2020 23:02:51 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1591473771;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=ATJhp33LUqwQzydlg9uvwrAGjPnnFkNEZHiNa/RwJeE=;
 b=Gn1chQX+N+z8erPRPsc4mXyXt67cVIYFiZ1X6v09R8ndwZra2Lu+MWbk2KbYn9tF8b+dCK
 aLl+TsTL57qdkE2d6/oWal6VbPDNELamUrIsiM7PPbQq91BRadZIO0V2Zj65jo4ylisrZL
 VKhjcFH7RQPGHjjdwny753rXJMajlKs=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jhf1f-0007oD-6T
 for tboot-devel@lists.sourceforge.net; Sat, 06 Jun 2020 23:02:43 +0300
Date: Sat, 6 Jun 2020 23:02:43 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2006062254580.29748@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1591473771;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=ATJhp33LUqwQzydlg9uvwrAGjPnnFkNEZHiNa/RwJeE=;
 b=OsnN+uKBWbirKsR+DkkRSICRiox1kZy+bFvBOY3fshJDn3RbpkWp9TwuCKjiwB62Zo5wsX
 QPioqP63m7Y1aFJ6/Z6wRv8JWbLdlXj4uhKJ0GtG9xnNVKHF6wwWjgV2hw7HlAoBzd0OSe
 iMm/pnyrgyC/YhmtKeEtECpaA4Je2Y4=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1591473771; a=rsa-sha256; cv=none;
 b=MNlts2XHT0vYeSZX5ZBKTDhJoNDylCS+k4yYv9sAJ/OrCEFW714oTLislC0nYrKWOnGKQN
 UmxCBjT4f+co+U1pdy/srs2qWQsK5W62zkXOx+2aS/FE+crDyC3xjoYSFj7+kLU09Im+U4
 9SC5ayRhndY3G8rqTrgsoRilYJF6Bw4=
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
X-Headers-End: 1jhf1x-008m5O-V4
Subject: [tboot-devel] extra bytes printed after SHA1 hash?
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

when I boot current mercurial tip with TPM 1.2 I get the following output:

TBOOT: verifying policy 
TBOOT: verifying module "root=UUID=bc701bae-ee9c-4151-a85b-0f5a68212975 ro quiet net.ifnames=0 intel_iommu=on"...
TBOOT:   OK : 26 0d 8e 28 3d 24 8b 45 74 92 02 76 50 f4 28 11 2b 6c d5 03 00 00 00 00 00 00 00 00 00 00 d8 9b
TBOOT: verifying module ""...
TBOOT:   OK : ed 04 ea fe e3 e4 30 63 ae c2 ba 41 cc 35 de aa f0 2a e7 18 00 00 00 00 00 00 00 00 00 00 d8 9b
TBOOT: all modules are verified

Notice how both hashes end with the same byte string "00 00 00 00 00 00 00 
00 00 00 d8 9b". Is the code printing 32 bytes of memory (length of a 
SHA256 hash) but the memory actually contains a SHA1 hash?

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
