Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9201C4D350B
	for <lists+tboot-devel@lfdr.de>; Wed,  9 Mar 2022 18:02:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nRzhs-0002DC-Ka; Wed, 09 Mar 2022 17:02:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nRzho-0002D6-LG
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 17:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YW7QYtognTokV4TyQu6JfA7wwgTnTwKmsIOHnVUYpLA=; b=iXETEcy5WwYjyoBce4rQw3lBup
 YIRJuN+p+darbS043O0nnhwbDbQNKepyCxfJkX8UFX3NQQ3xTNxciWaxfefDv2GiP8iNxCN8hy1lo
 H/S5j1FQjMUobtPDBWEbffk6ZMTyhhXid4ozX6KgqPZdY3ZqGApAVp0BIha18Ww3MoGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YW7QYtognTokV4TyQu6JfA7wwgTnTwKmsIOHnVUYpLA=; b=lpQ1NYO5s97G2AV41WtK5VsWoA
 oG0jOreAJac8wFxY2fUU6CHGm83KAoYW4H3CHoVasM96LB2hBsUoTsAK7b1xs3xLOXEkdpXFtfPmZ
 HwpC/C8LEa2ZhLVIcyeFl4Jb3R382EfIqACRUjvKl+gXgKc+46PTs806prS7k8bsBESo=;
Received: from [185.185.170.37] (helo=lahtoruutu.iki.fi)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRzhi-009wXw-Vd
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 17:02:31 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 0E0751B001E8
 for <tboot-devel@lists.sourceforge.net>; Wed,  9 Mar 2022 19:02:10 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1646845330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YW7QYtognTokV4TyQu6JfA7wwgTnTwKmsIOHnVUYpLA=;
 b=m606Xl9jfo4DLotxBKxnVMzacFbaymzz23YXBtWqx9Rxh899Ah7FxXGukMbzr2zXzWXDif
 NbD7IUS6uWklA6ZsqxphEEAw3C61O41xVPGMaHjCNvpIm8scP7Y+JsdPdG4Q6G97xm9l+k
 aH+ZcbrYqCNOANuV5YUbYc11gQpIKxcLy30TWzpoGTgzZGwtRXM74f8pQnS8bqfTYjs9AA
 mgik4hgfPeuUAff62DGz9sI2GXSmnUbkrokcC9xYfJ+MrLvpE8z+ouCRmhTXyCKu+UB02N
 fqR4mv4znaDaBIaEgOn16P7Kc2LHGwpYE3mp0kHiiwPwqhpM8CQxI/xLAM2JMA==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1nRxmI-0005tB-2T
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 16:59:02 +0200
Date: Wed, 9 Mar 2022 16:59:02 +0200 (EET)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <20220309145434.22551-1-timo.lindfors@iki.fi>
Message-ID: <alpine.DEB.2.20.2203091655010.22621@mail.home>
References: <20220309145434.22551-1-timo.lindfors@iki.fi>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1646845330; a=rsa-sha256; cv=none;
 b=CTIZUKJX2RTyucSafctLRMslIKvTIm5vKkoxCc4gmD0nk+0JdOfPlrLt2i5CcJOU3F3J+H
 bDqPxOcO0cPHDzS+QLuu4wHR1U5CVsPVDpRurP1Hy1XXAiQNbKqxxEjkiUkvPR3hyD5VQH
 GxhBTST8ZgbcEXlH9fW+15IVX8r5RblbOaWZ49XfkOhHVWCcohEW8wLJ1+XCzqz0aQ7LgV
 yvbI2DOyjwJa1YGdtLuXhk/PKjB9npesLxR8KfcjEQzMEMte+MN2K2Nm8pq+JgN2z0XDDS
 AB5xxF5rvnf1D6msjIJkm1VLAQmoLiKYBeTZQiv4CvsVnNIJ+1d2iZMAWBgZ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1646845330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YW7QYtognTokV4TyQu6JfA7wwgTnTwKmsIOHnVUYpLA=;
 b=CgJRHS/Kn3Jb4v8HCNChEcOk2tcdbVd2t1Jphlk3Jlp/qkw5mvhOQ3RC3CjuuJ3iBmOg6R
 KXhBXB3CXs2ChRQtuPGff28aG0yXwEUnfwzBCdVMTkmi8b2YMcItLv5m+68fw2vZybfB/4
 0cRGTlVk/cteHByIYor119vb3lAEZV1brTaMXgqZZJRqf5br8aLeP3yen3rAg4/++sHQMZ
 1z0xjYIwRpNhsxzrHgL+ieMsqXQk6ZASPwmyi46fgZgQI9Exm/6XBBPxeOTUABwSTNiOl+
 RJwK598fjO71gD8zv3jY5EYHZvvfERwhhFGzZwFpmgFoH8ZjfVRYD2qpKJxCyw==
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 9 Mar 2022, Timo Juhani Lindfors wrote: > From: Timo
 Lindfors <timo.lindfors@iki.fi> > > Without this patch > > txt-acminfo
 5th_gen_i5_i7_SINIT_79.BIN
 > > segfaults. This issue was introduced [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nRzhi-009wXw-Vd
Subject: Re: [tboot-devel] [PATCH] txt-acminfo: Map TXT heap using mmap
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



On Wed, 9 Mar 2022, Timo Juhani Lindfors wrote:
> From: Timo Lindfors <timo.lindfors@iki.fi>
>
> Without this patch
>
> txt-acminfo 5th_gen_i5_i7_SINIT_79.BIN
>
> segfaults. This issue was introduced in

This is not the most beautiful patch I must say but I hope it at least 
helps somewhat and does not break anything. I tried adjusting the headers 
so that the duplicate typedef for txt_heap_t could be avoided. I also 
looked the possibility to have callers of does_acmod_match_platform call 
get_txt_heap. In both cases I hit all sorts of challenges with the way the 
include files are setup. So: feel free to rewrite this if you can come up 
with a cleaner way :)

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
