Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA112148DE9
	for <lists+tboot-devel@lfdr.de>; Fri, 24 Jan 2020 19:41:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iv3tG-0003vz-44; Fri, 24 Jan 2020 18:41:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christopher.w.clark@gmail.com>) id 1iv3tD-0003ve-A4
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 18:41:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e0c60I1ax0386eehcNtvkg5nAPwecnuRIxM7RJSiw9M=; b=Q+INv5MZ37HbY7lXpYfCyd9Vhv
 n5NpEdXbILKFYd2u+W4/IWawv0XxDkNcEd3J6xzzeusIbvd0HVu+4uoIpx+WiuWsOSwTsr47FrVA2
 SrePa+wtTGaYG/0iP9blhJSjCsgBxO3TJqHQKsmtLKJBMqmNjG8r2Nr7nikrmUAy5Xb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e0c60I1ax0386eehcNtvkg5nAPwecnuRIxM7RJSiw9M=; b=LmQ+Z1CfYfEz8L/rVKrmLPYxbC
 HWmg8L6YW4E5PFDz7nnrRfVjEB5KTnFnSCaSihq146A3g2GQcL1Ag5fDM0gOEUqOZUCl8u/vogywl
 Rd0viWeiNvS03YQTRAOfZDNULIozwaEstOdY3SuSO7OKUVSTsfLF/0tYfC1LJS/4o9CE=;
Received: from mail-pj1-f50.google.com ([209.85.216.50])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iv3tA-00HKoD-QI
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 18:41:07 +0000
Received: by mail-pj1-f50.google.com with SMTP id d5so189313pjz.5
 for <tboot-devel@lists.sourceforge.net>; Fri, 24 Jan 2020 10:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=e0c60I1ax0386eehcNtvkg5nAPwecnuRIxM7RJSiw9M=;
 b=f1EII6iJCQlXcPq/7lABh8h9UBgtXF2l9yRuMK2ARldZODcG95w2L+D4tTzIcFwXRN
 JuSZQHyHj/d0LA0LPU6fxqgkYfS4RE2wzsOSmw9JTHbJwYvN+rVj5/rIM4hqDkbK3xE2
 lqwBahNmWatXWThw8HU0zJvYLjH6bBJ9xqaCaF02fDaoXtGaTTIK3LHrHkt8OpBBEPam
 sH8YQ8+GwkSCZEyZEX4MFQU5/LGWufDFAjE69ceOx9MI0LMAgFWYvTYhO0ILRQbZ+dZq
 Jw+gwkU+A2uQaJkrnbQ9hufGOvl+p/KDQntCvwnOZC5751j6Lt48QzI8o+vAstn4Pf+H
 rsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=e0c60I1ax0386eehcNtvkg5nAPwecnuRIxM7RJSiw9M=;
 b=UDKt07n2DTckHWwaX9IMKP3HinTjtC8TjiKtdZ8o2WyNFySNynyxTSTtGGn5W1ojoq
 2+vc4LRaDrgWIEVc2HA1LRX8/JSnj2/+LUZkVwcsesWSC7otHMkoKy9HtJLFVLGP9Uls
 l2HLYs1YZRKBFz7HAYg/Pea2laGQZ67cEa/Au8fcT9Gta6sDPadSuLQHcAOvyGbLluSC
 rvL/PseCUMFkQc/VHC9SK3ax++rYUWddHvI+4WIrhWSFDtq9eTQHELqlO9F9bb1vCiv5
 wha3NCyfDkcxFUq/IvgBTX6GXMj5aKWSyqZlYTpI09tkWpiTMoifSBtWzHO/WSypoOmL
 xt7A==
X-Gm-Message-State: APjAAAX1So262jZ27O2QY1X5h2Ypua1SUXoJyGSuIowP6fIxeAc3gT7i
 4T8mGyNvhnwEFgVpawTQ2ZSL21AA
X-Google-Smtp-Source: APXvYqxpKbmI7b1v+rtXStxaIBNFDaJzn44EWpRZNI0LuZKpGUwtOYeVyc02ZoETRqxpKOq7jLBpNA==
X-Received: by 2002:a17:902:d20c:: with SMTP id
 t12mr5085242ply.18.1579891258537; 
 Fri, 24 Jan 2020 10:40:58 -0800 (PST)
