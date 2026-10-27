.class public final Lmiui/provider/ExtraTelephony;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$Hms;,
        Lmiui/provider/ExtraTelephony$Judge;,
        Lmiui/provider/ExtraTelephony$FirewallLog;,
        Lmiui/provider/ExtraTelephony$AntiSpamSim;,
        Lmiui/provider/ExtraTelephony$AntiSpamMode;,
        Lmiui/provider/ExtraTelephony$Keyword;,
        Lmiui/provider/ExtraTelephony$Phonelist;,
        Lmiui/provider/ExtraTelephony$Whitelist;,
        Lmiui/provider/ExtraTelephony$Blacklist;,
        Lmiui/provider/ExtraTelephony$QuietModeEnableListener;,
        Lmiui/provider/ExtraTelephony$SilentModeObserver;,
        Lmiui/provider/ExtraTelephony$AntispamWhiteList;,
        Lmiui/provider/ExtraTelephony$SimCards;,
        Lmiui/provider/ExtraTelephony$SmsPhrase;,
        Lmiui/provider/ExtraTelephony$MmsSms;,
        Lmiui/provider/ExtraTelephony$Threads;,
        Lmiui/provider/ExtraTelephony$DeletableSyncColumns;,
        Lmiui/provider/ExtraTelephony$SyncColumns;,
        Lmiui/provider/ExtraTelephony$PrivateAddresses;,
        Lmiui/provider/ExtraTelephony$ThreadsColumns;,
        Lmiui/provider/ExtraTelephony$Mx;,
        Lmiui/provider/ExtraTelephony$ServiceCategory;,
        Lmiui/provider/ExtraTelephony$AdvancedSeen;,
        Lmiui/provider/ExtraTelephony$MxType;,
        Lmiui/provider/ExtraTelephony$UnderstandInfo;,
        Lmiui/provider/ExtraTelephony$Mms;,
        Lmiui/provider/ExtraTelephony$Sms;,
        Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field public static final blacklist BANK_CATEGORY_NUMBER_PREFIX_106:Ljava/lang/String; = "106"

.field public static final blacklist BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist BLOCKED_CONV_ADDR:Ljava/lang/String; = "blocked_conv_addr"

.field public static final blacklist BLOCKED_FLAG:Ljava/lang/String; = "blocked_flag"

.field public static final blacklist BLOCKED_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final blacklist BLOCKED_FLAG_BLOCKED_MSG:Ljava/lang/String; = "1"

.field public static final blacklist BLOCKED_FLAG_NO_BLOCKED_MSG:Ljava/lang/String; = "0"

.field public static final blacklist CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field private static final blacklist CALL_BLOCK_TYPE:Ljava/lang/String; = "callBlockType"

.field public static final blacklist CHECK_DUPLICATION:Ljava/lang/String; = "check_duplication"

.field public static final blacklist DEFAULT_THREADS_LIST_TYPE_SP:I = 0x1

.field public static final blacklist DIRTY_QUERY_LIMIT:Ljava/lang/String; = "dirty_query_limit"

.field public static final blacklist FORCE_DELETE:Ljava/lang/String; = "force_delete"

.field public static final blacklist INTERCEPT_STATE_ALL:I = 0x0

.field public static final blacklist INTERCEPT_STATE_CALL:I = 0x2

.field public static final blacklist INTERCEPT_STATE_SMS:I = 0x1

.field public static final blacklist LOCAL_PRIVATE_ADDRESS_SYNC:Ljava/lang/String; = "local.priaddr.sync"

.field public static final blacklist LOCAL_SMS_SYNC:Ljava/lang/String; = "local.sms.sync"

.field public static final blacklist LOCAL_STICKY_THREAD_SYNC:Ljava/lang/String; = "local.stkthrd.sync"

.field public static final blacklist LOCAL_SYNC_NAME:Ljava/lang/String; = "localName"

.field public static final blacklist NEED_FULL_INSERT_URI:Ljava/lang/String; = "need_full_insert_uri"

.field public static final blacklist NO_NOTIFY_FLAG:Ljava/lang/String; = "no_notify"

.field public static final blacklist PRIVACY_FLAG:Ljava/lang/String; = "privacy_flag"

.field public static final blacklist PRIVACY_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final blacklist PRIVACY_FLAG_NO_PRIVATE_MSG:Ljava/lang/String; = "0"

.field public static final blacklist PRIVACY_FLAG_PRIVATE_MSG:Ljava/lang/String; = "1"

.field public static final blacklist PROVIDER_NAME:Ljava/lang/String; = "antispam"

.field public static final blacklist PrefixCode:Ljava/lang/String; = "***"

.field private static final blacklist SMS_BLOCK_TYPE:Ljava/lang/String; = "smsBlockType"

.field public static final blacklist SOURCE_ANYONE:I = 0x0

.field public static final blacklist SOURCE_CONTACT:I = 0x1

.field public static final blacklist SOURCE_STAR:I = 0x2

.field public static final blacklist SOURCE_VIP:I = 0x3

