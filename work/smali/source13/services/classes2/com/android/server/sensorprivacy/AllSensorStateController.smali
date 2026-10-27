.class Lcom/android/server/sensorprivacy/AllSensorStateController;
.super Ljava/lang/Object;
.source "AllSensorStateController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SENSOR_PRIVACY_XML_FILE:Ljava/lang/String; = "sensor_privacy.xml"

.field private static final XML_ATTRIBUTE_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_TAG_SENSOR_PRIVACY:Ljava/lang/String; = "all-sensor-privacy"

.field private static final XML_TAG_SENSOR_PRIVACY_LEGACY:Ljava/lang/String; = "sensor-privacy"

.field private static sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mEnabled:Z

.field private mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

.field private mListenerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$DA9hc-HUJxG--Ss50h240r8gPRg(Lcom/android/server/sensorprivacy/AllSensorStateController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->persist(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 54
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sensor_privacy.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    .line 68
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 69
    return-void

    .line 71
    :cond_1d
    const/4 v1, 0x0

    :try_start_1e
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_22} :catch_88

    .line 72
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_22
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 74
    .local v2, "parser":Landroid/util/TypedXmlPullParser;
    :goto_26
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_76

    .line 75
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "tagName":Ljava/lang/String;
    const-string v4, "all-sensor-privacy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_7c

    const-string v5, "enabled"

    if-eqz v4, :cond_45

    .line 77
    :try_start_3b
    iget-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 78
    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 79
    goto :goto_76

    .line 81
    :cond_45
    const-string/jumbo v4, "sensor-privacy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 82
    iget-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 83
    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v4, v6

    iput-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 85
    :cond_57
    const-string/jumbo v4, "user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 86
    const-string v4, "id"

    const/4 v6, -0x1

    invoke-static {v2, v4, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 87
    .local v4, "user":I
    if-nez v4, :cond_72

    .line 88
    iget-boolean v6, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 89
    invoke-static {v2, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 92
    .end local v4    # "user":I
    :cond_72
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_75
    .catchall {:try_start_3b .. :try_end_75} :catchall_7c

    .line 93
    .end local v3    # "tagName":Ljava/lang/String;
    goto :goto_26

    .line 94
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_76
    :goto_76
    if-eqz v0, :cond_7b

    :try_start_78
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_78 .. :try_end_7b} :catch_88

    .line 97
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    :cond_7b
    goto :goto_92

    .line 71
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    :catchall_7c
    move-exception v2

    if-eqz v0, :cond_87

    :try_start_7f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_87

    :catchall_83
    move-exception v3

    :try_start_84
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/sensorprivacy/AllSensorStateController;
    :cond_87
    :goto_87
    throw v2
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_88} :catch_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_88} :catch_88

    .line 94
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/sensorprivacy/AllSensorStateController;
    :catch_88
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/sensorprivacy/AllSensorStateController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Caught an exception reading the state from storage: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_92
    return-void
.end method

.method static getInstance()Lcom/android/server/sensorprivacy/AllSensorStateController;
    .registers 1

    .line 61
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/AllSensorStateController;-><init>()V

    sput-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 64
    :cond_b
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    return-object v0
.end method

.method private persist(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 130
    const-string v0, "all-sensor-privacy"

    const/4 v1, 0x0

    .line 132
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_3
    iget-object v2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 133
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 134
    .local v2, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string v3, "enabled"

    invoke-interface {v2, v4, v3, p1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 139
    iget-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2a} :catch_2b

    .line 143
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    goto :goto_38

    .line 140
    :catch_2b
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/sensorprivacy/AllSensorStateController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iget-object v2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :goto_38
    return-void
.end method


# virtual methods
.method dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 2
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 154
    return-void
.end method

.method public getAllSensorStateLocked()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    return v0
.end method

.method resetForTesting()V
    .registers 2

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    .line 148
    iput-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 150
    return-void
.end method

.method public schedulePersistLocked()V
    .registers 4

    .line 126
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/AllSensorStateController;)V

    iget-boolean v2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method setAllSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    if-nez v0, :cond_f

    .line 121
    iput-object p2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    .line 122
    iput-object p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    .line 123
    return-void

    .line 119
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllSensorStateLocked(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 105
    iget-boolean v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    if-eq v0, p1, :cond_22

    .line 106
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 107
    iget-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_22

    .line 108
    nop

    .line 109
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    :cond_22
    return-void
.end method
