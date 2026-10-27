.class public Lmiui/telephony/phonenumber/ChineseTelocationConverter;
.super Ljava/lang/Object;
.source "ChineseTelocationConverter.java"


# static fields
.field public static final whitelist AREACODE_INDEX:I = 0x1

.field public static final whitelist LOCATION_INDEX:I = 0x0

.field public static final whitelist LOCATION_KIND:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ChineseTelocation"

.field public static final whitelist TELOCATION_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist UNIQUE_ID_NONE:I

.field private static blacklist sInstance:Lmiui/telephony/phonenumber/ChineseTelocationConverter;


# instance fields
.field private blacklist context:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-direct {v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    .line 20
    const-string v0, "content://com.miui.core.telocation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private blacklist checkContext()V
    .registers 2

    .line 31
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 32
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    .line 34
    :cond_a
    return-void
.end method

.method public static whitelist getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;
    .registers 1

    .line 27
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    return-object v0
.end method


# virtual methods
.method public whitelist getAreaCode(Landroid/location/Address;)Ljava/lang/String;
    .registers 13
    .param p1, "address"    # Landroid/location/Address;

    .line 239
    if-nez p1, :cond_5

    .line 240
    const-string v0, ""

    return-object v0

    .line 242
    :cond_5
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    .line 243
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "adminArea":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "locality":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminArea:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " locality:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChineseTelocation"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v2, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    .line 248
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 249
    const-string v3, "query_area_code_by_address"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 250
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adminArea"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 251
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "locality"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 253
    .local v2, "uri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 254
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v10, ""

    .line 256
    .local v10, "areaCode":Ljava/lang/String;
    :try_start_59
    iget-object v3, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v9, v3

    .line 257
    if-eqz v9, :cond_77

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 258
    const/4 v3, 0x7

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_76} :catch_85
    .catchall {:try_start_59 .. :try_end_76} :catchall_83

    move-object v10, v3

    .line 263
    :cond_77
    if-eqz v9, :cond_92

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_92

    .line 264
    :goto_7f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_92

    .line 263
    :catchall_83
    move-exception v3

    goto :goto_93

    .line 260
    :catch_85
    move-exception v3

    .line 261
    .local v3, "e":Ljava/lang/Exception;
    :try_start_86
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_83

    .line 263
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_92

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_92

    .line 264
    goto :goto_7f

    .line 267
    :cond_92
    :goto_92
    return-object v10

    .line 263
    :goto_93
    if-eqz v9, :cond_9e

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 264
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_9e
    throw v3
.end method

.method public whitelist getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 13
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 119
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    .line 120
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    .line 121
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 122
    const-string v1, "query_area_code"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 124
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 125
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 129
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v8, ""

    .line 131
    .local v8, "areaCode":Ljava/lang/String;
    :try_start_34
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    .line 132
    if-eqz v7, :cond_52

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 133
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_51} :catch_60
    .catchall {:try_start_34 .. :try_end_51} :catchall_5e

    move-object v8, v1

    .line 138
    :cond_52
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 139
    :goto_5a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    .line 138
    :catchall_5e
    move-exception v1

    goto :goto_6e

    .line 135
    :catch_60
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    :try_start_61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 139
    goto :goto_5a

    .line 142
    :cond_6d
    :goto_6d
    return-object v8

    .line 138
    :goto_6e
    if-eqz v7, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_79

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_79
    throw v1
.end method

.method public whitelist getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .registers 14
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "withAreaCode"    # Z

    .line 91
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    .line 92
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 94
    const-string v1, "query_location"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 96
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 97
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 98
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "with_area_code"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 102
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v8, ""

    .line 104
    .local v8, "location":Ljava/lang/String;
    :try_start_3e
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    .line 105
    if-eqz v7, :cond_5c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 106
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5b} :catch_6a
    .catchall {:try_start_3e .. :try_end_5b} :catchall_68

    move-object v8, v1

    .line 111
    :cond_5c
    if-eqz v7, :cond_77

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_77

    .line 112
    :goto_64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_77

    .line 111
    :catchall_68
    move-exception v1

    goto :goto_78

    .line 108
    :catch_6a
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_68

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_77

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_77

    .line 112
    goto :goto_64

    .line 115
    :cond_77
    :goto_77
    return-object v8

    .line 111
    :goto_78
    if-eqz v7, :cond_83

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_83

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_83
    throw v1
.end method

