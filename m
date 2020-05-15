Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B48051D53F1
	for <lists+tboot-devel@lfdr.de>; Fri, 15 May 2020 17:14:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jZc2X-000514-IE; Fri, 15 May 2020 15:14:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jZc2W-00050v-6z
 for tboot-devel@lists.sourceforge.net; Fri, 15 May 2020 15:14:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x8SbOEDsomhh2LcFGoOK9l1qiUck6ExV23Nay8iQFVg=; b=YZMYZ9vwwL7ckGC1p+zWjdji6d
 K5++lGw7nm8Yl/VjO4DN/gy8YK8sZ6bRhwZ2NK/Ep9SkpFY/lb97h/WZ1bB1gnqKS5IvNPAVAAbw6
 sSxmo8S8qiXRnpEEp16RY61Ym7NQLowznykJ91WsmYFwyJteyq4eVdc2G/Af1JNwmUcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x8SbOEDsomhh2LcFGoOK9l1qiUck6ExV23Nay8iQFVg=; b=kP31jq1ZxciOMEtffvmC8u7u3V
 6SJRo256rxMWXKLvRfhur8Xay07JRQzSHBTp2EG5P4tB6I6FUmTuQLKWDahdQzGw0OGzn3QOLS8Q5
 Mrt0ojSHsIDEZwT5rQRE+9N71kW1F4y7/1JdvapC47BKMj7Mq93wrQLjiSMVUep0EamY=;
Received: from lahtoruutu.iki.fi ([212.16.98.55])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZc2R-00BjRf-Gh
 for tboot-devel@lists.sourceforge.net; Fri, 15 May 2020 15:14:20 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 5F2441B00162;
 Fri, 15 May 2020 18:14:00 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1589555640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=x8SbOEDsomhh2LcFGoOK9l1qiUck6ExV23Nay8iQFVg=;
 b=ADBgxWE2QXBu4z3J98TnTtt8uivpG/SvPzcgLyu8pfUuR2cNL2OdGr6ErnoJ57jjmsYZ0k
 ygkYx/bjIlfXGkAGTU+1mnKWXtH/3k6+PAhywTMlnzl/KyjhZjtD0LsdTVsLPW/+FVq698
 JbgTCmy9HLloH8fnkjWe150wJby6XclRhUQ5QzyCdM+opZcWSk+CUoY7VYSyoSsK4TOpnB
 Kg5Gl+zvcwFPg0fHjz78+0dYp9zJ4OK3Ai5lIAAMDSs6ovWytXYaBzWJLupnJEInpIAQwL
 ha5h+QSRsgY1AKEUjFieelnof8qDpN/fbkAjqQMZsVRuVQ6zJXd+tGPDJpxwSA==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jZc25-0002uz-KW; Fri, 15 May 2020 18:13:53 +0300
Date: Fri, 15 May 2020 18:13:53 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <3d421472c4d7f92bddd40b715025283e8178d3bb.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005151805340.11206@mail.home>
References: <alpine.DEB.2.20.2005102344150.5921@mail.home>
 <109c0b38a6b6d82452ff4acc4ef8b10a6fd2b3eb.camel@linux.intel.com>
 <alpine.DEB.2.20.2005141640030.9904@mail.home>
 <3d421472c4d7f92bddd40b715025283e8178d3bb.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1589555640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=x8SbOEDsomhh2LcFGoOK9l1qiUck6ExV23Nay8iQFVg=;
 b=NcAT+P3vaEITGlvGiD0734fZgOGyjBJcyani9WQe9t+xVKp7eu0Nv0+FjarijGpCHKbfuS
 VMU0qr/16HL3RY9Axp0jmKa+3PouiAgJQdBU0sVdTPs9yR4TVLD/06D8/iLeMPuVvPMYXp
 Ou/FSp7zlxv+Ov8K5q/Ex7DdBpI/5lz7tYpq4QlC0XhkDFNB+E1o10xNuqlXVzj3UNR1PY
 XLoUnbG21mPBGslWQNOo02M8fc20iw8PMWAlTg6SIq/IiEHko4YQO4141kXxDTXRsTeS4p
 451BPaTtRSoX11yMSbR7Ae8OopuzojHVYwMrPKPYryMZokLKGpR9HMG+Mw+7bg==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1589555640; a=rsa-sha256; cv=none;
 b=gSGdo8XhdgPXtuSIHA7ebXtse9+FRgXGdbrnmMOSVV/2LCXZWZQ5fBO3QruIPiPwiZW/1q
 v8BnJFcuGiPi4EAVcvxHFvfLTf9Xh/nYyGABJrfiRwwq98MnDDoOXAdIA+r8xNnriwxtB0
 Q4MikMqLwi3NIanaIJCiJaIMk8TZtAcYO8bjP79qBb90IXIi7+rQ/UKOmIbGggOMOa7k1Z
 Stc1Iqi8BELdrpJLSrClLZ7hGjoTR8WDYGM121wFxTr8rL1DkBkyrg3niF0DwotMv9dsyz
 Jd8GDW9opcjw5MCY5v7QkLp+o+HBzcZYwPHC0rr0RQ2QH97YTauoDP84s0az6A==
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZc2R-00BjRf-Gh
Subject: Re: [tboot-devel] rename parse_err?
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

On Fri, 15 May 2020, Lukasz Hawrylko wrote:
> Done.

Thanks, I'll do some testing and ask for further feedback. Would it be 
possible to release a new version after some time with all these
changes so that they would be part of the eventual Debian upload?

Btw, can you recommend some tool for defining an NVRAM region that would 
allow me to specify the DRTM PCR values that need to match before it can 
be accessed? tpm_nvdefine -f works only with PCRs <= 15. I sent a patch
last summer to fix this but the project does not seem to be very active
and the patch appears to have been forgotten:

https://www.mail-archive.com/trousers-tech@lists.sourceforge.net/msg00684.html

As far as I understand, the defindex tool in tboot does not let me specify 
PCR values either. I need this for forward-sealing of data across 
updates.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
