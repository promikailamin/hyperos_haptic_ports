.class public Landroid/os/updater/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Landroid/os/updater/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/updater/HttpUtils;->TAG:Ljava/lang/String;

    .line 45
    invoke-static {}, Landroid/os/updater/CheckerUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Landroid/os/updater/HttpUtils;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addCommonAndHeader(Ljava/net/HttpURLConnection;Ljava/util/HashMap;)V
    .registers 5
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 85
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 91
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 93
    if-eqz p1, :cond_35

    .line 94
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_1f

    .line 98
    :cond_35
    return-void
.end method

.method private static blacklist decodeData(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9
    .param p0, "security"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 128
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_22
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    goto :goto_11

    .line 134
    .end local v3    # "line":Ljava/lang/String;
    :cond_1c
    :goto_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 135
    goto :goto_27

    .line 134
    :catchall_20
    move-exception v2

    goto :goto_59

    .line 131
    :catch_22
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/IOException;
    :try_start_23
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1c

    .line 137
    :goto_27
    sget-boolean v2, Landroid/os/updater/HttpUtils;->DEBUG:Z

    if-eqz v2, :cond_34

    .line 138
    sget-object v2, Landroid/os/updater/HttpUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_34
    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/os/updater/HttpUtils;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 144
    .local v3, "decoder":Ljavax/crypto/Cipher;
    const/4 v4, 0x0

    .line 146
    .local v4, "result":Ljava/lang/String;
    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 147
    .local v2, "data":[B
    if-eqz v2, :cond_50

    .line 148
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 149
    .local v5, "decoded":[B
    if-eqz v5, :cond_50

    .line 150
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_4f} :catch_52

    move-object v4, v6

    .line 155
    .end local v2    # "data":[B
    .end local v5    # "decoded":[B
    :cond_50
    nop

    .line 157
    return-object v4

    .line 153
    :catch_52
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 134
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "decoder":Ljavax/crypto/Cipher;
    .end local v4    # "result":Ljava/lang/String;
    :goto_59
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 135
    throw v2
.end method

.method public static whitelist decodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "security"    # Ljava/lang/String;
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/updater/HttpUtils;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 164
    .local v1, "decoder":Ljavax/crypto/Cipher;
    const/4 v2, 0x0

    .line 166
    .local v2, "result":Ljava/lang/String;
    :try_start_6
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 167
    .local v0, "data":[B
    if-eqz v0, :cond_18

    .line 168
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 169
    .local v3, "decoded":[B
    if-eqz v3, :cond_18

    .line 170
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_17} :catch_3c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_17} :catch_1e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_17} :catch_19

    move-object v2, v4

    .line 179
    .end local v0    # "data":[B
    .end local v3    # "decoded":[B
    :cond_18
    :goto_18
    goto :goto_23

    .line 177
    :catch_19
    move-exception v0

    .line 178
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_23

    .line 175
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1e
    move-exception v0

    .line 176
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    goto :goto_18

    .line 181
    :goto_23
    sget-object v0, Landroid/os/updater/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-object v2

    .line 173
    :catch_3c
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method public static whitelist encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "security"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/updater/HttpUtils;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 189
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x0

    .line 191
    .local v1, "result":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 192
    .local v2, "encoded":[B
    if-eqz v2, :cond_16

    .line 193
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_17

    move-object v1, v3

    .line 197
    .end local v2    # "encoded":[B
    :cond_16
    goto :goto_18

    .line 195
    :catch_17
    move-exception v2

    .line 198
    :goto_18
    return-object v1
.end method

.method private static blacklist handlePostRequest(Ljava/lang/String;Ljava/util/HashMap;Landroid/util/ArrayMap;)Ljava/net/HttpURLConnection;
    .registers 12
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    .local p1, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "serverUrl":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 221
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 223
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 225
    invoke-static {v1, p1}, Landroid/os/updater/HttpUtils;->addCommonAndHeader(Ljava/net/HttpURLConnection;Ljava/util/HashMap;)V

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v3, "queryString":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_52

    .line 229
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 230
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 231
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_26

    .line 234
    :cond_52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_a3

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_69
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_7d
    .catchall {:try_start_69 .. :try_end_7d} :catchall_8e

    .line 243
    nop

    .line 244
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 245
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_88} :catch_89

    .line 249
    goto :goto_a3

    .line 247
    :catch_89
    move-exception v4

    .line 248
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_a3

    .line 242
    :catchall_8e
    move-exception v4

    .line 243
    if-eqz v2, :cond_a1

    .line 244
    :try_start_91
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 245
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9b} :catch_9c

    goto :goto_a1

    .line 247
    :catch_9c
    move-exception v5

    .line 248
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a2

    .line 249
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a1
    :goto_a1
    nop

    .line 250
    :goto_a2
    throw v4

    .line 252
    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    :cond_a3
    :goto_a3
    return-object v1
.end method

