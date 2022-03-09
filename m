Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7F04D2E7D
	for <lists+tboot-devel@lfdr.de>; Wed,  9 Mar 2022 12:56:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nRuv5-0003K0-1N; Wed, 09 Mar 2022 11:55:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nRuv3-0003Jr-QM
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 11:55:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u+EkC3zLC60ljPgyqoN7QZYrleYp4VpHaJbXqdI4/mw=; b=I5u185fVAEqgHZRYQvrjDXeiQe
 7lC3XrdwG4Z3nhxJdQZBxf1LjjukXlj/+aOYpYN6HmuQxvGN2vOe/yzJA7H3sXWw8Gszv/gwSLtRl
 jEXA1/qRdDj/d63bKLHt0FQCHgnGYzqHM+BmgyNxqEK6sx9CbopR9DYuUMIVT5DiEXI0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=u+EkC3zLC60ljPgyqoN7QZYrleYp4VpHaJbXqdI4/mw=; b=M
 6ELlx9EG6CgkhnCfCcGGj2ttrHjzU1Bx8TZjyt/WAiXpo6yzd0AxTIVCTMRHD8LhwSxWFxi7zofHU
 buWzYb4oAOfDdkwkdfoJt2jSNLIXv/0SB4QSxDt4fqP9HfyG1/wcLFb663opdjNyZ1wE7xfmoV+uJ
 c5iujqPYZ5kEj+AU=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRuux-0002iK-RL
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 11:55:52 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id F08841B00220
 for <tboot-devel@lists.sourceforge.net>; Wed,  9 Mar 2022 13:36:44 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1646825805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=u+EkC3zLC60ljPgyqoN7QZYrleYp4VpHaJbXqdI4/mw=;
 b=DROiOZ4KsA68beIqR0DbwLL2djjybQIlmm2CPrzwbbDgTHafBGrl4zPvKvX16NIXwiujKm
 5kzy/lQ/z5fAc8WWdwSC4yqzzkiG/fUKQpnqpevHcNcEAdj4nFkwuuoQZIHPMt3fvT+wJg
 +ZxxCGtaBR17KLPvQQ4CaIdOUECrEzzMENMlSOeGwGrpAF5IV3z0A9KWJTa7TqVENZdtJw
 Dw0FhPByYcpUOuEj0caxOWy9R6UBPuJnAjQ8YWq7VmB47JXeqD9zUouY/UDE5KF6stPfUL
 bxqpUSegaz72VLCIt6QLh2Du+Uv8VvT5+0NNd9OPdKkOCyWd/W64cdBX6tcUNQ==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1nRshM-0005mJ-W6
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 11:33:37 +0200
Date: Wed, 9 Mar 2022 11:33:36 +0200 (EET)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2203091131270.22177@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1646825805; a=rsa-sha256; cv=none;
 b=lRYMry8IXZcK9Z+vpgsCIkVv9X1KaMmYgg9byVYE1Rzuw5Pv+LhBXk7U9YnLDee0U18bmn
 M4N1SeKWPHxBx/H+/1udkKAaqAGorGZ28LwbAj9BCdLQPvNb6nSxTMJNaWBhqdRFnrUYP8
 oH2eytRIdtUaF4N53l4coS6GrKtThwMke7uTw2fv9SMdOy4zFGtiscF5MLjNRKVUgsCzJk
 ybUbou0a5lq+WLidYknMS9fhSf4TSlde4aOOiU4PQjCMQLhq+I8S/bWpktokh9JtXAJPw5
 kWszULOVwilpdzGyqN0HgA2NmHyHlTP1w0GT7bLtYfIiWOrtMV9YsW4w+P8dXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1646825805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=u+EkC3zLC60ljPgyqoN7QZYrleYp4VpHaJbXqdI4/mw=;
 b=GGkrUpQysJ10LMh5Xw37iYYIZ0b0+KB9/DysOCnXoTWaPlxQjtOWXxk6QtgfqFT8m6j5JC
 vHSuGMnLbmnDS4cRbITr4i5dswV6XONKfTvhjEuE53mEtfWdaAKd6Cu0Jyo2mzI6n+9JOr
 uT7S7FzYCSC25uhAt1uRMH+wT09VK0XPTsVOZCdL08r4kdj9qgCx4Z3lb1acz/MEcxRLpK
 aoP5wOO6Pj7xa7R7xIFxVo/bPYlSlw0wrHBPFKwaF6fO2G0RjqkYFM7Cn0yGEkk2sMeDdy
 bkGj5WPFu6MsAEj2PQ//swzWJxyG//KcXaBkTPdHdE1a3vmkZxPNckUEf4Mskw==
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I noticed that the tboot-1.10.4.tar.gz.gpg release is
 signed using key A16A6B495B7ED435EF129F21FF6B78E7EB6D8A8B. Is this key
 available
 from somewhere? Previously key 5CECC9E12872F424009D0E0B6F2F48CC4E [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nRuux-0002iK-RL
Subject: [tboot-devel] new PGP for release tarballs?
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

I noticed that the tboot-1.10.4.tar.gz.gpg release is signed using key 
A16A6B495B7ED435EF129F21FF6B78E7EB6D8A8B. Is this key available from 
somewhere? Previously key 5CECC9E12872F424009D0E0B6F2F48CC4E0B23EF was 
used.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
