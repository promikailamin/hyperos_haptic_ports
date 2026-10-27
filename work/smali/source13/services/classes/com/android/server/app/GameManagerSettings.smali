.class public Lcom/android/server/app/GameManagerSettings;
.super Ljava/lang/Object;
.source "GameManagerSettings.java"


# static fields
.field private static final ATTR_GAME_MODE:Ljava/lang/String; = "gameMode"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final GAME_SERVICE_FILE_NAME:Ljava/lang/String; = "game-manager-service.xml"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGES:Ljava/lang/String; = "packages"


# instance fields
.field private final mGameModes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mSettingsFile:Landroid/util/AtomicFile;

.field private final mSystemDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "dataDir"    # Ljava/io/File;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSystemDir:Ljava/io/File;

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 73
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "game-manager-service.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    .line 74
    return-void
.end method

.method private readPackage(Landroid/util/TypedXmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 196
    .local v1, "gameMode":I
    :try_start_2
    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 197
    const-string v2, "gameMode"

    invoke-interface {p1, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_11} :catch_13

    move v1, v2

    .line 200
    goto :goto_1b

    .line 198
    :catch_13
    move-exception v2

    .line 199
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "GameManagerService"

    const-string v4, "Error reading game mode"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1b
    if-eqz v0, :cond_27

    .line 202
    iget-object v2, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 204
    :cond_27
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 206
    :goto_2a
    return-void
.end method


# virtual methods
.method getGameModeLocked(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 82
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 84
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method readPersistentDataLocked()Z
    .registers 11

    .line 146
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 148
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GameManagerService"

    if-nez v0, :cond_16

    .line 149
    const-string v0, "Settings file doesn\'t exists, skip reading"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v1

    .line 154
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 156
    .local v0, "str":Ljava/io/FileInputStream;
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 158
    .local v3, "parser":Landroid/util/TypedXmlPullParser;
    :goto_20
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v6, :cond_2c

    if-eq v5, v7, :cond_2c

    goto :goto_20

    .line 162
    :cond_2c
    if-eq v5, v6, :cond_34

    .line 163
    const-string v4, "No start tag found in package manager settings"

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v1

    .line 168
    :cond_34
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 169
    .local v4, "outerDepth":I
    :cond_38
    :goto_38
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    move v5, v6

    if-eq v6, v7, :cond_7d

    const/4 v6, 0x3

    if-ne v5, v6, :cond_48

    .line 170
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_7d

    .line 171
    :cond_48
    if-eq v5, v6, :cond_38

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4e

    .line 172
    goto :goto_38

    .line 175
    :cond_4e
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "package"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 177
    invoke-direct {p0, v3}, Lcom/android/server/app/GameManagerSettings;->readPackage(Landroid/util/TypedXmlPullParser;)V

    goto :goto_7c

    .line 179
    :cond_5f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_7c} :catch_7f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_7c} :catch_7f

    .line 182
    .end local v6    # "tagName":Ljava/lang/String;
    :goto_7c
    goto :goto_38

    .line 186
    .end local v0    # "str":Ljava/io/FileInputStream;
    .end local v3    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v4    # "outerDepth":I
    .end local v5    # "type":I
    :cond_7d
    nop

    .line 188
    return v7

    .line 183
    :catch_7f
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Error reading package manager settings"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    return v1
.end method

.method removeGame(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method setGameModeLocked(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameMode"    # I

    .line 92
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method writePersistentDataLocked()V
    .registers 10

    .line 108
    const-string/jumbo v0, "package"

    const-string/jumbo v1, "packages"

    const/4 v2, 0x0

    .line 110
    .local v2, "fstr":Ljava/io/FileOutputStream;
    :try_start_7
    iget-object v3, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 112
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 113
    .local v3, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 116
    invoke-interface {v3, v6, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    iget-object v4, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 118
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3, v6, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string/jumbo v7, "name"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v6, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string v7, "gameMode"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v3, v6, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    invoke-interface {v3, v6, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    nop

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_2e

    .line 123
    :cond_5d
    invoke-interface {v3, v6, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 127
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b0

    const/4 v4, -0x1

    invoke-static {v0, v1, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_74} :catch_75

    .line 133
    return-void

    .line 134
    .end local v3    # "serializer":Landroid/util/TypedXmlSerializer;
    :catch_75
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 136
    const-string v1, "GameManagerService"

    const-string v3, "Unable to write game manager service settings, current changes will be lost at reboot"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method
