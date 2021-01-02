Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C19362E884D
	for <lists+tboot-devel@lfdr.de>; Sat,  2 Jan 2021 20:34:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kvmfc-0006aS-8t; Sat, 02 Jan 2021 19:34:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1kvmfZ-0006aJ-Sk
 for tboot-devel@lists.sourceforge.net; Sat, 02 Jan 2021 19:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nanjN7er81XCqvtLFJvR2JvMxJclCjggYj0K2HLpsHE=; b=P6+J/Db/r00beRIGysZETEI18q
 4x1R7WIlrd+pqkb4vIDN+Pn1ji36wigyi6HHIAKFAEZi5ma4PoEsZDZBxTzdyFPOOjdFVv+c6vH2I
 B9x++X4NfW8cR8CYvtst9cqVmWqKfNl2D23UgxNHNU2UB5m1NNk2hVrahXh7LAtmWwec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nanjN7er81XCqvtLFJvR2JvMxJclCjggYj0K2HLpsHE=; b=G
 h0fXeoE1iGPDUQ+jR+fXDyIsf8NmKKpKaj1mUwXSiGk007cAdgG9CEitJyR/Rh7uKAcbkvMb3KKya
 6VKZNOb3mmZ9INQ+ZIhn6PBgQ+cymozADPAnsG0lPjgkDxWPWh+MJDkPv9Ofi0O0xhis0TAdWDPT4
 UdLRbzETjFxV7ptM=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kvmfM-001TAe-9P
 for tboot-devel@lists.sourceforge.net; Sat, 02 Jan 2021 19:34:33 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 7BF5C1B0011F
 for <tboot-devel@lists.sourceforge.net>; Sat,  2 Jan 2021 21:33:55 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1609616035;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=nanjN7er81XCqvtLFJvR2JvMxJclCjggYj0K2HLpsHE=;
 b=Idq3RnqoHrQ16xL2C2NMuql7W+bs3PKbyJNGaaIvAje75zbpFXsW49MT1bTIpP/yak4Ovu
 gOFieLqWmkkBkXnE9bYqBsO4tjofBH7/rZAhZZymnQpdVrYAIBHMOA81zx7V6Kdn1xdZPp
 TiocUItDf44VyNfD9uRdSxen2SPKcDM+yr/dPqmTUxwyDrPJQLTgACtBLTEGtlzc6efZ4k
 h3EHigeT49i8L6WQhy560T9cAailkh960PlNslNavO7yBUZikz4izuApn+Lkdfnvl7Vo5v
 J9Kk5cGqyepXfasfkbz7SZFGL7ezZsfPU8Q9sf5T4HwJrweJGwBIY5N78OerIw==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1kvkkb-0007xq-KM
 for tboot-devel@lists.sourceforge.net; Sat, 02 Jan 2021 19:31:37 +0200
Date: Sat, 2 Jan 2021 19:31:37 +0200 (EET)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2101021923390.30583@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1609616035; a=rsa-sha256; cv=none;
 b=lHs+vjCeKTW+ZdR9HcE+xGu7OXKwfFL70BH3Mf0WnCY7g/9j+bx1k8yUCunQZ/64TGNK68
 o8gC2646UDtbZHcZBTN63whrI2WnRDrcz5aMHOt4mNOFSix5BrFYraq9v5+20tdN2dZCzY
 00ZrK1Hu+1DsX/IjIefVbbH6x+lHbpQq2noIampGQNSPteeLyCDjp0ileLJ8FpXaXzfsYz
 6uisiG7owpCEhbLploz1LBYPhZ9V0VHeVXUpYckJD18W7L9WCkpfmJ+KXue0JC7DTk7C6v
 96GSSYzRuI6SlXyK2F6vAZHUCxSpquo/zTeQR9IYAyRm0zCWrd+DCofBN2dRVw==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1609616035;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=nanjN7er81XCqvtLFJvR2JvMxJclCjggYj0K2HLpsHE=;
 b=bMmtAc8UYsenx61laD089lAaGPXsa+dbFA2lKnj8R+U2HXiGtTpJInMzN1mEzmIX8f5cI9
 yCSbYhMjsluBHrcbL+pJXAb+QETBwT5m/K2hfbRWS3mAvlV7xOivCKI0vnnZVg64aT9tfr
 ncNLMWcMU/9/q2Rw8WJ9yzyjqy4/qSJON3cVaZYYinlG9OT8h84APLjovn69CsN/BQfegn
 l27bvrfMfFbDeVJXakk5hJGk8SFFV24Y2ZnI6LR2zXG3E/rHXad9Dmb2mg6J9XFiKxIKLE
 27K8NxtZCK3F+KSJ3ed2mrk9io4SUmKZqoISL8iw8Fy1cXcEnyPPGg6/98Sjcg==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [185.185.170.37 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kvmfM-001TAe-9P
Subject: [tboot-devel] binaries in mercurial?
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

changeset:   620:805285ab8469
user:        Lukasz Hawrylko <lukasz.hawrylko@intel.com>
date:        Fri Nov 13 16:09:33 2020 +0100
summary:     Move old lcptool to deprecated folder and exclude from build

seems to add some binaries to mercurial version control:

$ hg clone http://hg.code.sf.net/p/tboot/code 
tboot-code
requesting all changes
adding changesets
adding manifests
adding file changes
added 620 changesets with 2372 changes to 497 files (+1 heads)
new changesets cedd93279188:cc489ff0c783
updating to branch default
403 files updated, 0 files merged, 0 files removed, 0 files unresolved
$ file tboot-code/deprecated/lcptools/lcp_writepol
tboot-code/deprecated/lcptools/lcp_writepol: ELF 64-bit LSB executable, 
x86-64, version 1 (SYSV), dynamically linked, interpreter 
/lib64/ld-linux-x86-64.so.2, BuildID[sha1]=403efd37304c2d0ca9830ec60c1115fd9d76787c, for GNU/Linux 3.2.0, not stripped

This is probably accidental?

The exact Debian lintian errors that caused me to spot this are

E: tboot source: source-is-missing deprecated/lcptools/lcp_crtpconf
E: tboot source: source-is-missing deprecated/lcptools/lcp_crtpol
E: tboot source: source-is-missing deprecated/lcptools/lcp_mlehash
E: tboot source: source-is-missing deprecated/lcptools/lcp_readpol
E: tboot source: source-is-missing deprecated/lcptools/lcp_writepol
E: tboot source: source-is-missing deprecated/lcptools/tpmnv_defindex
E: tboot source: source-is-missing deprecated/lcptools/tpmnv_getcap
E: tboot source: source-is-missing deprecated/lcptools/tpmnv_lock
E: tboot source: source-is-missing deprecated/lcptools/tpmnv_relindex
E: tboot source: source-is-missing deprecated/lcptools/trousers_dep


-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
