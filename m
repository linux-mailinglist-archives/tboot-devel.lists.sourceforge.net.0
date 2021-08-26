Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD663F850A
	for <lists+tboot-devel@lfdr.de>; Thu, 26 Aug 2021 12:08:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mJCIq-00013x-Tp; Thu, 26 Aug 2021 10:08:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <timo.lindfors@iki.fi>) id 1mJCIo-00013o-67
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 10:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xhIF7wFjI1cK27Y38OfxStwBtBlL7dOqeNIMwEQv0PY=; b=ghIOYZfFP+ypCLIj0s88cQVYau
 3U8EEFIKkk6aWCx8FWbLj4f7bBp30cvWwkPjCChN6lE+0q5y2wvJmcYyyJ5oDOJbypRuMYSCYAiug
 0T+ucaz02r7mGZ/SZ4aOfnQuVtW/C8acfFocFET5uGhEsSIN6cq3cCnJTWk0gWId8DdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xhIF7wFjI1cK27Y38OfxStwBtBlL7dOqeNIMwEQv0PY=; b=GOBL8jjphdxFXk0AAfhmY38jZZ
 CV33+cqAOm5sG2VwfN7EqdGP6Li+SwW5iNrRAPFtEwHVGLmAv07k9CE5x/fK/ud76+zXMF5ULwgpw
 u+mY9R4g+jgBz5/7oDtU/92gz9RWWvpdG+yBrNUmYPII6SXibn4vcOg4vALCd8LFvVzc=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJCIm-001avw-3x
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 10:08:06 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 28789203BE;
 Thu, 26 Aug 2021 13:07:54 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1629972474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xhIF7wFjI1cK27Y38OfxStwBtBlL7dOqeNIMwEQv0PY=;
 b=mhnvenJpxB6xIGFhtg/NA1p4IV7ex0FWVhJ+4Yml4eh/p4Uuv4dLqzDldrC9SwCNRAW73e
 Llf7iJyadytki5k/BWTm7xAvbw0h4AiVEnI6H29YMJk8luf05YCgbcVBarkZEFCuiBlU/1
 XotDIFpL1ArshOAS3c2QQrliSxBTXnA=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1mJANi-00025m-Uy; Thu, 26 Aug 2021 11:05:03 +0300
Date: Thu, 26 Aug 2021 11:05:02 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <b18ccb3ea85643bd0c696e2db81d9aaf3cec41d2.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2108261102090.7992@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com> 
 <alpine.DEB.2.20.2108241211001.5917@mail.home>
 <c5f5db2090df4270a7fb74724260b0b767ad86d7.camel@linux.intel.com>
 <alpine.DEB.2.20.2108250923160.6587@mail.home>
 <b18ccb3ea85643bd0c696e2db81d9aaf3cec41d2.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-512672632-1629965102=:7992"
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1629972474; a=rsa-sha256; cv=none;
 b=XxmyhtrayPel833S3sjbRWYqa6mXIIWF+e55Gdkv+2a8nwIty44x8Wy7gtq28tGtV3q3eF
 0tkduCVxNUoUIQkGgW9UGpuP0sjMlQADJchp2w7DvW4R2ROozAxETvudbkXkrXCTteAJjG
 pod8yeEfrTvgvTYFYCjq64SmXmOCCkA=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1629972474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xhIF7wFjI1cK27Y38OfxStwBtBlL7dOqeNIMwEQv0PY=;
 b=pNPh/QPjkBrUukMd/wHDYp2cmwiZC5AsdYv/hOkXTr0UZ2WFz491In0k1PpMzKfpAh0ovI
 Rvnv+IIjofbGsJG6B5bYqBMR7083bm9i92vI3w+D58YW7Xs7KS7KdvMT8jSGUojmIYhGOy
 k1+ulnz/p+YobVqcV4n7N8Pohl+HEJY=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 26 Aug 2021, Lukasz Hawrylko wrote: > You can check
 if txt-stat dumps TBOOT log correctly. Nothing else comes > into my mind.
 Looks normal to me. I've attached a compressed version to this mail. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mJCIm-001avw-3x
