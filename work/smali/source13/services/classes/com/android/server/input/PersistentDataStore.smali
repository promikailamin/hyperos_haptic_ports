.class final Lcom/android/server/input/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mDirty:Z

.field private final mInputDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/input/PersistentDataStore$InputDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 81
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/input-manager-state.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "input-state"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 83
    return-void
.end method

.method private clearState()V
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 207
    return-void
.end method

.method private getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "createIfAbsent"    # Z

    .line 184
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 185
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 186
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 187
    new-instance v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$InputDeviceState-IA;)V

    move-object v0, v1

    .line 188
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 191
    :cond_1e
    return-object v0
.end method

.method private load()V
    .registers 5

    .line 210
    const-string v0, "Failed to load input manager persistent store data."

    const-string v1, "InputManager"

    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V

    .line 214
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_d} :catch_36

    .line 217
    .local v2, "is":Ljava/io/InputStream;
    nop

    .line 221
    :try_start_e
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 222
    .local v3, "parser":Landroid/util/TypedXmlPullParser;
    invoke-direct {p0, v3}, Lcom/android/server/input/PersistentDataStore;->loadFromXml(Landroid/util/TypedXmlPullParser;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_15} :catch_1b
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 230
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 231
    goto :goto_31

    .line 230
    .end local v3    # "parser":Landroid/util/TypedXmlPullParser;
    :catchall_19
    move-exception v0

    goto :goto_32

    .line 226
    :catch_1b
    move-exception v3

    .line 227
    .local v3, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1c
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    .line 230
    .end local v3    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 231
    goto :goto_31

    .line 223
    :catch_26
    move-exception v3

    .line 224
    .local v3, "ex":Ljava/io/IOException;
    :try_start_27
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_19

    .line 230
    .end local v3    # "ex":Ljava/io/IOException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 231
    nop

    .line 232
    :goto_31
    return-void

    .line 230
    :goto_32
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 231
    throw v0

    .line 215
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_36
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private loadFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 258
    const-string/jumbo v0, "input-manager-state"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 259
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 260
    .local v0, "outerDepth":I
    :cond_a
    :goto_a
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 261
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "input-devices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/input/PersistentDataStore;->loadInputDevicesFromXml(Landroid/util/TypedXmlPullParser;)V

    goto :goto_a

    .line 265
    :cond_21
    return-void
.end method

.method private loadIfNeeded()V
    .registers 2

    .line 195
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_a

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->load()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    .line 199
    :cond_a
    return-void
.end method

.method private loadInputDevicesFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 269
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 270
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 271
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "input-device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    const/4 v1, 0x0

    const-string v2, "descriptor"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "descriptor":Ljava/lang/String;
    if-eqz v2, :cond_3f

    .line 277
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 281
    new-instance v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    invoke-direct {v3, v1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$InputDeviceState-IA;)V

    move-object v1, v3

    .line 282
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 283
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v1    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    .end local v2    # "descriptor":Ljava/lang/String;
    goto :goto_4

    .line 278
    .restart local v2    # "descriptor":Ljava/lang/String;
    :cond_37
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Found duplicate input device."

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_3f
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing descriptor attribute on input-device."

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    .end local v2    # "descriptor":Ljava/lang/String;
    :cond_47
    return-void
.end method

.method private save()V
    .registers 5

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_31

    .line 238
    .local v0, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 240
    .local v1, "success":Z
    :try_start_7
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 241
    .local v2, "serializer":Landroid/util/TypedXmlSerializer;
    invoke-direct {p0, v2}, Lcom/android/server/input/PersistentDataStore;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 242
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_21

    .line 243
    const/4 v1, 0x1

    .line 245
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    if-eqz v1, :cond_1a

    .line 246
    :try_start_14
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_20

    .line 248
    :cond_1a
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 250
    nop

    .line 253
    .end local v1    # "success":Z
    :goto_20
    goto :goto_39

    .line 245
    .restart local v1    # "success":Z
    :catchall_21
    move-exception v2

    if-eqz v1, :cond_2a

    .line 246
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2f

    .line 248
    :cond_2a
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 250
    :goto_2f
    nop

    .end local p0    # "this":Lcom/android/server/input/PersistentDataStore;
    throw v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_31} :catch_31

    .line 251
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .end local v1    # "success":Z
    .restart local p0    # "this":Lcom/android/server/input/PersistentDataStore;
    :catch_31
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "InputManager"

    const-string v2, "Failed to save input manager persistent store data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_39
    return-void
.end method

.method private saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 11
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 290
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 291
    const-string/jumbo v0, "input-manager-state"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    const-string/jumbo v1, "input-devices"

    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 294
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 295
    .local v5, "descriptor":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 296
    .local v6, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    const-string/jumbo v7, "input-device"

    invoke-interface {p1, v2, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    const-string v8, "descriptor"

    invoke-interface {p1, v2, v8, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    invoke-virtual {v6, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 299
    invoke-interface {p1, v2, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    .end local v5    # "descriptor":Ljava/lang/String;
    .end local v6    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    goto :goto_25

    .line 301
    :cond_4f
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 304
    return-void
.end method

.method private setDirty()V
    .registers 2

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 203
    return-void
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 142
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 143
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 144
    return v0

    .line 146
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 118
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getCurrentKeyboardLayout()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 133
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_10

    .line 134
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 136
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getKeyboardLayouts()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 94
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_a

    .line 95
    sget-object v1, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    return-object v1

    .line 98
    :cond_a
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;

    move-result-object v1

    .line 99
    .local v1, "cal":Landroid/hardware/input/TouchCalibration;
    if-nez v1, :cond_13

    .line 100
    sget-object v2, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    return-object v2

    .line 102
    :cond_13
    return-object v1
.end method

.method public removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 152
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeKeyboardLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 153
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 154
    return v0

    .line 156
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 169
    .local p1, "availableKeyboardLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 170
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 171
    .local v2, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v2, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 172
    const/4 v0, 0x1

    .line 174
    .end local v2    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_1e
    goto :goto_b

    .line 175
    :cond_1f
    if-eqz v0, :cond_26

    .line 176
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 177
    const/4 v1, 0x1

    return v1

    .line 179
    :cond_26
    const/4 v1, 0x0

    return v1
.end method

.method public saveIfNeeded()V
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    if-eqz v0, :cond_a

    .line 87
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->save()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 90
    :cond_a
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 124
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setCurrentKeyboardLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 125
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 126
    return v0

    .line 128
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z
    .registers 7
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 108
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 109
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 110
    return v0

    .line 113
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public switchKeyboardLayout(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 161
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-eqz v1, :cond_12

    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->switchKeyboardLayout(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 162
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 163
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_12
    return v0
.end method