.method public static whitelist httpPost(Ljava/lang/String;Ljava/util/HashMap;Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "secURLty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    .local p1, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroid/os/updater/HttpUtils;->handlePostRequest(Ljava/lang/String;Ljava/util/HashMap;Landroid/util/ArrayMap;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 207
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 208
    invoke-static {v0}, Landroid/os/updater/HttpUtils;->httpResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .local v1, "ret":Ljava/lang/String;
    goto :goto_13

    .line 210
    .end local v1    # "ret":Ljava/lang/String;
    :cond_f
    invoke-static {v0, p3}, Landroid/os/updater/HttpUtils;->httpResponseWithDecodeData(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .restart local v1    # "ret":Ljava/lang/String;
    :goto_13
    return-object v1
.end method

.method private static blacklist httpResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 7
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "lineReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 51
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 52
    .local v1, "serverResponse":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4a

    .line 53
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 54
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x800

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v2, "romBuf":Ljava/lang/StringBuilder;
    :goto_22
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "romLine":Ljava/lang/String;
    if-eqz v3, :cond_2d

    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 61
    :cond_2d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_62

    .line 65
    nop

    .line 67
    :try_start_35
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 70
    goto :goto_3d

    .line 68
    :catch_39
    move-exception v5

    .line 69
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3d
    if-eqz p0, :cond_49

    .line 73
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 74
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 62
    :cond_49
    return-object v3

    .line 65
    .end local v1    # "serverResponse":I
    .end local v2    # "romBuf":Ljava/lang/StringBuilder;
    .end local v4    # "romLine":Ljava/lang/String;
    :cond_4a
    if-eqz v0, :cond_54

    .line 67
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 70
    goto :goto_54

    .line 68
    :catch_50
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    .end local v1    # "e":Ljava/io/IOException;
    :cond_54
    :goto_54
    if-eqz p0, :cond_60

    .line 73
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 74
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 77
    :cond_60
    const/4 v1, 0x0

    return-object v1

    .line 65
    :catchall_62
    move-exception v1

    if-eqz v0, :cond_6d

    .line 67
    :try_start_65
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 70
    goto :goto_6d

    .line 68
    :catch_69
    move-exception v2

    .line 69
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6d
    :goto_6d
    if-eqz p0, :cond_79

    .line 73
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 74
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    :cond_79
    throw v1
.end method

.method private static blacklist httpResponseWithDecodeData(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "secURLty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 104
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 105
    .local v0, "serverResponse":I
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_20

    .line 106
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/os/updater/HttpUtils;->decodeData(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_13} :catch_2c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_13} :catch_25
    .catchall {:try_start_0 .. :try_end_13} :catchall_23

    .line 113
    if-eqz p0, :cond_1f

    .line 114
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 115
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 106
    :cond_1f
    return-object v1

    .line 113
    .end local v0    # "serverResponse":I
    :cond_20
    if-eqz p0, :cond_3c

    .line 114
    goto :goto_32

    .line 113
    :catchall_23
    move-exception v0

    goto :goto_3e

    .line 110
    :catch_25
    move-exception v0

    .line 111
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    :try_start_26
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    if-eqz p0, :cond_3c

    .line 114
    goto :goto_32

    .line 108
    :catch_2c
    move-exception v0

    .line 109
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_23

    .line 113
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    if-eqz p0, :cond_3c

    .line 114
    :goto_32
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 115
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 118
    :cond_3c
    const/4 v0, 0x0

    return-object v0

    .line 113
    :goto_3e
    if-eqz p0, :cond_4a

    .line 114
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 115
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 117
    :cond_4a
    throw v0
.end method

.method public static whitelist newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .registers 3
    .param p0, "aesKey"    # Ljava/lang/String;
    .param p1, "opMode"    # I

    .line 257
    const-string v0, "0102030405060708"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/os/updater/HttpUtils;->newAESCipherWithIV(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newAESCipherWithIV(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;
    .registers 7
    .param p0, "aesKey"    # Ljava/lang/String;
    .param p1, "opMode"    # I
    .param p2, "initialVector"    # [B

    .line 261
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 262
    .local v0, "keyRaw":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 265
    .local v1, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_c
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 266
    .local v2, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 267
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v2, p1, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_1a} :catch_2a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_1a} :catch_25
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_1a} :catch_20
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_1a} :catch_1b

    .line 268
    return-object v2

    .line 275
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :catch_1b
    move-exception v2

    .line 276
    .local v2, "var10":Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_2f

    .line 273
    .end local v2    # "var10":Ljava/security/InvalidKeyException;
    :catch_20
    move-exception v2

    .line 274
    .local v2, "var9":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    .end local v2    # "var9":Ljava/security/InvalidAlgorithmParameterException;
    goto :goto_2e

    .line 271
    :catch_25
    move-exception v2

    .line 272
    .local v2, "var8":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .end local v2    # "var8":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_2e

    .line 269
    :catch_2a
    move-exception v2

    .line 270
    .local v2, "var7":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 277
    .end local v2    # "var7":Ljava/security/NoSuchAlgorithmException;
    :goto_2e
    nop

    .line 279
    :goto_2f
    const/4 v2, 0x0

    return-object v2
.end method