.field public static final blacklist SUPPRESS_MAKING_MMS_PREVIEW:Ljava/lang/String; = "supress_making_mms_preview"

.field private static final blacklist TAG:Ljava/lang/String; = "ExtraTelephony"

.field public static final blacklist THREADS_LIST_TYPE:Ljava/lang/String; = "threads_list_type"

.field public static final blacklist THREADS_LIST_TYPE_COMPOSITE:I = 0x0

.field public static final blacklist TYPE_INTERCEPT_ADDRESS:I = 0x2

.field public static final blacklist TYPE_INTERCEPT_NUMBER:I = 0x1

.field public static final blacklist TYPE_INTERCEPT_NUMBER_FRAGMENT:I = 0x3

.field public static final blacklist ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field public static final blacklist ZEN_MODE_ALARMS:I = 0x3

.field public static final blacklist ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final blacklist ZEN_MODE_MIUI_SILENT:I = 0x4

.field public static final blacklist ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final blacklist ZEN_MODE_OFF:I

.field private static blacklist mQuietListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/provider/ExtraTelephony$QuietModeEnableListener;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmQuietListeners()Ljava/util/Set;
    .registers 1

    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 136
    const-string v0, "\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

    .line 140
    const-string v0, "((\\[[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\])|(\\\u3010[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\\u3011))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

    .line 270
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .registers 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C
    .param p2, "pos"    # I

    .line 2128
    if-nez p2, :cond_7

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_7

    return-void

    .line 2129
    :cond_7
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2130
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2131
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2133
    :cond_19
    return-void
.end method

.method public static blacklist checkKeyguardForQuiet(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2038
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2039
    return v1

    .line 2041
    :cond_6
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_f

    .line 2042
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->checkKeyguardForSilentMode(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2045
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1a

    .line 2046
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2048
    :cond_1a
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_75

    .line 2049
    const-string v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2050
    return v1

    .line 2051
    :cond_2a
    const-string v0, "com.android.incallui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 2052
    const-string v0, "com.android.server.telecom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_74

    .line 2056
    :cond_3b
    const/4 v0, 0x0

    .line 2058
    .local v0, "c":Landroid/database/Cursor;
    :try_start_3c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://antispamCommon/zenmode"

    .line 2059
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "4"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2058
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_54} :catch_63
    .catchall {:try_start_3c .. :try_end_54} :catchall_61

    move-object v0, v3

    .line 2061
    if-eqz v0, :cond_5e

    .line 2062
    nop

    .line 2067
    if-eqz v0, :cond_5d

    .line 2068
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2062
    :cond_5d
    return v2

    .line 2067
    :cond_5e
    if-eqz v0, :cond_6c

    .line 2068
    goto :goto_69

    .line 2067
    :catchall_61
    move-exception v1

    goto :goto_6e

    .line 2064
    :catch_63
    move-exception v2

    .line 2065
    .local v2, "e":Ljava/lang/Exception;
    :try_start_64
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_61

    .line 2067
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_6c

    .line 2068
    :goto_69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2071
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_6c
    nop

    .line 2076
    return v1

    .line 2067
    .restart local v0    # "c":Landroid/database/Cursor;
    :goto_6e
    if-eqz v0, :cond_73

    .line 2068
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2070
    :cond_73
    throw v1

    .line 2054
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_74
    :goto_74
    return v1

    .line 2073
    :cond_75
    return v2
.end method

.method public static blacklist checkKeyguardForSilentMode(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2083
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2084
    return v1

    .line 2086
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_11

    .line 2087
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->isSilenceModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2089
    :cond_11
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method public static blacklist checkMarkedNumberIntercept(Landroid/content/Context;IILjava/lang/String;IZI)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "cid"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "antispamProviderId"    # I
    .param p5, "isUserMarked"    # Z
    .param p6, "markedCount"    # I

    .line 1629
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1630
    .local v0, "markType":Ljava/lang/String;
    const-string v1, "ExtraTelephony"

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 1631
    const-string v3, "the mark type of cid is not found ... allow"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    return v2

    .line 1635
    :cond_21
    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2a

    move v4, v3

    goto :goto_2b

    :cond_2a
    move v4, v2

    .line 1636
    .local v4, "markSwitch":Z
    :goto_2b
    if-nez v4, :cond_4a

    .line 1637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the switch of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not open ... allow"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    return v2

    .line 1641
    :cond_4a
    invoke-static {p0, p3}, Lmiui/provider/ExtraTelephony;->isRelatedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1642
    const-string v3, "call number is a related number... allow"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    return v2

    .line 1646
    :cond_56
    sget-object v5, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToMarkTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x32

    invoke-static {p0, v5, v6}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-gt v5, p6, :cond_76

    move v5, v3

    goto :goto_77

    :cond_76
    move v5, v2

    .line 1648
    .local v5, "threshold":Z
    :goto_77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "marking threshold reached ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    if-nez p5, :cond_97

    const/16 v6, 0x18e

    if-eq p4, v6, :cond_97

    if-eqz v5, :cond_96

    goto :goto_97

    .line 1657
    :cond_96
    return v2

    .line 1654
    :cond_97
    :goto_97
    const-string v2, "should intercept this marked call !"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    return v3
.end method

.method public static blacklist containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsBody"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # I

    .line 1536
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .line 1541
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    .line 1542
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v4, v7

    .line 1536
    const/4 v2, 0x0

    const-string v3, "type = ? AND sim_id = ? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1544
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_64

    .line 1546
    :goto_21
    :try_start_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1547
    const-string v1, "data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1548
    .local v1, "keyword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1549
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_47} :catch_56
    .catchall {:try_start_21 .. :try_end_47} :catchall_54

    if-eqz v2, :cond_4e

    .line 1550
    nop

    .line 1556
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1550
    return v7

    .line 1552
    .end local v1    # "keyword":Ljava/lang/String;
    :cond_4e
    goto :goto_21

    .line 1556
    :cond_4f
    nop

    :goto_50
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1557
    goto :goto_64

    .line 1556
    :catchall_54
    move-exception v1

    goto :goto_60

    .line 1553
    :catch_56
    move-exception v1

    .line 1554
    .local v1, "e":Ljava/lang/Exception;
    :try_start_57
    const-string v2, "ExtraTelephony"

    const-string v3, "Cursor exception in shouldFilter()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_54

    .line 1556
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_50

    :goto_60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1557
    throw v1

    .line 1559
    :cond_64
    :goto_64
    return v6
.end method

.method private static blacklist convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "presentation"    # I
    .param p1, "logNumber"    # Ljava/lang/String;

    .line 1945
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    .line 1946
    const-string p1, "-2"

    goto :goto_17

    .line 1947
    :cond_6
    const/4 v0, 0x4

    if-ne p0, v0, :cond_c

    .line 1948
    const-string p1, "-3"

    goto :goto_17

    .line 1949
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 1951
    :cond_15
    const-string p1, "-1"

    .line 1953
    :cond_17
    :goto_17
    return-object p1
.end method

.method public static blacklist getCallBlockType(Landroid/content/Context;Ljava/lang/String;IZZZ)I
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "isForwardCall"    # Z
    .param p4, "isRepeated"    # Z
    .param p5, "isRepeatedBlocked"    # Z

    .line 1705
    const-string v1, "ExtraTelephony"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1706
    const/4 v0, 0x0

    return v0

    .line 1709
    :cond_a
    const/4 v2, 0x0

    .line 1711
    .local v2, "blockType":I
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v10, Lmiui/provider/ExtraTelephony$1;

    move-object v3, v10

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object v9, p0

    invoke-direct/range {v3 .. v9}, Lmiui/provider/ExtraTelephony$1;-><init>(Ljava/lang/String;IZZZLandroid/content/Context;)V

    invoke-direct {v0, v10}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v3, v0

    .line 1741
    .local v3, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :try_start_1e
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1742
    const-wide/16 v4, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_34} :catch_4e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1e .. :try_end_34} :catch_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1e .. :try_end_34} :catch_36

    move v2, v0

    .line 1754
    :goto_35
    goto :goto_55

    .line 1748
    :catch_36
    move-exception v0

    .line 1750
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v4

    if-nez v4, :cond_41

    .line 1751
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 1753
    :cond_41
    const-string v4, "TimeoutException when getCallBlockType"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1746
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_47
    move-exception v0

    .line 1747
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v4, "ExecutionException when getCallBlockType"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_35

    .line 1744
    :catch_4e
    move-exception v0

    .line 1745
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "InterruptedException when getCallBlockType"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_35

    .line 1755
    :goto_55
    return v2