Received: from desktop.ice.pyrology.org
 (static-50-53-74-115.bvtn.or.frontiernet.net. [50.53.74.115])
 by smtp.gmail.com with ESMTPSA id s131sm7568102pfs.135.2020.01.24.10.40.57
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 10:40:57 -0800 (PST)
From: Christopher Clark <christopher.w.clark@gmail.com>
To: tboot-devel@lists.sourceforge.net
Date: Fri, 24 Jan 2020 10:40:35 -0800
Message-Id: <20200124184035.8995-2-christopher.w.clark@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200124184035.8995-1-christopher.w.clark@gmail.com>
References: <20200124184035.8995-1-christopher.w.clark@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (christopher.w.clark[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1iv3tA-00HKoD-QI
Subject: [tboot-devel] [PATCH 2/2] safestringlib: fix warnings with GCC 6.4.0
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Allow compilation with -Werror, which is enabled by default in OpenEmbedded.

 -Wunused-parameter fixes are macro related.

 -Wswitch-default fixes fall-throughs in format parsing that
  would be caught during compilation by GCC (invalid formats).

 -Wdiscarded-qualifiers fixes add missing const around error messages
  which are usually literals.

 -Wincompatible-pointer-types, mem_prim_set32() takes a uint32_t* from
  wwmemset_s() wchar_t input without a cast.

Signed-off-by: Christopher Clark <christopher.w.clark@gmail.com>
Patch is by Eric Chanudet for OpenXT:
https://github.com/OpenXT/xenclient-oe/blob/fc13893594f684baea65b7ee09066a8ddb840b4d/recipes-security/tboot/tboot-1.9.9/0014-safestringlib-Attend-GCC-warnings.patch

diff -r dcec96ce7d2c -r aed3b7861fb0 safestringlib/safeclib/abort_handler_s.c
--- a/safestringlib/safeclib/abort_handler_s.c	Fri Jan 24 10:03:42 2020 -0800
+++ b/safestringlib/safeclib/abort_handler_s.c	Fri Jan 24 10:10:20 2020 -0800
@@ -67,6 +67,7 @@
 
 void abort_handler_s(const char *msg, void *ptr, errno_t error)
 {
+	(void) ptr;
 	slprintf("ABORT CONSTRAINT HANDLER: (%u) %s\n", error,
 		 (msg) ? msg : "Null message");
 	slabort();
diff -r dcec96ce7d2c -r aed3b7861fb0 safestringlib/safeclib/ignore_handler_s.c
--- a/safestringlib/safeclib/ignore_handler_s.c	Fri Jan 24 10:03:42 2020 -0800
+++ b/safestringlib/safeclib/ignore_handler_s.c	Fri Jan 24 10:10:20 2020 -0800
@@ -64,7 +64,9 @@
 
 void ignore_handler_s(const char *msg, void *ptr, errno_t error)
 {
-
+	(void) ptr;
+	(void) error;
+	(void) msg;
 	sldebug_printf("IGNORE CONSTRAINT HANDLER: (%u) %s\n", error,
 		       (msg) ? msg : "Null message");
 	return;
diff -r dcec96ce7d2c -r aed3b7861fb0 safestringlib/safeclib/safe_str_constraint.h
--- a/safestringlib/safeclib/safe_str_constraint.h	Fri Jan 24 10:03:42 2020 -0800
+++ b/safestringlib/safeclib/safe_str_constraint.h	Fri Jan 24 10:10:20 2020 -0800
@@ -48,12 +48,13 @@
  * Safe C Lib internal string routine to consolidate error handling
  */
 static inline void handle_error(char *orig_dest, rsize_t orig_dmax,
-                                char *err_msg, errno_t err_code)
+                                const char *err_msg, errno_t err_code)
 {
 #ifdef SAFECLIB_STR_NULL_SLACK
     /* null string to eliminate partial copy */
     while (orig_dmax) { *orig_dest = '\0'; orig_dmax--; orig_dest++; }
 #else
+    (void) orig_dmax;
     *orig_dest = '\0';
 #endif
 
@@ -62,12 +63,13 @@
 }
 
 static inline void handle_wc_error(wchar_t *orig_dest, rsize_t orig_dmax,
-                                char *err_msg, errno_t err_code)
+                                   const char *err_msg, errno_t err_code)
 {
 #ifdef SAFECLIB_STR_NULL_SLACK
     /* null string to eliminate partial copy */
     while (orig_dmax) { *orig_dest = L'\0'; orig_dmax--; orig_dest++; }
 #else
+    (void) orig_dmax;
     *orig_dest = L'\0';
 #endif
 
diff -r dcec96ce7d2c -r aed3b7861fb0 safestringlib/safeclib/snprintf_support.c
--- a/safestringlib/safeclib/snprintf_support.c	Fri Jan 24 10:03:42 2020 -0800
+++ b/safestringlib/safeclib/snprintf_support.c	Fri Jan 24 10:10:20 2020 -0800
@@ -78,6 +78,7 @@
 			case '+' : // force a sign be used
 				index++; // skip the flag character
 				break;
+			default: break;
 			}
 			// check for and skip the optional field width
 			while ( format[index] != '\0' && format[index] >= '0' && format[index] <= '9') {
@@ -112,6 +113,7 @@
 			case 'z' :
 			case 't' : index++;
 			           break;
+			default: break;
 			}
 
 			// Recognize and record the actual modifier
@@ -212,6 +214,7 @@
 		case FMT_INT   :
 			retValue = 1;
 			break;
+		default: break;
 	}
 	return retValue;
 }
diff -r dcec96ce7d2c -r aed3b7861fb0 safestringlib/safeclib/wmemset_s.c
--- a/safestringlib/safeclib/wmemset_s.c	Fri Jan 24 10:03:42 2020 -0800
+++ b/safestringlib/safeclib/wmemset_s.c	Fri Jan 24 10:10:20 2020 -0800
@@ -98,7 +98,7 @@
         return (RCNEGATE(ESLEMAX));
     }
 
-    mem_prim_set32(dest, len, value);
+    mem_prim_set32((void*)dest, len, value);
 
     return (RCNEGATE(EOK));
 }


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
