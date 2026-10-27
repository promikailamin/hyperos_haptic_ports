.class public Lcom/android/server/adb/AdbAuthorizationStore;
.super Ljava/lang/Object;
.source "AdbAuthorizationStore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AdbAuthorizationStore"


# instance fields
.field public final mStoreFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string/jumbo v0, "storeFile must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/android/server/adb/AdbAuthorizationStore;->mStoreFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final addAdbKeyToKeyMap(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V
    .registers 5

    .line 198
    const-string/jumbo p0, "key"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 200
    :try_start_8
    const-string/jumbo v1, "lastConnection"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 201
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 203
    sget-object p1, Lcom/android/server/adb/AdbAuthorizationStore;->TAG:Ljava/lang/String;

    const-string p2, "Error reading adbKey attributes"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final addTrustedNetworkToTrustedNetworks(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V
    .registers 4

    const/4 p0, 0x0

    .line 209
    const-string v0, "bssid"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public delete()V
    .registers 2

    .line 171
    new-instance v0, Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/adb/AdbAuthorizationStore;->mStoreFile:Ljava/io/File;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 172
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 173
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    :cond_10
    return-void
.end method

.method public load()Lcom/android/server/adb/AdbAuthorizationStore$Entries;
    .registers 9

    .line 85
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/adb/AdbAuthorizationStore;->mStoreFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 86
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 87
    new-instance p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-direct {p0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;-><init>()V

    return-object p0

    .line 90
    :cond_13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :try_start_1d
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_21} :catch_83

    .line 95
    :try_start_21
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 96
    const-string/jumbo v4, "keyStore"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v4, "version"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6a

    .line 100
    sget-object v3, Lcom/android/server/adb/AdbAuthorizationStore;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keystore version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not supported (max_supported="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v3, Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-direct {v3}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;-><init>()V
    :try_end_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_5e} :catch_66
    .catchall {:try_start_21 .. :try_end_5e} :catchall_64

    if-eqz v0, :cond_63

    .line 116
    :try_start_60
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_63} :catch_83

    :cond_63
    return-object v3

    :catchall_64
    move-exception p0

    goto :goto_78

    .line 113
    :catch_66
    :try_start_66
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 115
    :cond_6a
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/adb/AdbAuthorizationStore;->readKeyStoreContents(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;Ljava/util/List;)V
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_64

    if-eqz v0, :cond_72

    .line 116
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_72} :catch_83

    .line 123
    :cond_72
    new-instance p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-direct {p0, v1, v2}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;-><init>(Ljava/util/Map;Ljava/util/List;)V

    return-object p0

    :goto_78
    if-eqz v0, :cond_82

    .line 92
    :try_start_7a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_82

    :catchall_7e
    move-exception v0

    :try_start_7f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_82
    :goto_82
    throw p0
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7f .. :try_end_83} :catch_83

    :catch_83
    move-exception p0

    .line 120
    sget-object v0, Lcom/android/server/adb/AdbAuthorizationStore;->TAG:Ljava/lang/String;

    const-string v1, "Caught XmlPullParserException parsing the XML key file: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    new-instance p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-direct {p0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;-><init>()V

    return-object p0

    :catch_91
    move-exception p0

    .line 117
    sget-object v0, Lcom/android/server/adb/AdbAuthorizationStore;->TAG:Ljava/lang/String;

    const-string v1, "Caught an IOException parsing the XML key file: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    new-instance p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    invoke-direct {p0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;-><init>()V

    return-object p0
.end method

.method public final readKeyStoreContents(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;Ljava/util/List;)V
    .registers 8

    .line 180
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    .line 185
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "adbKey"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbAuthorizationStore;->addAdbKeyToKeyMap(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V

    goto :goto_3f

    .line 188
    :cond_17
    const-string/jumbo v1, "wifiAP"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 189
    invoke-virtual {p0, p1, p3}, Lcom/android/server/adb/AdbAuthorizationStore;->addTrustedNetworkToTrustedNetworks(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V

    goto :goto_3f

    .line 191
    :cond_24
    sget-object v1, Lcom/android/server/adb/AdbAuthorizationStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'. Not recognized."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_3f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_43
    return-void
.end method

.method public save(Lcom/android/server/adb/AdbAuthorizationStore$Entries;)V
    .registers 13

    .line 133
    const-string/jumbo v0, "wifiAP"

    const-string v1, "adbKey"

    const-string/jumbo v2, "keyStore"

    const-string v3, "Entries cannot be null"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p1}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 136
    invoke-virtual {p0}, Lcom/android/server/adb/AdbAuthorizationStore;->delete()V

    return-void

    .line 141
    :cond_25
    new-instance v3, Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/adb/AdbAuthorizationStore;->mStoreFile:Ljava/io/File;

    invoke-direct {v3, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 143
    :try_start_2d
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_ab

    .line 144
    :try_start_31
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 145
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, p0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 147
    invoke-interface {v5, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const-string/jumbo v6, "version"

    const/4 v7, 0x1

    invoke-interface {v5, p0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-virtual {p1}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v5, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const-string/jumbo v8, "key"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, p0, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string/jumbo v8, "lastConnection"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v5, p0, v8, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    invoke-interface {v5, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_50

    :catch_7f
    move-exception p0

    goto :goto_ae

    .line 155
    :cond_81
    invoke-virtual {p1}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_89
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    invoke-interface {v5, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    const-string v6, "bssid"

    invoke-interface {v5, p0, v6, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    invoke-interface {v5, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_89

    .line 160
    :cond_a1
    invoke-interface {v5, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 162
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_aa} :catch_7f

    return-void

    :catch_ab
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    .line 164
    :goto_ae
    sget-object p1, Lcom/android/server/adb/AdbAuthorizationStore;->TAG:Ljava/lang/String;

    const-string v0, "Caught an exception writing the key map: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method