.end method

.method public static blacklist getRealBlockType(I)I
    .registers 2
    .param p0, "blockType"    # I

    .line 1880
    and-int/lit8 v0, p0, 0x7f

    return v0
.end method

.method public static blacklist getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .line 1770
    const-string v0, ""

    if-nez p1, :cond_6

    move-object v1, v0

    goto :goto_7

    :cond_6
    move-object v1, p1

    .line 1771
    .local v1, "smsNumber":Ljava/lang/String;
    :goto_7
    if-nez p2, :cond_a

    goto :goto_b

    :cond_a
    move-object v0, p2

    :goto_b
    move-object v2, v0

    .line 1772
    .local v2, "smsBody":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1774
    .local v3, "smsBlockType":I
    const/4 v0, 0x3

    const/4 v4, 0x0

    :try_start_f
    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v5, 0x1

    aput-object v2, v0, v5

    const/4 v5, 0x2

    .line 1777
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 1778
    .local v0, "selectArgs":[Ljava/lang/String;
    sget-object v5, Lmiui/provider/ExtraTelephony$Judge;->SMS_CONTENT_URI:Landroid/net/Uri;

    .line 1779
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v5

    move-object v9, v0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1781
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_43

    .line 1782
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 1783
    const-string v7, "smsBlockType"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move v3, v7

    .line 1785
    :cond_3f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_52

    .line 1787
    :cond_43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v8, v9, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_51} :catch_53

    move v3, v7

    .line 1792
    .end local v0    # "selectArgs":[Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_52
    goto :goto_5b

    .line 1790
    :catch_53
    move-exception v0

    .line 1791
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ExtraTelephony"

    const-string v6, "getSmsBlockType error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1794
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5b
    if-gez v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move v4, v3

    :goto_5f
    return v4
