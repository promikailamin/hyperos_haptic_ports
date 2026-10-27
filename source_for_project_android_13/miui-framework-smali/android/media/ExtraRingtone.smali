.class public Landroid/media/ExtraRingtone;
.super Ljava/lang/Object;
.source "ExtraRingtone.java"


# static fields
.field private static final blacklist MEDIA_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "title"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/ExtraRingtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getMiuiString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, "resources":Landroid/content/res/Resources;
    const/4 v1, -0x1

    .line 138
    .local v1, "res":I
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "android.miui"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_19

    move v1, v2

    .line 141
    goto :goto_1a

    .line 139
    :catch_19
    move-exception v2

    .line 142
    :goto_1a
    if-lez v1, :cond_21

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 146
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "res":I
    :cond_21
    return-object p1
.end method

.method public static whitelist getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "formatSystemRingtone"    # Z

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_9

    .line 35
    invoke-static {p0, p1, p2}, Landroid/media/ExtraRingtone;->getRingtoneTitleMIUI(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 36
    :cond_9
    invoke-static {p0, p1}, Landroid/media/ExtraRingtone;->getRingtoneTitleAndroid(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_d
    return-object v0
.end method

.method private static blacklist getRingtoneTitleAndroid(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 150
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 151
    .local v0, "r":Landroid/media/Ringtone;
    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 153
    .local v1, "title":Ljava/lang/String;
    :goto_c
    if-nez v1, :cond_25

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ringtone_unknown"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, "resId":I
    if-lez v2, :cond_23

    .line 156
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    .line 158
    :cond_23
    const-string v1, ""

    .line 161
    .end local v2    # "resId":I
    :cond_25
    :goto_25
    return-object v1
.end method

.method private static blacklist getRingtoneTitleMIUI(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "formatSystemRingtone"    # Z

    .line 40
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/media/ExtraRingtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "title":Ljava/lang/String;
    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 42
    const v2, 0x110f0029

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_21
    return-object v1
.end method

.method public static whitelist getSystemLocalizationFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "/system/media/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 127
    const-string v0, "/product/media/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 128
    :cond_16
    invoke-static {p1}, Lmiui/util/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/ExtraRingtone;->getMiuiString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 53
    .local v7, "res":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 55
    .local v8, "title":Ljava/lang/String;
    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_91

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "authority":Ljava/lang/String;
    const-string v1, "settings"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 59
    if-eqz p2, :cond_91

    .line 60
    nop

    .line 61
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v1

    .line 60
    invoke-static {p0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, "actualUri":Landroid/net/Uri;
    invoke-static {p0, v1, v10}, Landroid/media/ExtraRingtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 65
    .end local v1    # "actualUri":Landroid/net/Uri;
    :cond_26
    const/4 v12, 0x0

    .line 68
    .local v12, "fromDataBase":Z
    const-string v1, "media"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 69
    sget-object v3, Landroid/media/ExtraRingtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 70
    const/4 v12, 0x1

    .line 74
    :cond_3b
    const-string v1, ""

    if-eqz v0, :cond_60

    :try_start_3f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_60

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 77
    invoke-static {p1}, Landroid/media/ExtraRingtone;->isSystemCustRingtone(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 78
    invoke-static {p0, v8}, Landroid/media/ExtraRingtone;->getMiuiString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 80
    :cond_5a
    if-nez v8, :cond_85

    .line 81
    move-object v8, v1

    .end local v8    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    goto :goto_85

    .line 99
    .end local v1    # "title":Ljava/lang/String;
    .restart local v8    # "title":Ljava/lang/String;
    :catchall_5e
    move-exception v1

    goto :goto_8b

    .line 83
    :cond_60
    if-eqz v12, :cond_64

    .line 84
    move-object v8, v1

    .end local v8    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_85

    .line 86
    .end local v1    # "title":Ljava/lang/String;
    .restart local v8    # "title":Ljava/lang/String;
    :cond_64
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/media/ExtraRingtone;->getSystemLocalizationFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 87
    if-nez v8, :cond_85

    .line 88
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 92
    if-eqz v8, :cond_7d

    const-string v1, "_&_"

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_7e

    :cond_7d
    move v1, v9

    .line 93
    .local v1, "sepIndex":I
    :goto_7e
    if-lez v1, :cond_85

    .line 94
    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_84
    .catchall {:try_start_3f .. :try_end_84} :catchall_5e

    move-object v8, v2

    .line 99
    .end local v1    # "sepIndex":I
    :cond_85
    :goto_85
    if-eqz v0, :cond_91

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_91

    .line 99
    :goto_8b
    if-eqz v0, :cond_90

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_90
    throw v1

    .line 106
    .end local v11    # "authority":Ljava/lang/String;
    .end local v12    # "fromDataBase":Z
    :cond_91
    :goto_91
    if-nez v8, :cond_9b

    .line 107
    const v1, 0x110f002a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v8    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    goto :goto_b8

    .line 108
    .end local v1    # "title":Ljava/lang/String;
    .restart local v8    # "title":Ljava/lang/String;
    :cond_9b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a9

    .line 109
    const v1, 0x110f002b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v8    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_b8

    .line 111
    .end local v1    # "title":Ljava/lang/String;
    .restart local v8    # "title":Ljava/lang/String;
    :cond_a9
    const-string v1, "."

    invoke-virtual {v8, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "index":I
    if-ne v1, v9, :cond_b3

    move-object v2, v8

    goto :goto_b7

    :cond_b3
    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_b7
    move-object v1, v2

    .line 114
    .end local v8    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    :goto_b8
    return-object v1
.end method

.method private static blacklist isSystemCustRingtone(Landroid/net/Uri;)Z
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 118
    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 119
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "/internal/audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    .line 122
    .end local v1    # "path":Ljava/lang/String;
    :cond_17
    return v0
.end method
