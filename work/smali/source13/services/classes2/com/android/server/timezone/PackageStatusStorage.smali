.class final Lcom/android/server/timezone/PackageStatusStorage;
.super Ljava/lang/Object;
.source "PackageStatusStorage.java"


# static fields
.field private static final ATTRIBUTE_CHECK_STATUS:Ljava/lang/String; = "checkStatus"

.field private static final ATTRIBUTE_DATA_APP_VERSION:Ljava/lang/String; = "dataAppPackageVersion"

.field private static final ATTRIBUTE_OPTIMISTIC_LOCK_ID:Ljava/lang/String; = "optimisticLockId"

.field private static final ATTRIBUTE_UPDATE_APP_VERSION:Ljava/lang/String; = "updateAppPackageVersion"

.field private static final LOG_TAG:Ljava/lang/String; = "timezone.PackageStatusStorage"

.field private static final TAG_PACKAGE_STATUS:Ljava/lang/String; = "PackageStatus"

.field private static final UNKNOWN_PACKAGE_VERSION:J = -0x1L


# instance fields
.field private final mPackageStatusFile:Landroid/util/AtomicFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "storageDir"    # Ljava/io/File;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-status.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "timezone-status"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    .line 87
    return-void
.end method

.method private getCurrentOptimisticLockId()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_23

    .line 257
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_6
    invoke-static {v0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 258
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    const-string/jumbo v2, "optimisticLockId"

    invoke-static {v1, v2}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v2
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_17

    .line 259
    if-eqz v0, :cond_16

    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_23

    .line 258
    :cond_16
    return v2

    .line 256
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    :catchall_17
    move-exception v1

    if-eqz v0, :cond_22

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v2

    :try_start_1f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :cond_22
    :goto_22
    throw v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_23

    .line 259
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :catch_23
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    const-string v3, "Unable to read file"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 261
    .local v1, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 262
    throw v1
.end method

.method private static getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I
    .registers 6
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 379
    invoke-static {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 380
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_b

    .line 383
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 381
    :cond_b
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static getNullableIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "attributeValue":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 367
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 368
    return-object v0

    .line 370
    :cond_f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 371
    :catch_18
    move-exception v0

    goto :goto_39

    .line 366
    :cond_1a
    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " missing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "attributeValue":Ljava/lang/String;
    .end local p0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local p1    # "attributeName":Ljava/lang/String;
    throw v0
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_39} :catch_18

    .line 372
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "attributeValue":Ljava/lang/String;
    .restart local p0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local p1    # "attributeName":Ljava/lang/String;
    :goto_39
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad integer for attributeName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_48

    .line 132
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_6
    invoke-static {v0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 133
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    const-string v2, "checkStatus"

    invoke-static {v1, v2}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3c

    .line 134
    .local v2, "checkStatus":Ljava/lang/Integer;
    if-nez v2, :cond_19

    .line 135
    const/4 v3, 0x0

    .line 141
    if-eqz v0, :cond_18

    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_48

    .line 135
    :cond_18
    return-object v3

    .line 137
    :cond_19
    :try_start_19
    const-string/jumbo v3, "updateAppPackageVersion"

    invoke-static {v1, v3}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 138
    .local v3, "updateAppVersion":I
    const-string v4, "dataAppPackageVersion"

    invoke-static {v1, v4}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 139
    .local v4, "dataAppVersion":I
    new-instance v5, Lcom/android/server/timezone/PackageStatus;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Lcom/android/server/timezone/PackageVersions;

    int-to-long v8, v3

    int-to-long v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    invoke-direct {v5, v6, v7}, Lcom/android/server/timezone/PackageStatus;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_3c

    .line 141
    if-eqz v0, :cond_3b

    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_48

    .line 139
    :cond_3b
    return-object v5

    .line 131
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v2    # "checkStatus":Ljava/lang/Integer;
    .end local v3    # "updateAppVersion":I
    .end local v4    # "dataAppVersion":I
    :catchall_3c
    move-exception v1

    if-eqz v0, :cond_47

    :try_start_3f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v2

    :try_start_44
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :cond_47
    :goto_47
    throw v1
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    .line 141
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :catch_48
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    const-string v3, "Error reading package status"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 143
    .local v1, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v1
.end method

.method private insertInitialPackageStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 166
    .local v0, "initialOptimisticLockId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 168
    return v0
.end method

.method private static parseToPackageStatusTag(Ljava/io/FileInputStream;)Landroid/util/TypedXmlPullParser;
    .registers 6
    .param p0, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 272
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    :goto_5
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1e

    .line 273
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d

    const-string v4, "PackageStatus"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 275
    return-object v1

    .line 277
    .end local v2    # "tag":Ljava/lang/String;
    :cond_1d
    goto :goto_5

    .line 278
    :cond_1e
    new-instance v2, Ljava/text/ParseException;

    const-string v4, "Unable to find PackageStatus tag"

    invoke-direct {v2, v4, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "fis":Ljava/io/FileInputStream;
    throw v2
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_26} :catch_33
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_26

    .line 281
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v3    # "type":I
    .restart local p0    # "fis":Ljava/io/FileInputStream;
    :catch_26
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Error reading XML"

    invoke-direct {v2, v3, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    .line 283
    .local v0, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 284
    throw v0

    .line 279
    .end local v0    # "e2":Ljava/text/ParseException;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_33
    move-exception v0

    .line 280
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to configure parser"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private recoverFromBadData(Ljava/lang/Exception;)I
    .registers 4
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 150
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 152
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return v0

    .line 153
    :catch_a
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 155
    .local v1, "fatal":Ljava/lang/IllegalStateException;
    invoke-virtual {v1, p1}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 156
    throw v1
.end method

.method private writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    .registers 15
    .param p1, "status"    # Ljava/lang/Integer;
    .param p2, "optimisticLockId"    # I
    .param p3, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const-string v0, "PackageStatus"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    if-nez p3, :cond_c

    move v1, v2

    :cond_c
    if-ne v3, v1, :cond_7b

    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_f
    iget-object v3, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 319
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 320
    .local v3, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, "namespace":Ljava/lang/String;
    invoke-interface {v3, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    if-nez p1, :cond_2b

    const-string v4, ""

    goto :goto_33

    :cond_2b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "statusAttributeValue":Ljava/lang/String;
    :goto_33
    const-string v5, "checkStatus"

    invoke-interface {v3, v2, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string/jumbo v5, "optimisticLockId"

    .line 326
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 325
    invoke-interface {v3, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const-wide/16 v5, -0x1

    if-nez p1, :cond_48

    .line 328
    move-wide v7, v5

    goto :goto_4a

    :cond_48
    iget-wide v7, p3, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    .line 329
    .local v7, "updateAppVersion":J
    :goto_4a
    const-string/jumbo v9, "updateAppPackageVersion"

    .line 330
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 329
    invoke-interface {v3, v2, v9, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    if-nez p1, :cond_57

    .line 332
    goto :goto_59

    :cond_57
    iget-wide v5, p3, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    .line 333
    .local v5, "dataAppVersion":J
    :goto_59
    const-string v9, "dataAppPackageVersion"

    .line 334
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 333
    invoke-interface {v3, v2, v9, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-interface {v3, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 337
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 338
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_70} :catch_72

    .line 344
    .end local v2    # "namespace":Ljava/lang/String;
    .end local v3    # "serializer":Landroid/util/TypedXmlSerializer;
    .end local v4    # "statusAttributeValue":Ljava/lang/String;
    .end local v5    # "dataAppVersion":J
    .end local v7    # "updateAppVersion":J
    nop

    .line 346
    return-void

    .line 339
    :catch_72
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_7a

    .line 341
    iget-object v2, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 343
    :cond_7a
    throw v0

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provide both status and packageVersions, or neither."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    .registers 7
    .param p1, "optimisticLockId"    # I
    .param p2, "newOptimisticLockId"    # I
    .param p3, "status"    # Ljava/lang/Integer;
    .param p4, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v1
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_e

    .line 296
    .local v1, "currentOptimisticLockId":I
    if-eq v1, p1, :cond_8

    .line 297
    return v0

    .line 302
    :cond_8
    nop

    .line 304
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 305
    const/4 v0, 0x1

    return v0

    .line 299
    .end local v1    # "currentOptimisticLockId":I
    :catch_e
    move-exception v1

    .line 300
    .local v1, "e":Ljava/text/ParseException;
    invoke-direct {p0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    .line 301
    return v0
.end method


# virtual methods
.method deleteFileForTests()V
    .registers 2

    .line 101
    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public forceCheckStateForTests(ILcom/android/server/timezone/PackageVersions;)V
    .registers 5
    .param p1, "checkStatus"    # I
    .param p2, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    monitor-enter p0

    .line 353
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 354
    .local v0, "initialOptimisticLockId":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_12
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    .line 357
    .end local v0    # "initialOptimisticLockId":I
    nop

    .line 358
    :try_start_e
    monitor-exit p0

    .line 359
    return-void

    .line 358
    :catchall_10
    move-exception v0

    goto :goto_19

    .line 355
    :catch_12
    move-exception v0

    .line 356
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .end local p1    # "checkStatus":I
    .end local p2    # "packageVersions":Lcom/android/server/timezone/PackageVersions;
    throw v1

    .line 358
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .restart local p1    # "checkStatus":I
    .restart local p2    # "packageVersions":Lcom/android/server/timezone/PackageVersions;
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_10

    throw v0
.end method

.method generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;
    .registers 7
    .param p1, "currentInstalledVersions"    # Lcom/android/server/timezone/PackageVersions;

    .line 176
    if-eqz p1, :cond_3e

    .line 180
    monitor-enter p0

    .line 183
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_7} :catch_a
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    .line 189
    .local v0, "optimisticLockId":I
    goto :goto_18

    .line 204
    .end local v0    # "optimisticLockId":I
    :catchall_8
    move-exception v0

    goto :goto_3c

    .line 184
    :catch_a
    move-exception v0

    .line 185
    .local v0, "e":Ljava/text/ParseException;
    :try_start_b
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string v2, "Unable to find optimistic lock ID from package status"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_8

    move v0, v1

    .line 191
    .local v0, "optimisticLockId":I
    :goto_18
    add-int/lit8 v1, v0, 0x1

    .line 193
    .local v1, "newOptimisticLockId":I
    nop

    .line 194
    const/4 v2, 0x1

    :try_start_1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 193
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v2

    .line 196
    .local v2, "statusUpdated":Z
    if-eqz v2, :cond_2d

    .line 200
    new-instance v3, Lcom/android/server/timezone/CheckToken;

    invoke-direct {v3, v1, p1}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2b} :catch_35
    .catchall {:try_start_1c .. :try_end_2b} :catchall_8

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_8

    return-object v3

    .line 197
    :cond_2d
    :try_start_2d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to update status to CHECK_STARTED. synchronization failure?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .end local p1    # "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    throw v3
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_8

    .line 201
    .end local v2    # "statusUpdated":Z
    .restart local v0    # "optimisticLockId":I
    .restart local v1    # "newOptimisticLockId":I
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .restart local p1    # "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    :catch_35
    move-exception v2

    .line 202
    .local v2, "e":Ljava/io/IOException;
    :try_start_36
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .end local p1    # "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    throw v3

    .line 204
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .restart local p1    # "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_8

    throw v0

    .line 177
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "currentInstalledVersions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getPackageStatus()Lcom/android/server/timezone/PackageStatus;
    .registers 5

    .line 111
    monitor-enter p0

    .line 113
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v0
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_9
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    :try_start_5
    monitor-exit p0

    return-object v0

    .line 126
    :catchall_7
    move-exception v0

    goto :goto_24

    .line 114
    :catch_9
    move-exception v0

    .line 116
    .local v0, "e":Ljava/text/ParseException;
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string v2, "Package status invalid, resetting and retrying"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_7

    .line 121
    :try_start_15
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v1
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_19} :catch_1b
    .catchall {:try_start_15 .. :try_end_19} :catchall_7

    :try_start_19
    monitor-exit p0

    return-object v1

    .line 122
    :catch_1b
    move-exception v1

    .line 123
    .local v1, "e2":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Recovery from bad file failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    throw v2

    .line 126
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v1    # "e2":Ljava/text/ParseException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_7

    throw v0
.end method

.method initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 96
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    .line 98
    :cond_f
    return-void
.end method

.method markChecked(Lcom/android/server/timezone/CheckToken;Z)Z
    .registers 8
    .param p1, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p2, "succeeded"    # Z

    .line 241
    monitor-enter p0

    .line 242
    :try_start_1
    iget v0, p1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    .line 243
    .local v0, "optimisticLockId":I
    add-int/lit8 v1, v0, 0x1

    .line 244
    .local v1, "newOptimisticLockId":I
    if-eqz p2, :cond_9

    const/4 v2, 0x2

    goto :goto_a

    :cond_9
    const/4 v2, 0x3

    .line 246
    .local v2, "status":I
    :goto_a
    nop

    .line 247
    :try_start_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 246
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_17
    .catchall {:try_start_b .. :try_end_15} :catchall_1e

    :try_start_15
    monitor-exit p0

    return v3

    .line 248
    :catch_17
    move-exception v3

    .line 249
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .end local p1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .end local p2    # "succeeded":Z
    throw v4

    .line 251
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "status":I
    .end local v3    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    .restart local p1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .restart local p2    # "succeeded":Z
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method resetCheckState()V
    .registers 6

    .line 211
    monitor-enter p0

    .line 214
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_8
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 220
    .local v0, "optimisticLockId":I
    goto :goto_17

    .line 232
    .end local v0    # "optimisticLockId":I
    :catchall_6
    move-exception v0

    goto :goto_44

    .line 215
    :catch_8
    move-exception v0

    .line 216
    .local v0, "e":Ljava/text/ParseException;
    :try_start_9
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string/jumbo v2, "resetCheckState: Unable to find optimistic lock ID from package status"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v1
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_6

    move v0, v1

    .line 222
    .local v0, "optimisticLockId":I
    :goto_17
    add-int/lit8 v1, v0, 0x1

    .line 224
    .local v1, "newOptimisticLockId":I
    const/4 v2, 0x0

    :try_start_1a
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_3d
    .catchall {:try_start_1a .. :try_end_1e} :catchall_6

    if-eqz v2, :cond_23

    .line 231
    nop

    .line 232
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_6

    .line 233
    return-void

    .line 226
    .restart local v0    # "optimisticLockId":I
    .restart local v1    # "newOptimisticLockId":I
    :cond_23
    :try_start_23
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetCheckState: Unable to reset package status, newOptimisticLockId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    throw v2
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3d} :catch_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_6

    .line 229
    .restart local v0    # "optimisticLockId":I
    .restart local v1    # "newOptimisticLockId":I
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :catch_3d
    move-exception v2

    .line 230
    .local v2, "e":Ljava/io/IOException;
    :try_start_3e
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    throw v3

    .line 232
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/timezone/PackageStatusStorage;
    :goto_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_6

    throw v0
.end method