.method public whitelist getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 13
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 180
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    .line 181
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    .line 182
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 183
    const-string v1, "query_operator"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 184
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 185
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 186
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 189
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 190
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v8, ""

    .line 192
    .local v8, "operator":Ljava/lang/String;
    :try_start_34
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    .line 193
    if-eqz v7, :cond_52

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 194
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_51} :catch_60
    .catchall {:try_start_34 .. :try_end_51} :catchall_5e

    move-object v8, v1

    .line 199
    :cond_52
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 200
    :goto_5a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    .line 199
    :catchall_5e
    move-exception v1

    goto :goto_6e

    .line 196
    :catch_60
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    :try_start_61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 200
    goto :goto_5a

    .line 203
    :cond_6d
    :goto_6d
    return-object v8

    .line 199
    :goto_6e
    if-eqz v7, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_79

    .line 200
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_79
    throw v1
.end method

.method public whitelist getUniqId(Ljava/lang/CharSequence;IIZ)I
    .registers 14
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "enableMobile"    # Z

    .line 60
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    .line 61
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 63
    const-string v1, "query_uniq_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 65
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 66
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 67
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable_mobile"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 70
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 73
    .local v8, "uniqId":I
    :try_start_3d
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    .line 74
    if-eqz v7, :cond_69

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 75
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_68} :catch_77
    .catchall {:try_start_3d .. :try_end_68} :catchall_75

    move v8, v2

    .line 83
    .end local v1    # "result":Ljava/lang/String;
    :cond_69
    if-eqz v7, :cond_84

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_84

    .line 84
    :goto_71
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_84

    .line 83
    :catchall_75
    move-exception v1

    goto :goto_85

    .line 80
    :catch_77
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    :try_start_78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_75

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_84

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_84

    .line 84
    goto :goto_71

    .line 87
    :cond_84
    :goto_84
    return v8

    .line 83
    :goto_85
    if-eqz v7, :cond_90

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_90

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_90
    throw v1
.end method

.method public whitelist getVersion()I
    .registers 10

    .line 207
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    .line 208
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    .line 209
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 210
    const-string v1, "query_version"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 213
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 214
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 216
    .local v8, "version":I
    :try_start_15
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    .line 217
    if-eqz v7, :cond_41

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 218
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_4f
    .catchall {:try_start_15 .. :try_end_40} :catchall_4d

    move v8, v2

    .line 226
    .end local v1    # "result":Ljava/lang/String;
    :cond_41
    if-eqz v7, :cond_5c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 227
    :goto_49
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    .line 226
    :catchall_4d
    move-exception v1

    goto :goto_5d

    .line 223
    :catch_4f
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    :try_start_50
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    .line 226
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_5c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 227
    goto :goto_49

    .line 230
    :cond_5c
    :goto_5c
    return v8

    .line 226
    :goto_5d
    if-eqz v7, :cond_68

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_68

    .line 227
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_68
    throw v1
.end method

.method public whitelist parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 13
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 146
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    .line 147
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    .line 148
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 149
    const-string v1, "parse_area_code"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 151
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 152
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 155
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 156
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v8, ""

    .line 158
    .local v8, "areaCode":Ljava/lang/String;
    :try_start_34
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    .line 159
    if-eqz v7, :cond_52

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 160
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_51} :catch_60
    .catchall {:try_start_34 .. :try_end_51} :catchall_5e

    move-object v8, v1

    .line 165
    :cond_52
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 166
    :goto_5a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    .line 165
    :catchall_5e
    move-exception v1

    goto :goto_6e

    .line 162
    :catch_60
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    :try_start_61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 166
    goto :goto_5a

    .line 169
    :cond_6d
    :goto_6d
    return-object v8

    .line 165
    :goto_6e
    if-eqz v7, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_79

    .line 166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_79
    throw v1
.end method

.method public whitelist reloadInstance()V
    .registers 9

    .line 41
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    .line 42
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    .line 43
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 44
    const-string v1, "reload"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 47
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 49
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_14
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_2c
    .catchall {:try_start_14 .. :try_end_23} :catchall_2a

    move-object v7, v1

    .line 53
    if-eqz v7, :cond_33

    .line 54
    :goto_26
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 53
    :catchall_2a
    move-exception v1

    goto :goto_34

    .line 50
    :catch_2c
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_33

    .line 54
    goto :goto_26

    .line 57
    :cond_33
    :goto_33
    return-void

    .line 53
    :goto_34
    if-eqz v7, :cond_39

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_39
    throw v1
.end method
