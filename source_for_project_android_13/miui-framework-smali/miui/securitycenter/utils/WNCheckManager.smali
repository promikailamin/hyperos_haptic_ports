.class public Lmiui/securitycenter/utils/WNCheckManager;
.super Ljava/lang/Object;
.source "WNCheckManager.java"


# static fields
.field public static final blacklist ACTION_WN_CHECK_RESULT:Ljava/lang/String; = "miui.intent.action.wn.check.result"

.field private static final blacklist KEY_CALLBACK:Ljava/lang/String; = "callback"

.field public static final blacklist KEY_CONTENT:Ljava/lang/String; = "key_content"

.field public static final blacklist KEY_HAS_QUES:Ljava/lang/String; = "key_has_ques"

.field public static final blacklist KEY_IS_CACHE:Ljava/lang/String; = "key_is_cache"

.field private static final blacklist KEY_META_DATA_WN_CHECKER:Ljava/lang/String; = "miui.supportWNChecker"

.field public static final blacklist KEY_STATE:Ljava/lang/String; = "key_state"

.field public static final blacklist KEY_TYPE:Ljava/lang/String; = "key_type"

.field private static final blacklist METHOD_WN_CHECKER_CACHE:I = 0x0

.field private static final blacklist METHOD_WN_CHECKER_NETWORK:I = 0x1

.field private static final blacklist METHOD_WN_CHECKER_SCHEDULE:I = 0x2

.field public static final blacklist RESULT_TYPE_FAILED:I = -0x1

.field public static final blacklist RESULT_TYPE_NOT_ALLOWED_NETWORK:I = -0x3

.field public static final blacklist RESULT_TYPE_NO_NETWORK:I = -0x2

.field public static final blacklist RESULT_TYPE_SUCCESS:I = 0x0

.field public static final blacklist TAG:Ljava/lang/String; = "WNCheckManager"

.field public static final blacklist TYPE_BLUETOOTH:I = 0x1

.field public static final blacklist TYPE_BLUETOOTH_HEADSET:I = 0x5

.field public static final blacklist TYPE_DEVICE:I = 0x4

.field public static final blacklist TYPE_P2P:I = 0x2

.field public static final blacklist TYPE_P2P1:I = 0x3

.field public static final blacklist TYPE_WIFI:I = 0x0

.field private static final blacklist URI_WN_CHECKER:Ljava/lang/String; = "content://com.lbe.security.miui.wnmgr"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getASyncBundle(ILjava/lang/String;Landroid/os/Handler;)Landroid/os/Bundle;
    .registers 6
    .param p0, "type"    # I
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "key_content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "key_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 103
    .local v1, "messenger":Landroid/os/Messenger;
    const-string v2, "callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    return-object v0
.end method

.method public static blacklist getCheckResultASync(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 73
    invoke-static {p0}, Lmiui/securitycenter/utils/WNCheckManager;->supportWNChecker(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "WNCheckManager"

    if-nez v0, :cond_11

    .line 74
    const-string v0, "not support wn check"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p3}, Lmiui/securitycenter/utils/WNCheckManager;->sendFailStateMessage(Landroid/os/Handler;)V

    .line 76
    return-void

    .line 78
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1, p2, p3}, Lmiui/securitycenter/utils/WNCheckManager;->getASyncBundle(ILjava/lang/String;Landroid/os/Handler;)Landroid/os/Bundle;

    move-result-object v2

    .line 82
    .local v2, "bundle":Landroid/os/Bundle;
    :try_start_19
    const-string v3, "content://com.lbe.security.miui.wnmgr"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_29

    .line 85
    goto :goto_2f

    .line 83
    :catch_29
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "resolver call error"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method public static blacklist getCheckResultSchedule(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    invoke-static {p0}, Lmiui/securitycenter/utils/WNCheckManager;->supportWNChecker(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 109
    return v1

    .line 111
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_c
    const-string v2, "content://com.lbe.security.miui.wnmgr"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1d

    .line 114
    const/4 v1, 0x1

    return v1

    .line 115
    :catch_1d
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "WNCheckManager"

    const-string v4, "resolver call error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public static blacklist getCheckResultSync(Landroid/content/Context;ILjava/lang/String;)[Ljava/lang/Object;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 135
    .local v0, "result":[Ljava/lang/Object;
    invoke-static {p0}, Lmiui/securitycenter/utils/WNCheckManager;->supportWNChecker(Landroid/content/Context;)Z

    move-result v2

    const-string v5, "WNCheckManager"

    if-nez v2, :cond_20

    .line 136
    const-string v1, "not support wn check"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v0

    .line 139
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 140
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "key_content"

    invoke-virtual {v6, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v7, "key_type"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    :try_start_33
    const-string v7, "content://com.lbe.security.miui.wnmgr"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 146
    .local v7, "resultBundle":Landroid/os/Bundle;
    const-string v8, "key_state"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 147
    const-string v1, "key_has_ques"

    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5a} :catch_5b

    .line 150
    .end local v7    # "resultBundle":Landroid/os/Bundle;
    goto :goto_61

    .line 148
    :catch_5b
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "resolver call error"

    invoke-static {v5, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_61
    return-object v0
.end method

.method private static blacklist sendFailStateMessage(Landroid/os/Handler;)V
    .registers 5
    .param p0, "handler"    # Landroid/os/Handler;

    .line 89
    if-eqz p0, :cond_17

    .line 90
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 91
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, -0x1

    const-string v3, "key_state"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_17
    return-void
.end method

.method public static blacklist supportWNChecker(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.lbe.security.miui"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-object v0, v1

    .line 56
    goto :goto_13

    .line 54
    :catch_f
    move-exception v1

    .line 55
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 57
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_13
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2c

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_21

    goto :goto_2c

    .line 60
    :cond_21
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "miui.supportWNChecker"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 58
    :cond_2c
    :goto_2c
    return v1
.end method
