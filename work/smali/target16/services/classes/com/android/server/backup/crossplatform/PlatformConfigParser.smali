.class public Lcom/android/server/backup/crossplatform/PlatformConfigParser;
.super Ljava/lang/Object;
.source "PlatformConfigParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parsePlatformSpecificConfig(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/util/Map;
    .registers 3

    if-eqz p1, :cond_3e

    .line 73
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    if-nez v0, :cond_7

    goto :goto_3e

    .line 80
    :cond_7
    :try_start_7
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_35

    .line 84
    :try_start_d
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_11} :catch_2c

    .line 85
    :try_start_11
    new-instance p1, Lcom/android/server/backup/crossplatform/PlatformConfigParser;

    invoke-direct {p1}, Lcom/android/server/backup/crossplatform/PlatformConfigParser;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/backup/crossplatform/PlatformConfigParser;->parseConfig(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_20

    if-eqz p0, :cond_1f

    .line 86
    :try_start_1c
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1f} :catch_2c

    :cond_1f
    return-object p1

    :catchall_20
    move-exception p1

    if-eqz p0, :cond_2b

    .line 84
    :try_start_23
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p0

    :try_start_28
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    throw p1
    :try_end_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p0

    .line 87
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid XML"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_35
    move-exception p0

    .line 82
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Package not found"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 74
    :cond_3e
    :goto_3e
    const-string p0, "BackupManagerService"

    const-string p1, "No data extraction rules"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final hasExpectedRootTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 4

    .line 116
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    :goto_4
    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_4

    .line 120
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public parseConfig(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 101
    const-string v0, "data-extraction-rules"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/crossplatform/PlatformConfigParser;->hasExpectedRootTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 102
    const-string p0, "BackupManagerService"

    const-string p1, "Not a valid data-extraction-rules configuration."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 105
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/backup/crossplatform/PlatformConfigParser;->parsePlatformSpecificParams(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final parseCrossPlatformTransferSection(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 8

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_9
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 176
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cross-platform-transfer"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1a

    :cond_19
    return-object v0

    .line 177
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_22

    goto :goto_9

    .line 182
    :cond_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string/jumbo v3, "platform-specific-params"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 184
    invoke-virtual {p0, p1, v2}, Lcom/android/server/backup/crossplatform/PlatformConfigParser;->skipSection(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_9

    .line 188
    :cond_33
    const-string v2, "bundleId"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string/jumbo v4, "teamId"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    const-string v5, "contentVersion"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    new-instance v5, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;

    invoke-direct {v5, v2, v4, v3}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found platform specific params (bundleId=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", teamId=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public final parsePlatformSpecificParams(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .registers 8

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 131
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :cond_9
    :goto_9
    const/4 v2, 0x1

    if-eq v1, v2, :cond_61

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    goto :goto_9

    .line 139
    :cond_14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v3, "cross-platform-transfer"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 141
    invoke-virtual {p0, p1, v2}, Lcom/android/server/backup/crossplatform/PlatformConfigParser;->skipSection(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_9

    :cond_24
    const/4 v3, 0x0

    .line 145
    const-string/jumbo v4, "platform"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    const-string v4, "ios"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cross-platform transfer does not support platform: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0, p1, v2}, Lcom/android/server/backup/crossplatform/PlatformConfigParser;->skipSection(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_9

    .line 154
    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/backup/crossplatform/PlatformConfigParser;->parseCrossPlatformTransferSection(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 156
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_61
    return-object v0
.end method

.method public final skipSection(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 4

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    :goto_4
    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    .line 165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_16

    .line 166
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_4

    :cond_16
    return-void
.end method
