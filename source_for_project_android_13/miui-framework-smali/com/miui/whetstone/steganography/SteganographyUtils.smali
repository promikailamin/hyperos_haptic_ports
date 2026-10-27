.class public Lcom/miui/whetstone/steganography/SteganographyUtils;
.super Ljava/lang/Object;
.source "SteganographyUtils.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-string v0, "Whet_SteganographyUtils"

    sput-object v0, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist decodeWatermark(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "ret":Ljava/lang/String;
    if-nez p0, :cond_4

    .line 113
    return-object v0

    .line 117
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/whetstone/steganography/Steg;->decode()Lcom/miui/whetstone/steganography/DecodedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/whetstone/steganography/DecodedObject;->intoString()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_12

    move-object v0, v1

    .line 120
    goto :goto_2f

    .line 118
    :catch_12
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2f
    return-object v0
.end method

.method public static blacklist decodeWatermark(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .param p0, "bmpFile"    # Ljava/io/File;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "ret":Ljava/lang/String;
    if-nez p0, :cond_4

    .line 127
    return-object v0

    .line 131
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/whetstone/steganography/Steg;->decode()Lcom/miui/whetstone/steganography/DecodedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/whetstone/steganography/DecodedObject;->intoString()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_12

    move-object v0, v1

    .line 134
    goto :goto_2f

    .line 132
    :catch_12
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2f
    return-object v0
.end method

.method public static blacklist decodeWatermark(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "bmpPath"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "ret":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 141
    return-object v0

    .line 145
    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/whetstone/steganography/Steg;->decode()Lcom/miui/whetstone/steganography/DecodedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/whetstone/steganography/DecodedObject;->intoString()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    move-object v0, v1

    .line 148
    goto :goto_33

    .line 146
    :catch_16
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_33
    return-object v0
.end method

.method public static blacklist encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "watermark"    # Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "ret":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_36

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_36

    .line 19
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    move-object v0, v1

    .line 22
    goto :goto_35

    .line 20
    :catch_18
    move-exception v1

    .line 21
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_35
    return-object v0

    .line 15
    :cond_36
    :goto_36
    return-object v0
.end method

.method public static blacklist encodeWatermark(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "bmpFile"    # Ljava/io/File;
    .param p1, "watermark"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "ret":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_36

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_36

    .line 47
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    move-object v0, v1

    .line 50
    goto :goto_35

    .line 48
    :catch_18
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_35
    return-object v0

    .line 43
    :cond_36
    :goto_36
    return-object v0
.end method

.method public static blacklist encodeWatermark(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "bmpPath"    # Ljava/lang/String;
    .param p1, "watermark"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "ret":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3a

    .line 33
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1c

    move-object v0, v1

    .line 36
    goto :goto_39

    .line 34
    :catch_1c
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_39
    return-object v0

    .line 29
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public static blacklist encodeWatermark(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "desBmpFile"    # Ljava/io/File;
    .param p2, "watermark"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "ret":Ljava/io/File;
    if-eqz p0, :cond_38

    if-eqz p1, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_38

    .line 75
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1a

    move-object v0, v1

    .line 78
    goto :goto_37

    .line 76
    :catch_1a
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    return-object v0

    .line 71
    :cond_38
    :goto_38
    return-object v0
.end method

.method public static blacklist encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "desBmpPath"    # Ljava/lang/String;
    .param p2, "watermark"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "ret":Ljava/io/File;
    if-eqz p0, :cond_38

    if-eqz p1, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_38

    .line 103
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1a

    move-object v0, v1

    .line 106
    goto :goto_37

    .line 104
    :catch_1a
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    return-object v0

    .line 99
    :cond_38
    :goto_38
    return-object v0
.end method

.method public static blacklist encodeWatermark(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "srcBmpFile"    # Ljava/io/File;
    .param p1, "desBmpFile"    # Ljava/io/File;
    .param p2, "watermark"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "ret":Ljava/io/File;
    if-eqz p0, :cond_38

    if-eqz p1, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_38

    .line 61
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1a

    move-object v0, v1

    .line 64
    goto :goto_37

    .line 62
    :catch_1a
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    return-object v0

    .line 57
    :cond_38
    :goto_38
    return-object v0
.end method

.method public static blacklist encodeWatermark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "srcBmpPath"    # Ljava/lang/String;
    .param p1, "desBmpPath"    # Ljava/lang/String;
    .param p2, "watermark"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "ret":Ljava/io/File;
    if-eqz p0, :cond_38

    if-eqz p1, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_38

    .line 89
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1a

    move-object v0, v1

    .line 92
    goto :goto_37

    .line 90
    :catch_1a
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    return-object v0

    .line 85
    :cond_38
    :goto_38
    return-object v0
.end method
