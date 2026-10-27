.class public Lmiui/util/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field public static final blacklist CMWAP_GATEWAY:Ljava/lang/String; = "10.0.0.172"

.field public static final blacklist CMWAP_HEADER_HOST_KEY:Ljava/lang/String; = "X-Online-Host"

.field public static final blacklist CONNECTION_TIMEOUT:I = 0x2710

.field private static final blacklist LogTag:Ljava/lang/String;

.field private static final blacklist MIUI_DATA_DIRECTORY:Ljava/io/File;

.field public static final blacklist OPERATOR_TYPE_FILE_NAME:Ljava/lang/String; = "ot"

.field public static final blacklist READ_TIMEOUT:I = 0x3a98

.field public static final blacklist RESPONSE_BODY:Ljava/lang/String; = "RESPONSE_BODY"

.field public static final blacklist RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    const-class v0, Lmiui/util/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/Network;->LogTag:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/Network;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist doHttpPostWithResponseStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postJson"    # Ljava/lang/String;

    .line 64
    if-eqz p0, :cond_1c

    .line 67
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v0, "result":Lorg/json/JSONObject;
    return-object v0

    .line 68
    .end local v0    # "result":Lorg/json/JSONObject;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;
    .registers 4
    .param p0, "oriUrl"    # Ljava/net/URL;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "gatewayBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10.0.0.172"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 144
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getOperatorType()Ljava/lang/String;
    .registers 5

    .line 166
    const-string v0, ""

    .line 167
    .local v0, "ot":Ljava/lang/String;
    const/4 v1, 0x0

    .line 169
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v2, Ljava/io/File;

    sget-object v3, Lmiui/util/Network;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    const-string v4, "ot"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v2, "otf":Ljava/io/File;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 171
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_2c
    .catchall {:try_start_3 .. :try_end_1b} :catchall_23

    move-object v0, v3

    .line 174
    .end local v2    # "otf":Ljava/io/File;
    nop

    .line 176
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 178
    :goto_20
    goto :goto_33

    .line 177
    :catch_21
    move-exception v2

    goto :goto_20

    .line 174
    :catchall_23
    move-exception v2

    if-eqz v1, :cond_2b

    .line 176
    :try_start_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 178
    goto :goto_2b

    .line 177
    :catch_2a
    move-exception v3

    .line 180
    :cond_2b
    :goto_2b
    throw v2

    .line 172
    :catch_2c
    move-exception v2

    .line 174
    if-eqz v1, :cond_33

    .line 176
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_21

    goto :goto_20

    .line 181
    :cond_33
    :goto_33
    return-object v0
.end method

.method public static blacklist isCmwap(Landroid/content/Context;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    nop

    .line 123
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 124
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "countryISO":Ljava/lang/String;
    const-string v2, "CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_17

    return v3

    .line 127
    :cond_17
    nop

    .line 128
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 129
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 130
    .local v4, "info":Landroid/net/NetworkInfo;
    if-nez v4, :cond_27

    return v3

    .line 132
    :cond_27
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, "extraInfo":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_53

    const-string v5, "ctwap"

    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_53

    .line 136
    :cond_41
    const/4 v3, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v7, v5, -0x3

    const/4 v9, 0x0

    const/4 v10, 0x3

    const-string v8, "wap"

    move-object v5, v11

    move v6, v3

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    return v3

    .line 134
    :cond_53
    :goto_53
    return v3
.end method

.method public static blacklist isNetworkConnected(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 150
    if-eqz p0, :cond_16

    .line 151
    nop

    .line 152
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 154
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    .line 155
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    return v2

    .line 158
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method
