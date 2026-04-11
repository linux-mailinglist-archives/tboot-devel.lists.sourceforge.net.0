Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+tboot-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id FTKHD6MY2mkayggAu9opvQ
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	for <lists+tboot-devel@lfdr.de>; Sat, 11 Apr 2026 11:47:15 +0200
X-Original-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 422EC3DF2C5
	for <lists+tboot-devel@lfdr.de>; Sat, 11 Apr 2026 11:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t+FNu5oF4OvBC/o14uSmO39+a9qSpB6kMbfC8+hPRMo=; b=mZl+6ULo29QJnhDUlILuaYM4oL
	u84/1u7vWM7STJ8LlF4ad6iOb/YO4u2tfFPlYjfKN7nFn1Bu0FW5TVJb0vxKr9AnMHClTT7xHtOsM
	I2iuWfM3SHiym4SFuzB495nQJLW42iDRtV4KMtpVJDzVUVPU/LzNUU6fwKuVxv3RwYxU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1wBUvX-0007Fl-2K;
	Sat, 11 Apr 2026 09:46:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <timo.lindfors@iki.fi>) id 1wBUvE-0007EA-GX
 for tboot-devel@lists.sourceforge.net;
 Sat, 11 Apr 2026 09:46:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NU5hLXlvJQ+dSb1pKzEqP6c7PMxKieLvZDLoNZKfwBU=; b=lz37HsTPzjWmiAAnkQRHZrDrOB
 lYx5ABCVKM6FqF/0n0Cu8uKvkEjnLAycwI7iCdWreLMnlBQQ1Yw7AujuCXthlQ2tueX7pV0wmGyf7
 zEnrVRpFfTdTZaYofO67Nmbkxpslcnoue35uleppfesPzPfFeN3zNijAQ0HOZvrP3E8M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NU5hLXlvJQ+dSb1pKzEqP6c7PMxKieLvZDLoNZKfwBU=; b=O
 CrjRVUxMrvzKcpjk3RLFYZCntj345sVHIlJjX1WTzLZfk6VHOfEg3fj66WI+Au6qDFWkxGJNW9hu8
 zl9Z8IY5pBtOduSCOYbl8e3kyAFcYCiuoYwmJ9ruVtavHJJguHXXhhCCVeJ32pd0kflboZ1X8V5A3
 IWuNo1u6JL2tu3W0=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wBUvD-0001FA-W8 for tboot-devel@lists.sourceforge.net;
 Sat, 11 Apr 2026 09:46:37 +0000
Received: from meesny.iki.fi (meesny.iki.fi [195.140.195.201])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by lahtoruutu.iki.fi (Postfix) with ESMTPS id 4ft7Sp4Sm1z49Q4q
 for <tboot-devel@lists.sourceforge.net>; Sat, 11 Apr 2026 12:20:58 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1775899258;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=NU5hLXlvJQ+dSb1pKzEqP6c7PMxKieLvZDLoNZKfwBU=;
 b=oj/R+GyjypLiQW6bidoifNZzXYQIz5NqkqXwhi/NwR+rDdOA2kETzyh2gRMuo6993Z4UJz
 5n9ogsp2sw6YKSE6hIYty0Y+IsAJKa//y7BOHRXFuywrw4u9ue0jA0pohZZX4+6GQEBy0S
 DScCSEFC97kuYPIFBH0kMQWPNbE5GUbZmAoiFeapnWtn2KDKawKSBpzwhuOYAlYw/2eqH7
 3ruseZxTX1qSPTT4d51kCuqlNpM6UON8HKu4qwKdlh8birwp2XfFAVp15k1YlxG86USiEM
 QoOze0+NsKXoj1LH6Z9/gYKfX/BeOi/YGyWxvFGP0eUck+/5Nh/DMV7GzQ1GIA==
Received: from mail.home (212-90-86-103.bb.dnainternet.fi [212.90.86.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 4ft7SZ0rbWzyR6
 for <tboot-devel@lists.sourceforge.net>; Sat, 11 Apr 2026 12:20:46 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1775899246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=NU5hLXlvJQ+dSb1pKzEqP6c7PMxKieLvZDLoNZKfwBU=;
 b=G7H0SkuMUQ1j6dLBlhZRp6D6/oyj97Ra4t5WisutJHaZg1NKPimq8MxOqsZ/JC9SrqiUwh
 y1Ze0FJNBaZ40auHo4DuBW0wfHPKEnV+XAtjLMrPZhMS6lAJEzMynJ70Z8/6IQt90Raaov
 SKlU+tiPpFLH3G1tBVqKTlX6cn4OjNg=
ARC-Seal: i=1; a=rsa-sha256; d=iki.fi; s=meesny; cv=none; t=1775899246;
 b=qlpH7Ft9XjIA5Vc5zK/LAXxgzZZNJ8OX/td4eAEeTieCfvK9O/Nb9os3i4+FNCn5yO4X5R
 +WYzH6Edha98KGzG2oLmGDVctfWw4U5wKSw+Sum+J1wyKiOtQgq0cSMyv2y5zXtLOckAgT
 JS1kVccyhmbF4cjDThDbJE0imLXkg8I=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1775899246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=NU5hLXlvJQ+dSb1pKzEqP6c7PMxKieLvZDLoNZKfwBU=;
 b=hXR0XSdy60XMcKaOEhlBzq5pRnmhwfRQSdGtYN/KNPO7QRh6MzZc0un5dQ0/dkIxlufvNE
 C2dsTpwxEMLzrUC9NQS0wmXsVvGBDftQ7/8kPsTxrDA+V/sboWiBwvk8GL+X9ntE50i1Eu
 igZYIILugLDHts/01sSK/h3ebp6mjwA=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1wBUWD-0002Sl-Jw
 for tboot-devel@lists.sourceforge.net; Sat, 11 Apr 2026 12:20:45 +0300
Date: Sat, 11 Apr 2026 12:20:45 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2604111216550.9413@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, it seems tboot (hg 728:54ea68a98aef) still depends on
 the function 'version_find_latest' that is no longer included in grub (removed
 in git commit a79c567f6b5820a8795c273a9eaabd06a1f92b29) This causes
 autopkgtests in Debian to fail: 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1wBUvD-0001FA-W8
Subject: [tboot-devel] tboot/20_linux_tboot depends on removed function
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:iki.fi:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,iki.fi:s=lahtoruutu,iki.fi:s=meesny];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[iki.fi];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,iki.fi:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[timo.lindfors@iki.fi,tboot-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[tboot-devel@lists.sourceforge.net];
	TAGGED_RCPT(0.00)[tboot-devel];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 422EC3DF2C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

it seems tboot (hg 728:54ea68a98aef) still depends on the function 
'version_find_latest' that is no longer included in grub (removed in git 
commit a79c567f6b5820a8795c273a9eaabd06a1f92b29)

This causes autopkgtests in Debian to fail:

https://ci.debian.net/packages/t/tboot/testing/amd64/69226640/#S12

Fixing this should be straightforward but I'm quite busy at the moment so 
I'm just sending this bug report for now.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