.end method

.method public static blacklist getSmsURLScanResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 1830
    nop

    .line 1831
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1834
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1835
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lmiui/provider/ExtraTelephony$Judge;->URL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v1

    aput-object p2, v6, v2

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_23

    return v1

    .line 1840
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_23
    move-exception v0

    .line 1841
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraTelephony"

    const-string v2, "Exception when getSmsURLScanResult()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1843
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist isAddressInBlack(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawNumber"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .line 1236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1243
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const-string v2, "1"

    const/4 v7, 0x1

    aput-object v2, v4, v7

    .line 1244
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    .line 1245
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v4, v3

    .line 1236
    const/4 v2, 0x0

    const-string v3, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1247
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_6e

    .line 1249
    :try_start_40
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1250
    const-string v1, "state"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_50} :catch_60
    .catchall {:try_start_40 .. :try_end_50} :catchall_5e

    .line 1251
    .local v1, "dbState":I
    if-eqz v1, :cond_54

    if-ne v1, p2, :cond_59

    .line 1252
    :cond_54
    nop

    .line 1258
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1252
    return v7

    .line 1258
    .end local v1    # "dbState":I
    :cond_59
    nop

    :goto_5a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1259
    goto :goto_6e

    .line 1258
    :catchall_5e
    move-exception v1

    goto :goto_6a

    .line 1255
    :catch_60
    move-exception v1

    .line 1256
    .local v1, "e":Ljava/lang/Exception;
    :try_start_61
    const-string v2, "ExtraTelephony"

    const-string v3, "Cursor exception in isAddressInBlack(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_5e

    .line 1258
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_5a

    :goto_6a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1259
    throw v1

    .line 1261
    :cond_6e
    :goto_6e
    return v6
.end method

.method public static blacklist isCallTransferBlocked(Landroid/content/Context;I)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 1807
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$Judge;->CALL_TRANSFER_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    .line 1811
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 1807
    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1e

    .line 1813
    .local v1, "result":I
    if-ne v1, v5, :cond_1d

    move v0, v5

    :cond_1d
    return v0

    .line 1815
    .end local v1    # "result":I
    :catch_1e
    move-exception v1

    .line 1816
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExtraTelephony"

    const-string v3, "Exception when isCallTransferBlocked()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1818
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static whitelist isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1074
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1075
    return v1

    .line 1077
    :cond_8
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 1078
    :cond_16
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    nop

    .line 1079
    .local v0, "nomalizeNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    move-object v3, p1

    goto :goto_28

    :cond_27
    move-object v3, v0

    :goto_28
    move-object p1, v3

    .line 1080
    const-string v3, "[a-zA-Z]*-[a-zA-Z]*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1081
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1084
    :cond_3b
    const/4 v3, 0x0

    .line 1086
    .local v3, "c":Landroid/database/Cursor;
    :try_start_3c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "number = ? AND type = ? AND sync_dirty <> ? "

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v1

    const-string v9, "1"

    aput-object v9, v8, v2

    const/4 v9, 0x2

    .line 1092
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    .line 1086
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 1094
    if-eqz v3, :cond_68

    .line 1095
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_61} :catch_6b
    .catchall {:try_start_3c .. :try_end_61} :catchall_69

    if-lez v4, :cond_64

    move v1, v2

    .line 1100
    :cond_64
    invoke-static {v3}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1095
    return v1

    .line 1100
    :cond_68
    goto :goto_74

    :catchall_69
    move-exception v1

    goto :goto_79

    .line 1097
    :catch_6b
    move-exception v2

    .line 1098
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6c
    const-string v4, "ExtraTelephony"

    const-string v5, "Cursor exception in isInBlacklist(): "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_69

    .line 1100
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_74
    invoke-static {v3}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1101
    nop

    .line 1102
    return v1

    .line 1100
    :goto_79
    invoke-static {v3}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1101
    throw v1
.end method

