.class public final Landroid/graphics/fonts/Font$Builder;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mException:Ljava/io/IOException;

.field private blacklist mFile:Ljava/io/File;

.field private blacklist mFont:Landroid/graphics/fonts/Font;

.field private blacklist mItalic:I

.field private blacklist mLocaleList:Ljava/lang/String;

.field private blacklist mTtcIndex:I

.field private blacklist mWeight:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 186
    const/4 v1, 0x1

    :try_start_13
    invoke-static {p1, p2, v1, v0}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1a

    .line 189
    goto :goto_1d

    .line 187
    :catch_1a
    move-exception p1

    .line 188
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 190
    :goto_1d
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .registers 6

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 204
    :try_start_12
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_19

    .line 207
    goto :goto_1c

    .line 205
    :catch_19
    move-exception p1

    .line 206
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 208
    :goto_1c
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Resources;I)V
    .registers 8

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 219
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 220
    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 221
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_3a

    .line 222
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " not found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 223
    return-void

    .line 225
    :cond_3a
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 227
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " must be font file."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 228
    return-void

    .line 232
    :cond_67
    :try_start_67
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget p2, v1, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_73} :catch_74

    .line 235
    goto :goto_77

    .line 233
    :catch_74
    move-exception p1

    .line 234
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 236
    :goto_77
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/fonts/Font;)V
    .registers 3

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 244
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    .line 246
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    .line 247
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 248
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 249
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 250
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 251
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result p1

    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 252
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 8

    .line 157
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 158
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;JJ)V
    .registers 14

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 169
    :try_start_12
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_44

    .line 170
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 171
    const-wide/16 v3, -0x1

    cmp-long p1, p4, v3

    if-nez p1, :cond_2a

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p4

    sub-long/2addr p4, p2

    :cond_2a
    move-wide v6, p4

    .line 172
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 173
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_44

    .line 175
    goto :goto_48

    .line 169
    :catchall_38
    move-exception v0

    move-object p1, v0

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_43

    :catchall_3e
    move-exception v0

    move-object p2, v0

    :try_start_40
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_43
    throw p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 173
    :catch_44
    move-exception v0

    move-object p1, v0

    .line 174
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 176
    :goto_48
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .registers 10

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 141
    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :try_start_18
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_3e

    .line 143
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 144
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_33

    .line 145
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3e

    .line 147
    goto :goto_41

    .line 142
    :catchall_33
    move-exception v0

    move-object v2, v0

    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw v2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 145
    :catch_3e
    move-exception v0

    .line 146
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 148
    :goto_41
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 149
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    .line 132
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 101
    const-string v0, "buffer can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 106
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    .line 107
    return-void

    .line 103
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only direct buffer can be used as the source of font data."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 117
    invoke-direct {p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 118
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 119
    iput-object p3, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static blacklist createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    const-string v0, "assetManager can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    if-eqz p2, :cond_14

    .line 275
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_1f

    .line 288
    :catch_12
    move-exception v0

    goto :goto_48

    .line 276
    :cond_14
    if-lez p3, :cond_1b

    .line 277
    invoke-virtual {p0, p3, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_1f

    .line 279
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 282
    :goto_1f
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_23} :catch_12

    .line 283
    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 284
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 285
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6

    .line 286
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_3b

    .line 287
    if-eqz v1, :cond_3a

    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_12

    .line 286
    :cond_3a
    return-object v0

    .line 282
    :catchall_3b
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_47

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw v2
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_12

    .line 292
    :goto_48
    const/4 v0, 0x3

    if-eqz p2, :cond_50

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_54

    .line 293
    :cond_50
    invoke-virtual {p0, p3, p1, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    :goto_54
    nop

    .line 295
    :try_start_55
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 296
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 297
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 298
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p3

    if-eqz p3, :cond_7a

    .line 299
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {p0, p3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    goto :goto_85

    .line 303
    :cond_7a
    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p3

    .line 304
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 307
    :goto_85
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p3
    :try_end_89
    .catchall {:try_start_55 .. :try_end_89} :catchall_ac

    const/4 v0, -0x1

    if-ne p3, v0, :cond_93

    .line 311
    nop

    .line 312
    if-eqz p0, :cond_92

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 311
    :cond_92
    return-object p2

    .line 308
    :cond_93
    :try_start_93
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to access full contents of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_ac
    .catchall {:try_start_93 .. :try_end_ac} :catchall_ac

    .line 292
    :catchall_ac
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_b9

    :try_start_b0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    goto :goto_b9

    :catchall_b4
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b9
    :goto_b9
    throw p1
.end method

.method private static native blacklist nAddAxis(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IZI)J
.end method

.method private static native blacklist nClone(JJIZI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nInitBuilder()J
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/fonts/Font;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    if-nez v0, :cond_af

    .line 461
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v0, v2, :cond_39

    .line 462
    :cond_e
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    iget-object v4, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v0, v3, v4}, Landroid/graphics/fonts/FontFileUtil;->analyzeStyle(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;)I

    move-result v0

    .line 463
    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 464
    iget v3, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    if-ne v3, v2, :cond_28

    .line 465
    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->unpackWeight(I)I

    move-result v3

    iput v3, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 467
    :cond_28
    iget v3, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v3, v2, :cond_39

    .line 468
    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->unpackItalic(I)Z

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    goto :goto_39

    .line 471
    :cond_33
    const/16 v0, 0x190

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 472
    iput v1, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 475
    :cond_39
    :goto_39
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 476
    const/16 v2, 0x3e8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 475
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 477
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v0, v2, :cond_4e

    move v8, v2

    goto :goto_4f

    :cond_4e
    move v8, v1

    .line 478
    :goto_4f
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 479
    nop

    .line 480
    invoke-static {}, Landroid/graphics/fonts/Font$Builder;->nInitBuilder()J

    move-result-wide v3

    .line 481
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v0, :cond_6f

    .line 482
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    array-length v2, v0

    :goto_5d
    if-ge v1, v2, :cond_6f

    aget-object v5, v0, v1

    .line 483
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v5

    invoke-static {v3, v4, v6, v5}, Landroid/graphics/fonts/Font$Builder;->nAddAxis(JIF)V

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 486
    :cond_6f
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 487
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    if-nez v0, :cond_7c

    const-string v0, ""

    goto :goto_82

    :cond_7c
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_82
    move-object v6, v0

    .line 491
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    if-nez v0, :cond_98

    .line 492
    iget-object v7, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    move v9, v8

    iget v8, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iget v10, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    invoke-static/range {v3 .. v10}, Landroid/graphics/fonts/Font$Builder;->nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IZI)J

    move-result-wide v0

    .line 494
    new-instance v2, Landroid/graphics/fonts/Font;

    invoke-direct {v2, v0, v1}, Landroid/graphics/fonts/Font;-><init>(J)V

    goto :goto_ae

    .line 496
    :cond_98
    move v9, v8

    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v0

    iget v7, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iget v9, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    move-wide v5, v3

    move-wide v3, v0

    invoke-static/range {v3 .. v9}, Landroid/graphics/fonts/Font$Builder;->nClone(JJIZI)J

    move-result-wide v0

    .line 497
    new-instance v2, Landroid/graphics/fonts/Font;

    invoke-direct {v2, v0, v1}, Landroid/graphics/fonts/Font;-><init>(J)V

    .line 499
    :goto_ae
    return-object v2

    .line 459
    :cond_af
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read font contents"

    iget-object v2, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;
    .registers 2

    .line 438
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 439
    return-object p0
.end method

.method public whitelist setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;
    .registers 2

    .line 449
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p1}, [Landroid/graphics/fonts/FontVariationAxis;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/fonts/FontVariationAxis;

    :goto_a
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 450
    return-object p0
.end method

.method public whitelist setSlant(I)Landroid/graphics/fonts/Font$Builder;
    .registers 2

    .line 413
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    :goto_5
    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 414
    return-object p0
.end method

.method public whitelist setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;
    .registers 2

    .line 425
    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 426
    return-object p0
.end method

.method public whitelist setWeight(I)Landroid/graphics/fonts/Font$Builder;
    .registers 4

    .line 395
    const/4 v0, 0x1

    if-gt v0, p1, :cond_8

    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 397
    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 398
    return-object p0
.end method