Subject: Re: [tboot-devel] tboot not picking the right ACM module on Dell
 Latitude E5470
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
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--8323329-512672632-1629965102=:7992
Content-Type: text/plain; charset=US-ASCII; format=flowed


On Thu, 26 Aug 2021, Lukasz Hawrylko wrote:
> You can check if txt-stat dumps TBOOT log correctly. Nothing else comes
> into my mind.

Looks normal to me. I've attached a compressed version to this mail.

-Timo

--8323329-512672632-1629965102=:7992
Content-Type: application/gzip; name=txt-stat.output.gz
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.20.2108261105020.7992@mail.home>
Content-Description: 
Content-Disposition: attachment; filename=txt-stat.output.gz

H4sICJFnJ2EAA3R4dC1zdGF0LnR4dADsPW1v2zjSn5NfMZ8O7T3ZnKh3Gwhw
aV7a4NIkT5IWu89iIVAS5ehqWzpJbpM73H9/Zki9ULKVbNt0F921UWRtzgw5
HA7njZT2bFmJ+YviJdz+eAtH2TJJZ6uCV2m2hGsxS8tKFOV0d+fm9mYKxr1h
GMw3Qra7A/gpBRIXQZwtxRRur9+dNM33aVW3nh6e39TNC7EIIjlAMM+iDz1Y
XqQfeSWCLBdLvStE5PO0egjYOMjsgU5aThVadV8FhShF1Y53YnaT0T+i4T4q
RFW2/V1fX14fXR6f6BS7O8dnx+/PjrU2FhqG6xu+q3r5KJZxVgRpTChdcyw+
ppGom4lCNRfYXKLIawCK9/Tm1dkpfU8Gn92d/706U6CGm0lsGJbk6ubs4ux2
/9XhjeQ2nIjY0Npvzv4P2y3TQz5fwQvj3iHoy92dNyeHVxpVYioq2ayIJsxz
DFsSiZro+OpaZyLk9Ndm7eJ80BerynLZN2/kJyWd/hs1xH6L3dpsYls4APZ7
9e7V+dnR/j9OfpoqNDMG14M4htgDR0AyAcuCiQmuC9wBNwHTA+bDxAHHAS5A
UXkecBNCA0VO320TTBOEQz9NG/wYQgGhD8ICS/a8u/vXL//gkLR9FoKXq0LE
MOerZXTXCqBWKUjmfAZSFSXgawa8fXV5eYtinpGQFvw+IGEe4NpKlfp3muNW
Wy2rA1b/yrPyZ+MXOACjbiB81cJM5hFatCoKwjtgDjM8bAhXyVQNhHun4AuB
DYkoIF0mWQugD49j3GIlrXDU7BANnKcVCYMZpt1r/5TGFbabjttrvhPp7A5l
xOw+epjnpL16U/WQowaxpmlEWKCE9agoZX+mYbIfDPcHZuPgU8OA/zEY/mX7
zNg3nxjk16zXFKJsseBLVJCUjCMu3yxdzg5KUaR8vocGMise9j7OeIN+dmiZ
wenJ4e2765Pg6PLi9vryPHh7QxsPP0mCy1RjHl29g7SEm7c//hDxnIdzMYC8
X4cgMkHEkhrjppUUObpLc9RTIFb5fA5LIWJUa0mfotFNRYkmW5D9/w5ZfXVz
RZ1F+QpaBcuKFJeCz0H4poEbKm8VfGfgJgz4AbRfjk9N8IK93ESgoH2CiSIw
NxNM1ggm4rERFFQnYIrLkRHYcA5+wp1kdIQW2iNwx0dooTpB7ESPjFBD+wTx
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

--8323329-512672632-1629965102=:7992
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--8323329-512672632-1629965102=:7992
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--8323329-512672632-1629965102=:7992--