.method public static whitelist isInBlacklist(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .line 1112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1113
    return v1

    .line 1115
    :cond_8
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 1116
    :cond_16
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    nop

    .line 1117
    .local v0, "nomalizeNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    move-object v3, p1

    goto :goto_28

    :cond_27
    move-object v3, v0

    :goto_28
    move-object p1, v3

    .line 1118
    const-string v3, "[a-zA-Z]*-[a-zA-Z]*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1119
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1122
    :cond_3b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    aput-object p1, v7, v1

    const-string v6, "1"

    aput-object v6, v7, v2

    const/4 v6, 0x2

    .line 1129
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x3

    .line 1130
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x0

    .line 1122
    const-string v6, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1132
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_80

    .line 1134
    :try_start_62
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_6f
    .catchall {:try_start_62 .. :try_end_66} :catchall_6d

    if-lez v4, :cond_69

    move v1, v2

    .line 1138
    :cond_69
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1134
    return v1

    .line 1138
    :catchall_6d
    move-exception v1

    goto :goto_7c

    .line 1135
    :catch_6f
    move-exception v2

    .line 1136
    .local v2, "e":Ljava/lang/Exception;
    :try_start_70
    const-string v4, "ExtraTelephony"

    const-string v5, "Cursor exception in isInBlacklist(): "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_6d

    .line 1138
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1139
    goto :goto_80

    .line 1138
    :goto_7c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1139
    throw v1

    .line 1141
    :cond_80
    :goto_80
    return v1
.end method

.method public static whitelist isInBlacklist(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .line 1151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1152
    return v1

    .line 1155
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    const-string v0, "1"

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const/4 v0, 0x2

    .line 1162
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v0

    const/4 v0, 0x3

    .line 1163
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v0

    const/4 v7, 0x0

    .line 1155
    const-string v5, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1165
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_5e

    .line 1167
    :try_start_30
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1168
    const-string v2, "state"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_50
    .catchall {:try_start_30 .. :try_end_40} :catchall_4e

    .line 1169
    .local v2, "dbState":I
    if-eqz v2, :cond_44

    if-ne v2, p2, :cond_49

    .line 1170
    :cond_44
    nop

    .line 1176
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1170
    return v8

    .line 1176
    .end local v2    # "dbState":I
    :cond_49
    nop

    :goto_4a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1177
    goto :goto_5e

    .line 1176
    :catchall_4e
    move-exception v1

    goto :goto_5a

    .line 1173
    :catch_50
    move-exception v2

    .line 1174
    .local v2, "e":Ljava/lang/Exception;
    :try_start_51
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isInBlacklist(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4e

    .line 1176
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_4a

    :goto_5a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1177
    throw v1

    .line 1179
    :cond_5e
    :goto_5e
    return v1
.end method

.method public static blacklist isInCloudPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 1485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1486
    return v1

    .line 1490
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    aput-object p3, v6, v1

    .line 1494
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const/4 v7, 0x0

    .line 1490
    const-string v5, "type = ? AND state in (0, ?)"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1496
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_59

    .line 1498
    :goto_24
    :try_start_24
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1499
    const-string v2, "number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1500
    .local v2, "match":Ljava/lang/String;
    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->number2regex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_4b
    .catchall {:try_start_24 .. :try_end_3c} :catchall_49

    if-eqz v3, :cond_43

    .line 1501
    nop

    .line 1507
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1501
    return v8

    .line 1503
    .end local v2    # "match":Ljava/lang/String;
    :cond_43
    goto :goto_24

    .line 1507
    :cond_44
    nop

    :goto_45
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1508
    goto :goto_59

    .line 1507
    :catchall_49
    move-exception v1

    goto :goto_55

    .line 1504
    :catch_4b
    move-exception v2

    .line 1505
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception when check prefix cloudPhoneList: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    .line 1507
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_45

    :goto_55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1508
    throw v1

    .line 1510
    :cond_59
    :goto_59
    return v1
.end method

.method public static blacklist isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1583
    return v1

    .line 1586
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    const-string v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "%\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1590
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_63

    .line 1592
    :goto_35
    :try_start_35
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1593
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1600
    .local v2, "antispamNumber":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "106"

    .line 1601
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4b} :catch_5a
    .catchall {:try_start_35 .. :try_end_4b} :catchall_58

    if-eqz v3, :cond_4e

    goto :goto_4f

    .line 1604
    .end local v2    # "antispamNumber":Ljava/lang/String;
    :cond_4e
    goto :goto_35

    .line 1602
    .restart local v2    # "antispamNumber":Ljava/lang/String;
    :cond_4f
    :goto_4f
    const/4 v1, 0x1

    .line 1608
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1602
    return v1

    .line 1608
    .end local v2    # "antispamNumber":Ljava/lang/String;
    :cond_54
    :goto_54
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1609
    goto :goto_63

    .line 1608
    :catchall_58
    move-exception v1

    goto :goto_5f

    .line 1605
    :catch_5a
    move-exception v2

    .line 1606
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_58

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_54

    .line 1608
    :goto_5f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1609
    throw v1

    .line 1611
    :cond_63
    :goto_63
    return v1
.end method

.method public static blacklist isInVipList(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1449
    return v1

    .line 1452
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    const-string v0, "3"

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const/4 v0, 0x2

    .line 1459
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v0

    const/4 v7, 0x0

    .line 1452
    const-string v5, "number = ? AND type = ? AND sync_dirty <> ? "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1461
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_47

    .line 1463
    :try_start_29
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_36
    .catchall {:try_start_29 .. :try_end_2d} :catchall_34

    if-lez v2, :cond_30

    move v1, v8

    .line 1467
    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1463
    return v1

    .line 1467
    :catchall_34
    move-exception v1

    goto :goto_43

    .line 1464
    :catch_36
    move-exception v2

    .line 1465
    .local v2, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isInVipList(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_34

    .line 1467
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1468
    goto :goto_47

    .line 1467
    :goto_43
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1468
    throw v1

    .line 1470
    :cond_47
    :goto_47
    return v1
.end method

.method public static blacklist isInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1273
    return v1

    .line 1275
    :cond_8
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 1276
    :cond_16
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    move-object p1, v0

    .line 1278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v1

    const-string v0, "2"

    aput-object v0, v7, v2

    const/4 v0, 0x2

    .line 1285
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v0

    const/4 v8, 0x0

    .line 1278
    const-string v6, "number = ? AND type = ? AND sync_dirty <> ? "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1287
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_5d

    .line 1289
    :try_start_3f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_4c
    .catchall {:try_start_3f .. :try_end_43} :catchall_4a

    if-lez v3, :cond_46

    move v1, v2

    .line 1293
    :cond_46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1289
    return v1

    .line 1293
    :catchall_4a
    move-exception v1

    goto :goto_59

    .line 1290
    :catch_4c
    move-exception v2

    .line 1291
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4d
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isInWhiteList(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_4a

    .line 1293
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1294
    goto :goto_5d

    .line 1293
    :goto_59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1294
    throw v1

    .line 1296
    :cond_5d
    :goto_5d
    return v1
.end method

.method public static blacklist isInWhiteList(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .line 1308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1309
    return v1

    .line 1311
    :cond_8
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 1312
    :cond_16
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    move-object p1, v0

    .line 1314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v1

    const-string v0, "2"

    aput-object v0, v7, v2

    const/4 v0, 0x2

    .line 1322
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v0

    const/4 v0, 0x3

    .line 1323
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v0

    const/4 v8, 0x0

    .line 1314
    const-string v6, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1325
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_64

    .line 1327
    :try_start_46
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_53
    .catchall {:try_start_46 .. :try_end_4a} :catchall_51

    if-lez v3, :cond_4d

    move v1, v2

    .line 1331
    :cond_4d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1327
    return v1

    .line 1331
    :catchall_51
    move-exception v1

    goto :goto_60

    .line 1328
    :catch_53
    move-exception v2

    .line 1329
    .local v2, "e":Ljava/lang/Exception;
    :try_start_54
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isInWhiteList(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    .line 1331
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1332
    goto :goto_64

    .line 1331
    :goto_60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1332
    throw v1

    .line 1334
    :cond_64
    :goto_64
    return v1
.end method

.method public static blacklist isInWhiteList(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawNumber"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .line 1348
    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 1349
    return v2

    .line 1353
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1360
    invoke-static/range {p0 .. p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    const/4 v10, 0x1

    const-string v11, "2"

    aput-object v11, v7, v10

    .line 1361
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x2

    aput-object v0, v7, v12

    .line 1362
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x3

    aput-object v0, v7, v13

    const/4 v8, 0x0

    .line 1353
    const-string v6, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1364
    .local v3, "cursor":Landroid/database/Cursor;
    const-string v4, "state"

    const-string v5, "ExtraTelephony"

    if-eqz v3, :cond_77

    .line 1366
    :try_start_4d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1367
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5b} :catch_6b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_69

    .line 1368
    .local v0, "dbState":I
    if-eqz v0, :cond_5f

    if-ne v0, v1, :cond_64

    .line 1369
    :cond_5f
    nop

    .line 1375
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1369
    return v10

    .line 1375
    .end local v0    # "dbState":I
    :cond_64
    nop

    :goto_65
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1376
    goto :goto_77

    .line 1375
    :catchall_69
    move-exception v0

    goto :goto_73

    .line 1372
    :catch_6b
    move-exception v0

    .line 1373
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6c
    const-string v6, "Cursor exception when area check in whiteList: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_69

    .line 1375
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_65

    :goto_73
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1376
    throw v0

    .line 1379
    :cond_77
    :goto_77
    invoke-static/range {p1 .. p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v2, v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v6

    .line 1381
    .local v6, "normalizedNum":Ljava/lang/String;
    const-string v0, ""

    .line 1382
    .local v0, "tmp":Ljava/lang/String;
    const/4 v7, 0x0

    move-object/from16 v20, v3

    move-object v3, v0

    move-object/from16 v0, v20

    .local v0, "cursor":Landroid/database/Cursor;
    .local v3, "tmp":Ljava/lang/String;
    .local v7, "i":I
    :goto_87
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_10d

    .line 1383
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1384
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    new-array v8, v9, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "*"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v11, v8, v10

    .line 1391
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 1392
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x3

    aput-object v9, v8, v13

    const/16 v19, 0x0

    .line 1384
    const-string v17, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    move-object/from16 v18, v8

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1394
    .end local v0    # "cursor":Landroid/database/Cursor;
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_106

    .line 1396
    :try_start_dc
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 1397
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ea} :catch_fa
    .catchall {:try_start_dc .. :try_end_ea} :catchall_f8

    .line 1398
    .local v0, "dbState":I
    if-eqz v0, :cond_ee

    if-ne v0, v1, :cond_f3

    .line 1399
    :cond_ee
    nop

    .line 1405
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1399
    return v10

    .line 1405
    .end local v0    # "dbState":I
    :cond_f3
    nop

    :goto_f4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1406
    goto :goto_106

    .line 1405
    :catchall_f8
    move-exception v0

    goto :goto_102

    .line 1402
    :catch_fa
    move-exception v0

    .line 1403
    .local v0, "e":Ljava/lang/Exception;
    :try_start_fb
    const-string v9, "Cursor exception when prefix check in whiteList: "

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_100
    .catchall {:try_start_fb .. :try_end_100} :catchall_f8

    .line 1405
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_f4

    :goto_102
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1406
    throw v0

    .line 1382
    :cond_106
    :goto_106
    add-int/lit8 v7, v7, 0x1

    move-object v0, v8

    const/4 v9, 0x4

    const/4 v13, 0x3

    goto/16 :goto_87

    .line 1411
    .end local v7    # "i":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_10d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    aput-object v6, v7, v2

    aput-object v11, v7, v10

    .line 1418
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 1419
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const/16 v18, 0x0

    .line 1411
    const-string v16, "number= ? AND type= ? AND sim_id = ? AND sync_dirty <> ? "

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1421
    .end local v0    # "cursor":Landroid/database/Cursor;
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_15e

    .line 1423
    :try_start_134
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 1424
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_142} :catch_152
    .catchall {:try_start_134 .. :try_end_142} :catchall_150

    .line 1425
    .local v0, "dbState":I
    if-eqz v0, :cond_146

    if-ne v0, v1, :cond_14b

    .line 1426
    :cond_146
    nop

    .line 1432
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1426
    return v10

    .line 1432
    .end local v0    # "dbState":I
    :cond_14b
    nop

    :goto_14c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1433
    goto :goto_15e

    .line 1432
    :catchall_150
    move-exception v0

    goto :goto_15a

    .line 1429
    :catch_152
    move-exception v0

    .line 1430
    .local v0, "e":Ljava/lang/Exception;
    :try_start_153
    const-string v4, "Cursor exception when complete check in whiteList: "

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_158
    .catchall {:try_start_153 .. :try_end_158} :catchall_150

    .line 1432
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_14c

    :goto_15a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1433
    throw v0

    .line 1436
    :cond_15e
    :goto_15e
    return v2
.end method

.method public static blacklist isPrefixInBlack(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .line 1191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1192
    return v1

    .line 1195
    :cond_8
    const-string v0, ""

    .line 1196
    .local v0, "tmp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_93

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "*"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v1

    const-string v6, "1"

    const/4 v9, 0x1

    aput-object v6, v7, v9

    const/4 v6, 0x2

    .line 1205
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x3

    .line 1206
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x0

    .line 1198
    const-string v6, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1208
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_8f

    .line 1210
    :try_start_61
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 1211
    const-string v4, "state"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_71} :catch_81
    .catchall {:try_start_61 .. :try_end_71} :catchall_7f

    .line 1212
    .local v4, "dbState":I
    if-eqz v4, :cond_75

    if-ne v4, p2, :cond_7a

    .line 1213
    :cond_75
    nop

    .line 1219
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1213
    return v9

    .line 1219
    .end local v4    # "dbState":I
    :cond_7a
    nop

    :goto_7b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1220
    goto :goto_8f

    .line 1219
    :catchall_7f
    move-exception v1

    goto :goto_8b

    .line 1216
    :catch_81
    move-exception v4

    .line 1217
    .local v4, "e":Ljava/lang/Exception;
    :try_start_82
    const-string v5, "ExtraTelephony"

    const-string v6, "Cursor exception in isPrefixInBlack(): "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_7f

    .line 1219
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_7b

    :goto_8b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1220
    throw v1

    .line 1196
    .end local v3    # "c":Landroid/database/Cursor;
    :cond_8f
    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 1223
    .end local v2    # "i":I
    :cond_93
    return v1
.end method

.method private static blacklist isRelatedNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1669
    const/4 v0, 0x0

    .line 1671
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "number = ? OR normalized_number = ? "

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v9, 0x1

    aput-object p1, v6, v9

    const-string v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 1677
    if-eqz v0, :cond_32

    .line 1678
    :cond_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1679
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_35
    .catchall {:try_start_2 .. :try_end_2b} :catchall_33

    if-ne v2, v8, :cond_21

    .line 1680
    nop

    .line 1687
    invoke-static {v0}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1680
    return v9

    .line 1687
    :cond_32
    goto :goto_3e

    :catchall_33
    move-exception v1

    goto :goto_43

    .line 1684
    :catch_35
    move-exception v2

    .line 1685
    .local v2, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isRelatedNumber(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    .line 1687
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3e
    invoke-static {v0}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1688
    nop

    .line 1689
    return v1

    .line 1687
    :goto_43
    invoke-static {v0}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1688
    throw v1
.end method

.method public static whitelist isServiceNumber(Ljava/lang/String;)Z
    .registers 5
    .param p0, "address"    # Ljava/lang/String;

    .line 2421
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2422
    return v1

    .line 2424
    :cond_8
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 2425
    .local v0, "phoneNumber":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    .line 2426
    return v3

    .line 2427
    :cond_14
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "106"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2428
    return v3

    .line 2430
    :cond_23
    return v1
.end method

.method public static blacklist isTargetServiceNum(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;

    .line 1856
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1859
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1860
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lmiui/provider/ExtraTelephony$Judge;->SERVICE_NUM_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_22

    .line 1865
    .local v3, "result":I
    if-ne v3, v2, :cond_21

    move v1, v2

    :cond_21
    return v1

    .line 1866
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":I
    :catch_22
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ExtraTelephony"

    const-string v3, "Exception when isTargetServiceNum()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1869
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public static blacklist isURLFlagRisky(I)Z
    .registers 3
    .param p0, "blockType"    # I

    .line 1891
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 2104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2105
    const-string v0, ""

    return-object v0

    .line 2108
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2109
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2110
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_4f

    .line 2111
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2114
    .local v3, "c":C
    invoke-static {v0, v3, v2}, Lmiui/provider/ExtraTelephony;->appendNonSeparator(Ljava/lang/StringBuilder;CI)V

    .line 2115
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 2116
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 2117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 2118
    :cond_29
    if-nez v2, :cond_33

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_33

    .line 2119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 2120
    :cond_33
    const/16 v5, 0x61

    if-lt v3, v5, :cond_3b

    const/16 v5, 0x7a

    if-le v3, v5, :cond_43

    :cond_3b
    const/16 v5, 0x41

    if-lt v3, v5, :cond_4c

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_4c

    .line 2121
    :cond_43
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2110
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2124
    .end local v2    # "i":I
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist number2regex(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Ljava/lang/String;

    .line 1520
    const-string v0, "*"

    const-string v1, "[\\s\\S]*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1521
    const-string v1, "#"

    const-string v2, "[\\s\\S]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    const-string v1, "+"

    const-string v2, "\\+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1520
    return-object v0
.end method

.method private static blacklist registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .registers 14
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # I

    .line 2560
    :try_start_0
    const-class v0, Landroid/content/ContentResolver;

    const-string v1, "registerContentObserver"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/database/ContentObserver;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2562
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2563
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p3, v1, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_39

    .line 2566
    nop

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_41

    .line 2564
    :catch_39
    move-exception v0

    .line 2565
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraTelephony"

    const-string v2, "invoke registerContentObserver failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2567
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public static blacklist registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quietListener"    # Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 1988
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_5

    .line 1989
    return-void

    .line 1991
    :cond_5
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1992
    sget-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    if-nez v0, :cond_5d

    .line 1993
    new-instance v0, Lmiui/provider/ExtraTelephony$SilentModeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmiui/provider/ExtraTelephony$SilentModeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 1994
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 1995
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1996
    const-string v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 1995
    invoke-static {v0, v3, v2, v4, v1}, Lmiui/provider/ExtraTelephony;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1998
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1999
    const-string v3, "vibrate_in_silent"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 1998
    invoke-static {v0, v3, v2, v4, v1}, Lmiui/provider/ExtraTelephony;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2001
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2002
    const-string v3, "show_notification"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 2001
    invoke-static {v0, v3, v2, v4, v1}, Lmiui/provider/ExtraTelephony;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_5d

    .line 2005
    :cond_4e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2006
    const-string v3, "quiet_mode_enable"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 2005
    invoke-static {v0, v3, v2, v4, v1}, Lmiui/provider/ExtraTelephony;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2010
    :cond_5d
    :goto_5d
    return-void
.end method

.method public static blacklist sendCallInterceptNotification(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "blockType"    # I
    .param p3, "subId"    # I

    .line 1902
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.FIREWALL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1903
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_sim_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1904
    const-string v1, "notification_intercept_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1905
    const-string v1, "key_block_log_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1906
    const-string v1, "notification_block_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1907
    const-string v1, "notification_show_type"

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2d

    const/4 v3, 0x6

    if-eq p2, v3, :cond_2d

    const/16 v3, 0xd

    if-ne p2, v3, :cond_29

    goto :goto_2d

    .line 1912
    :cond_29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_31

    .line 1910
    :cond_2d
    :goto_2d
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1914
    :goto_31
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1915
    return-void
.end method

.method public static blacklist sendMsgInterceptNotification(Landroid/content/Context;II)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blockType"    # I
    .param p2, "subId"    # I

    .line 1925
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_5

    .line 1926
    return-void

    .line 1928
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.FIREWALL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1929
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_sim_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1930
    const/4 v1, 0x2

    const-string v2, "key_block_log_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1931
    const/4 v1, 0x3

    const-string v2, "notification_show_type"

    if-eq p1, v1, :cond_2d

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2d

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2d

    const/16 v1, 0xc

    if-ne p1, v1, :cond_28

    goto :goto_2d

    .line 1937
    :cond_28
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_31

    .line 1935
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1939
    :goto_31
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1940
    return-void
.end method

.method public static blacklist unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quietListener"    # Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 2017
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2018
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1d

    sget-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    if-eqz v0, :cond_1d

    .line 2019
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2020
    const/4 v0, 0x0

    sput-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 2022
    :cond_1d
    return-void
.end method
