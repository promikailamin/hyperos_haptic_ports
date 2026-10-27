.class public abstract Lcom/android/server/biometrics/sensors/BiometricUserState;
.super Ljava/lang/Object;
.source "BiometricUserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ATTR_INVALIDATION:Ljava/lang/String; = "authenticatorIdInvalidation_attr"

.field private static final TAG:Ljava/lang/String; = "UserState"

.field private static final TAG_INVALIDATION:Ljava/lang/String; = "authenticatorIdInvalidation_tag"


# instance fields
.field protected final mBiometrics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mFile:Ljava/io/File;

.field protected mInvalidationInProgress:Z

.field private final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$oJ_rhDM--0IGhnHj5ZfT-eTkOVE(Lcom/android/server/biometrics/sensors/BiometricUserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->doWriteStateInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fileName"    # Ljava/lang/String;

    .line 124
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricUserState;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    .line 125
    invoke-direct {p0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 126
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mContext:Landroid/content/Context;

    .line 127
    monitor-enter p0

    .line 128
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->readStateSyncLocked()V

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private doWriteStateInternal()V
    .registers 8

    .line 86
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    const-string v0, "authenticatorIdInvalidation_tag"

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 88
    .local v1, "destination":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 91
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 92
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 93
    .local v3, "serializer":Landroid/util/TypedXmlSerializer;
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 94
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    invoke-interface {v3, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    const-string v4, "authenticatorIdInvalidation_attr"

    iget-boolean v6, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    invoke-interface {v3, v5, v4, v6}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    invoke-interface {v3, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->doWriteState(Landroid/util/TypedXmlSerializer;)V

    .line 104
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 105
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 107
    invoke-static {}, Landroid/os/FileUtils;->syncAll()V
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_40

    .line 113
    .end local v3    # "serializer":Landroid/util/TypedXmlSerializer;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 114
    nop

    .line 115
    return-void

    .line 108
    :catchall_40
    move-exception v0

    .line 109
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_41
    const-string v3, "UserState"

    const-string v4, "Failed to write settings, restoring backup"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 111
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "destination":Landroid/util/AtomicFile;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    throw v3
    :try_end_6a
    .catchall {:try_start_41 .. :try_end_6a} :catchall_6a

    .line 113
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v1    # "destination":Landroid/util/AtomicFile;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    :catchall_6a
    move-exception v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 114
    throw v0
.end method

.method private getFileForUser(ILjava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .line 209
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isUnique(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 200
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 201
    .local v1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;, "TT;"
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 202
    const/4 v0, 0x0

    return v0

    .line 204
    .end local v1    # "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;, "TT;"
    :cond_1e
    goto :goto_6

    .line 205
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method private parseStateLocked(Landroid/util/TypedXmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 245
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3f

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 246
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3f

    .line 247
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 248
    goto :goto_4

    .line 251
    :cond_1b
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "tagName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->parseBiometricsLocked(Landroid/util/TypedXmlPullParser;)V

    goto :goto_3e

    .line 254
    :cond_2d
    const-string v3, "authenticatorIdInvalidation_tag"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 255
    const/4 v3, 0x0

    const-string v4, "authenticatorIdInvalidation_attr"

    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 257
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_3e
    :goto_3e
    goto :goto_4

    .line 258
    :cond_3f
    return-void
.end method

.method private readStateSyncLocked()V
    .registers 6

    .line 219
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 220
    return-void

    .line 223
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_3f

    .line 227
    .local v0, "in":Ljava/io/FileInputStream;
    nop

    .line 229
    :try_start_11
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 230
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->parseStateLocked(Landroid/util/TypedXmlPullParser;)V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_18} :catch_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_1f
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 236
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 237
    nop

    .line 238
    return-void

    .line 236
    :catchall_1d
    move-exception v1

    goto :goto_3b

    .line 232
    :catch_1f
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    :try_start_20
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing settings file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    throw v2
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_1d

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    :goto_3b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 237
    throw v1

    .line 224
    .end local v0    # "in":Ljava/io/FileInputStream;
    :catch_3f
    move-exception v0

    .line 225
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v1, "UserState"

    const-string v2, "No fingerprint state"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private scheduleWriteStateLocked()V
    .registers 2

    .line 213
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method


# virtual methods
.method public addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 146
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    .local p1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;, "TT;"
    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    .line 149
    monitor-exit p0

    .line 150
    return-void

    .line 149
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected abstract doWriteState(Landroid/util/TypedXmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getBiometrics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 180
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected abstract getBiometricsTag()Ljava/lang/String;
.end method

.method protected abstract getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getNameTemplateResource()I
.end method

.method public getUniqueName()Ljava/lang/String;
    .registers 7

    .line 188
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    const/4 v0, 0x1

    .line 191
    .local v0, "guess":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getNameTemplateResource()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->isUnique(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 193
    return-object v1

    .line 195
    :cond_1c
    nop

    .end local v1    # "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 196
    goto :goto_1
.end method

.method public isInvalidationInProgress()Z
    .registers 2

    .line 140
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 141
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    monitor-exit p0

    return v0

    .line 142
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected abstract parseBiometricsLocked(Landroid/util/TypedXmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public removeBiometric(I)V
    .registers 4
    .param p1, "biometricId"    # I

    .line 153
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 155
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 156
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    .line 158
    goto :goto_24

    .line 154
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 161
    .end local v0    # "i":I
    :cond_24
    :goto_24
    monitor-exit p0

    .line 162
    return-void

    .line 161
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public renameBiometric(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "biometricId"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 165
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 167
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_27

    .line 168
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 169
    .local v1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    invoke-virtual {v1, p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->setName(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    .line 171
    goto :goto_2a

    .line 166
    .end local v1    # "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    .end local v0    # "i":I
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 175
    return-void

    .line 174
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public setInvalidationInProgress(Z)V
    .registers 3
    .param p1, "invalidationInProgress"    # Z

    .line 133
    .local p0, "this":Lcom/android/server/biometrics/sensors/BiometricUserState;, "Lcom/android/server/biometrics/sensors/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 134
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 135
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
