Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3154E56FE
	for <lists+tboot-devel@lfdr.de>; Wed, 23 Mar 2022 17:58:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nX4JI-0002kp-DZ; Wed, 23 Mar 2022 16:58:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jandryuk@gmail.com>) id 1nX4JG-0002kf-Vf
 for tboot-devel@lists.sourceforge.net; Wed, 23 Mar 2022 16:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=duDvh1B8pz0xP6AGdC1P4Se1BVqrtrMoLgV5KPU4HpM=; b=UTJrYvQMZ/tsyvB2nVLvdkMAix
 jwkA0B/uhqHSveR2S3FrKIfsm3gjimIOxLGijbJIJ+a34rCF4Wyd9UNb844fHg+pEKYhJ+ltMCOKV
 RH2FY7UTIVIutA0UTbi1yFokRCWeCRPqzng+CBvaZFaZjGboOauAB3qC8xt6BqFfPbeM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=duDvh1B8pz0xP6AGdC1P4Se1BVqrtrMoLgV5KPU4HpM=; b=E
 Pid0dLHHheyhExYNxtWmb/I3pXa8apXGJBJIgYbEfoz9f34y6xMSB7KXeXrR37el+fFzMxWcneHeF
 fGmrz8T33OpEq8lxaR+Jc0W0HORkcsLTWLFgdRIK0/MHwGUwcWY36ln7CFxlAUWYMDEXmJ/7+ysrl
 20BCGIqz9l9kfi/k=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nX4JF-0007Jq-22
 for tboot-devel@lists.sourceforge.net; Wed, 23 Mar 2022 16:58:09 +0000
Received: by mail-lj1-f172.google.com with SMTP id s25so2726290lji.5
 for <tboot-devel@lists.sourceforge.net>; Wed, 23 Mar 2022 09:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=duDvh1B8pz0xP6AGdC1P4Se1BVqrtrMoLgV5KPU4HpM=;
 b=W7YToS1KzbwOS2+lVeVbpAzOa8Z5L+WhFq3dbYyacmfCVG7/0tGOVnqy3UT5RFwSWa
 SD/jR3haNxvlIwr7/0sQqHXJYjgCesnok49rBB+RNANOm99t7kkf9kSl/RQy1KlTtqSP
 kET3gqmp4jXPgRt+TeQ80z2RPAq8seQY6OK/F1PiUNL/c/25oamjHcRkC20VQCJ5eUUY
 UmmcDTq5JRidmXWFxf8OUPGU2woNNa19GRB4aACX1oFUNIAr1+tDU2ATJyK6yUnnckqI
 zlwqrcYty0vfIgAFOLTrEueteUZJ+SCe7NGI++z6XIfIJ3jeT7P3nNqz3MGwut3+h7PN
 EMcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=duDvh1B8pz0xP6AGdC1P4Se1BVqrtrMoLgV5KPU4HpM=;
 b=uYRh7jZVCJqwmYIaq+2Z0eVET6obtv5CcK6PaUMQorNUXO7ApvpSsztqMfjIF1Vb8U
 xac2EbQ6aA8xLqfYWqxtIInv5OC75QoyeBHhCZ9gdxy1Oq/bUE/fAaQtg4p9mPfxGTUy
 ps78wdjHH2e3zb7mM7pEryK0CfLt06N8qTjD2JPVNgbrJTr+zhND36bR6MZCiMXGW/ee
 /A9HIRy7UVBGS5wqpSlkUCUybRFPQ8EmErI70uoi7YO5HPFGuLTVlKumiQAEo0hlZEGP
 /o+zjd3lFHrPyv02Hc0IFK/dG3rvLCMR3pYbrjlRACxPzvG+5abPke+kwJXfz4RvcDkq
 zo4A==
X-Gm-Message-State: AOAM531PKPzFNQ+axS4CjYv1utPDXwjhrWpP9ZiiSRJ1EBEo0wcT6SJg
 SUoSYnG3PX2WL4k5alSj19IqFYYlQImqanJVPCfNe6NwiJQ=
X-Google-Smtp-Source: ABdhPJyCRt8YD45YOBR3r9Eo8h6cpf0UNTTffA7qfD1vzKHM01i2kdfOuq1SMLj4ShXGisDrQEhw73bG0g7YVlE8nDw=
X-Received: by 2002:a2e:ba15:0:b0:249:66e0:13ad with SMTP id
 p21-20020a2eba15000000b0024966e013admr787495lja.168.1648054682324; Wed, 23
 Mar 2022 09:58:02 -0700 (PDT)
MIME-Version: 1.0
From: Jason Andryuk <jandryuk@gmail.com>
Date: Wed, 23 Mar 2022 12:57:51 -0400
Message-ID: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The intel page
 https://software.intel.com/content/www/us/en/develop/articles/intel-trusted-execution-technology.html
 doesn't have anything newer than 9th gen SINIT ACM. Lukasz previously provided
 a direct link to 10th gen ones. Can someone from Intel provide a link to
 11th gen SINIT ACMs? And since 12th gen is right around the corner, maybe
 those too please? 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jandryuk[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.172 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nX4JF-0007Jq-22
Subject: [tboot-devel] 11th Gen SINIT ACM
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

The intel page https://software.intel.com/content/www/us/en/develop/articles/intel-trusted-execution-technology.html
doesn't have anything newer than 9th gen SINIT ACM.

Lukasz previously provided a direct link to 10th gen ones.  Can
someone from Intel provide a link to 11th gen SINIT ACMs?  And since
12th gen is right around the corner, maybe those too please?

Thanks,
Jason


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
