.class abstract Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.super Ljava/lang/Object;
.source "OwnersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/OwnersData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FileReadWriter"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "file"    # Ljava/io/File;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    .line 229
    return-void
.end method


# virtual methods
.method readFromFileLocked()V
    .registers 10

    .line 286
    const-string v0, "DevicePolicyManagerService"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 290
    return-void

    .line 295
    :cond_b
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 296
    .local v1, "f":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 298
    .local v2, "input":Ljava/io/InputStream;
    :try_start_13
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 299
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 302
    .local v3, "parser":Landroid/util/TypedXmlPullParser;
    const/4 v4, 0x0

    .line 303
    .local v4, "depth":I
    :cond_1d
    :goto_1d
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_64

    .line 304
    packed-switch v6, :pswitch_data_78

    goto :goto_63

    .line 309
    :pswitch_29
    add-int/lit8 v4, v4, -0x1

    goto :goto_63

    .line 306
    :pswitch_2c
    add-int/lit8 v4, v4, 0x1

    .line 307
    nop

    .line 315
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "tag":Ljava/lang/String;
    if-ne v4, v7, :cond_58

    .line 317
    const-string/jumbo v7, "root"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 318
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid root tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_54} :catch_67
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_54} :catch_67
    .catchall {:try_start_13 .. :try_end_54} :catchall_65

    .line 331
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 319
    return-void

    .line 324
    :cond_58
    :try_start_58
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z

    move-result v7
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_5c} :catch_67
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5c} :catch_67
    .catchall {:try_start_58 .. :try_end_5c} :catchall_65

    if-nez v7, :cond_62

    .line 331
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 325
    return-void

    .line 327
    .end local v5    # "tag":Ljava/lang/String;
    :cond_62
    goto :goto_1d

    .line 312
    :goto_63
    goto :goto_1d

    .line 331
    .end local v3    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v4    # "depth":I
    .end local v6    # "type":I
    :cond_64
    goto :goto_6e

    :catchall_65
    move-exception v0

    goto :goto_73

    .line 328
    :catch_67
    move-exception v3

    .line 329
    .local v3, "e":Ljava/lang/Exception;
    :try_start_68
    const-string v4, "Error parsing owners information file"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_65

    .line 331
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :goto_73
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 332
    throw v0

    nop

    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method abstract readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z
.end method

.method abstract shouldWrite()Z
.end method

.method abstract writeInner(Landroid/util/TypedXmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method writeToFileLocked()Z
    .registers 9

    .line 234
    const-string/jumbo v0, "root"

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->shouldWrite()Z

    move-result v1

    const-string v2, "DevicePolicyManagerService"

    const/4 v3, 0x1

    if-nez v1, :cond_39

    .line 239
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 243
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_38

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_38
    return v3

    .line 253
    :cond_39
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 254
    .local v1, "f":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    .line 256
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_41
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 257
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v5

    .line 260
    .local v5, "out":Landroid/util/TypedXmlSerializer;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 261
    invoke-interface {v5, v7, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->writeInner(Landroid/util/TypedXmlSerializer;)V

    .line 267
    invoke-interface {v5, v7, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 269
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 272
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_64} :catch_67

    .line 273
    const/4 v0, 0x0

    .line 281
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v5    # "out":Landroid/util/TypedXmlSerializer;
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    nop

    .line 282
    return v3

    .line 275
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_67
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Exception when writing"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    if-eqz v4, :cond_72

    .line 278
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 280
    :cond_72
    const/4 v2, 0x0

    return v2
.end method
