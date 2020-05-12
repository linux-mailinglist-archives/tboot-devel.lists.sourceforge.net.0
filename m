Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9BE1CF192
	for <lists+tboot-devel@lfdr.de>; Tue, 12 May 2020 11:28:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jYRCk-00074u-8w; Tue, 12 May 2020 09:28:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jYRCj-00074f-4Q
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 09:28:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/h+LUizBidPs9qmXKr5jknsEa9YGDcqbWD0T1oL5cD0=; b=kxzLWq+QQ4VzUe+4Ghu2rdQsZL
 uRFFKtqau6rg74SEGACK6Ia6gjRMXkEIvKWcvo5FH12Wsz17QbJjJTp1STzpiut50S774CjPnO+Ym
 JI/oLY1ZzLKTPddoOnEolxZ6llM+YjYtld3Haq7gn2mNpS4MjPrtSVqEwWY6UJpmN/5o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/h+LUizBidPs9qmXKr5jknsEa9YGDcqbWD0T1oL5cD0=; b=J3/GXWU+NjreYvGvJTHfDcX0Q3
 qWaZdJXTbf+qDc9TJo0Hq+WIyfwMiH2tCl1xyX/Bv5PIY4Sz9UIO1COMDI5gk++rY81f7diDYZYDX
 SEFS4VMdErQ/ipqVF8g4StelQ5+YjDOvhddYZJSAcuJLIRyuYaGslbomPuIWCI0JtQyE=;
Received: from lahtoruutu.iki.fi ([212.16.98.55])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYRCd-002sdg-B8
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 09:28:01 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 539191B00369;
 Tue, 12 May 2020 12:27:41 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1589275661;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/h+LUizBidPs9qmXKr5jknsEa9YGDcqbWD0T1oL5cD0=;
 b=K9/r4oQJ40FncYV7zCt74+6pke50r2wQm1qKrlK3324z8r9E3F8kPib85zgQCjNKsmbh9I
 FDBcIFYp/bByY04+ArppDCNP8MTS+VorrIxz0EWHww0/guV05rxesQo1fEzvoA1QEbOVuT
 0hApeaINvETVG3/H+ki50Y/SK/X4gPztOVmkFIZwaRjg14a5yXcvFMmJAmbSE+GeR0VBSV
 elqgzGs4JS+ORIz/tUBTB+ToeAwh9k57qF+SqZGAfCDpJ+zb4iWl9VnOgzCYRlJchf/10I
 ZMqUSYI+xe1PamaVjQG7bwowbTrt7bF/8DdHIU+JF9iw9n5QCT5e9kM88EouNg==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jYRCI-0001u9-UR; Tue, 12 May 2020 12:27:34 +0300
Date: Tue, 12 May 2020 12:27:34 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <ea61204e4d047af932df00ebd066fc72f9bffee5.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005121226400.7218@mail.home>
References: <alpine.DEB.2.20.2005081314230.3560@mail.home>
 <ea61204e4d047af932df00ebd066fc72f9bffee5.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1589275661;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/h+LUizBidPs9qmXKr5jknsEa9YGDcqbWD0T1oL5cD0=;
 b=mTdA0Vqrb3oPtW7tW0PQRLOLMcX3+6JWUezWi9xncgwP/ZxDd6dlAmYHAvNPzs9OThEy1k
 gSgm6JXv1KRKnspK1CPzR+Y7I/D116uTidVv1OvGlPxA0i7+pwUgJRye/C2vVUfNX2O8+m
 /iOvGteCFG+KG7UY5dZlzUPAGOasdGQYTWNPbaYPpeo2/HLVq8PN1POfHo4+U0nikdTBVa
 HvLruMpsTu0zxBoCjrcZll/Mye0Z2x5PK+FpA8v15Qr2xbKPw3a0QKPbna8v+iBMW2BubX
 QESbnCvACyGbxsY8nD+5/vSllXDhrNQLGmYB6R1f8N1K5TnC+NVvM2KDvj1dXg==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1589275661; a=rsa-sha256; cv=none;
 b=XTvGuvYLfVFg6n/TJHA+UdLyFBkysicNz5P/Z8S6ZvnlLN3ky+Z5NPcNgw7PLbLZ4F7sdw
 9BICxDzZk1fs/3S+VcDM6oid+xKkXZ6QSQ6/2OLDSjUJWTOShOx/LcRo28RZV3oDTGuu/M
 gevNAlxquuWUC4dDWYu7Z3bqcGIiJfKf3wu0eKooUMMmcAPqNM4FprnzTOwvOKI1yzN22W
 CYrjwJclLWuQISfmca7x+uqqkYtyc7NcZ+43f9GRExrCVm89TiUc+sSK2exf51YSs+XOwU
 OARusLJoymZ04DIeyasg4mRUlqrxeNwF+hgQR6m8PY8XcVBucv3jcC9fkBdiAw==
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
X-Headers-End: 1jYRCd-002sdg-B8
Subject: Re: [tboot-devel] GPG key used for signing releases?
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

On Mon, 11 May 2020, Lukasz Hawrylko wrote:
> It looks like I forget to upload public key to PGP server. I have just
> done it: https://pgp.mit.edu/pks/lookup?op=get&search=0x6F2F48CC4E0B23EF

Thanks! I'll add this to the packaging (debian/upstream/signing-key.asc).

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
