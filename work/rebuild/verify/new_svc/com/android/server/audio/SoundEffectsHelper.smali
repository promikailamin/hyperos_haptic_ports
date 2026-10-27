.class public Lcom/android/server/audio/SoundEffectsHelper;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEffects:[I

.field public final mPlayerAvailableCb:Ljava/util/function/Consumer;

.field public final mResources:Ljava/util/List;

.field public final mSfxAttenuationDb:I

.field public mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

.field public final mSfxLogger:Lcom/android/server/utils/EventLogger;

.field public mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

.field public mSoundPool:Landroid/media/SoundPool;

.field public mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmResources(Lcom/android/server/audio/SoundEffectsHelper;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundPool(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundPoolLoader(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSfxHandler(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSoundPoolLoader(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindResourceBySampleId(Lcom/android/server/audio/SoundEffectsHelper;I)Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->findResourceBySampleId(I)Lcom/android/server/audio/SoundEffectsHelper$Resource;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlogEvent(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->onLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/SoundEffectsHelper;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 6

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x1a

    const-string v2, "Sound Effects Loading"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/utils/EventLogger;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    const/16 v0, 0x10

    .line 111
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    .line 118
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0166

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    .line 121
    iput-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPlayerAvailableCb:Ljava/util/function/Consumer;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->startWorker()V

    return-void
.end method

.method public static cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 3

    if-eqz p0, :cond_20

    .line 305
    :try_start_2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 306
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.SfxHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method


# virtual methods
.method public final allNavigationRepeatSoundsParsed(Ljava/util/Map;)Z
    .registers 5

    const/16 p0, 0xc

    .line 427
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v2, 0xd

    .line 428
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr p0, v2

    const/16 v2, 0xe

    .line 429
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr p0, v2

    const/16 v2, 0xf

    .line 430
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_4d

    const/4 p0, 0x1

    return p0

    :cond_4d
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    if-eqz v0, :cond_25

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "  "

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_39

    .line 147
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Default attenuation (dB): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final findOrAddResourceByFileName(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 435
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 436
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iget-object v1, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    :cond_1d
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 441
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    invoke-direct {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public final findResourceBySampleId(I)Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .registers 4

    .line 446
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 447
    iget v1, v0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .registers 4

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/media/audio/ui/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 328
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 329
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3d
    return-object p0
.end method

.method public final loadSoundAssetDefaults()V
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    const-string v3, "Effect_Tick.ogg"

    invoke-direct {v2, v3}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public final loadSoundAssets()V
    .registers 14

    const/4 v0, 0x0

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 350
    const-string v2, "AS.SfxHelper"

    .line 353
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_14c

    .line 357
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundAssetDefaults()V

    const/4 v3, 0x0

    .line 360
    :try_start_15
    iget-object v4, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1170001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_22} :catch_12f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_22} :catch_12d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_22} :catch_12b
    .catchall {:try_start_15 .. :try_end_22} :catchall_129

    .line 362
    :try_start_22
    const-string v5, "audio_assets"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v5, "version"

    invoke-interface {v4, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 365
    const-string v7, "1.0"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_125

    .line 367
    :cond_3b
    :goto_3b
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 368
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    if-nez v5, :cond_47

    goto/16 :goto_f2

    .line 372
    :cond_47
    const-string v8, "group"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 373
    const-string/jumbo v5, "name"

    invoke-interface {v4, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 374
    const-string/jumbo v7, "touch_sounds"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported group name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :catchall_74
    move-exception p0

    move-object v3, v4

    goto/16 :goto_14d

    :catch_78
    move-exception p0

    move-object v3, v4

    goto/16 :goto_131

    :catch_7c
    move-exception p0

    move-object v3, v4

    goto/16 :goto_13c

    :catch_80
    move-exception p0

    move-object v3, v4

    goto/16 :goto_144

    .line 377
    :cond_84
    const-string v8, "asset"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 378
    const-string v5, "id"

    invoke-interface {v4, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    const-string v8, "file"

    invoke-interface {v4, v3, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_98
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_98} :catch_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_98} :catch_7c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_98} :catch_78
    .catchall {:try_start_22 .. :try_end_98} :catchall_74

    .line 383
    :try_start_98
    const-class v9, Landroid/media/AudioManager;

    invoke-virtual {v9, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 384
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a2} :catch_dc
    .catchall {:try_start_98 .. :try_end_a2} :catchall_74

    .line 389
    :try_start_a2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v7

    .line 390
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-le v10, v7, :cond_d2

    .line 392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate definition for sound ID: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_d2
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    invoke-virtual {p0, v8}, Lcom/android/server/audio/SoundEffectsHelper;->findOrAddResourceByFileName(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v9

    goto/16 :goto_3b

    .line 386
    :catch_dc
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid sound ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 400
    :cond_f2
    :goto_f2
    invoke-virtual {p0, v6}, Lcom/android/server/audio/SoundEffectsHelper;->allNavigationRepeatSoundsParsed(Ljava/util/Map;)Z

    move-result v3

    const/16 v5, 0xb

    .line 401
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_109

    move v0, v7

    :cond_109
    if-nez v3, :cond_10d

    if-eqz v0, :cond_125

    .line 403
    :cond_10d
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_11e

    if-eqz v3, :cond_11e

    .line 405
    invoke-virtual {p0, v7}, Landroid/media/AudioManager;->setNavigationRepeatSoundEffectsEnabled(Z)V

    :cond_11e
    if-eqz p0, :cond_125

    if-eqz v0, :cond_125

    .line 408
    invoke-virtual {p0, v7}, Landroid/media/AudioManager;->setHomeSoundEffectEnabled(Z)V
    :try_end_125
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a2 .. :try_end_125} :catch_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_125} :catch_7c
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_125} :catch_78
    .catchall {:try_start_a2 .. :try_end_125} :catchall_74

    .line 420
    :cond_125
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_14c

    :catchall_129
    move-exception p0

    goto :goto_14d

    :catch_12b
    move-exception p0

    goto :goto_131

    :catch_12d
    move-exception p0

    goto :goto_13c

    :catch_12f
    move-exception p0

    goto :goto_144

    .line 417
    :goto_131
    :try_start_131
    const-string v0, "I/O exception reading sound assets"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_129

    if-eqz v3, :cond_14c

    .line 420
    :goto_138
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_14c

    .line 415
    :goto_13c
    :try_start_13c
    const-string v0, "XML parser exception reading sound assets"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_14c

    goto :goto_138

    .line 413
    :goto_144
    const-string v0, "audio assets file not found"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_149
    .catchall {:try_start_13c .. :try_end_149} :catchall_129

    if-eqz v3, :cond_14c

    goto :goto_138

    :cond_14c
    :goto_14c
    return-void

    :goto_14d
    if-eqz v3, :cond_152

    .line 420
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 422
    :cond_152
    throw p0
.end method

.method public loadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    return-void
.end method

.method public final logEvent(Ljava/lang/String;)V
    .registers 3

    .line 172
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public final onLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 11

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    if-eqz v0, :cond_8

    .line 179
    invoke-virtual {v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    return-void

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    if-eqz p1, :cond_12

    .line 184
    invoke-interface {p1, v1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    :cond_12
    return-void

    .line 189
    :cond_13
    const-string v0, "effects loading started"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 190
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v2, 0x4

    .line 191
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0xd

    .line 193
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 194
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 192
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 197
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPlayerAvailableCb:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundAssets()V

    .line 200
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 201
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/audio/SoundEffectsHelper$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 214
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 215
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v4

    .line 216
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v5, v4, v0}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_82

    .line 218
    iput v5, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 219
    iput-boolean v0, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 222
    :cond_82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "effect "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rejected by SoundPool"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SoundPool could not load file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SfxHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :cond_b2
    if-lez v2, :cond_bf

    const/4 v7, 0x0

    const/16 v8, 0x3a98

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    .line 228
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    return-void

    :cond_bf
    move-object v3, p0

    .line 230
    const-string p0, "effects loading completed, no effects to load"

    invoke-virtual {v3, p0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 231
    iget-object p0, v3, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    return-void
.end method

.method public onPlaySoundEffect(II)V
    .registers 12

    .line 263
    const-string v1, "AS.SfxHelper"

    if-gez p2, :cond_14

    .line 264
    iget p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    float-to-double v2, p2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p2, v2

    :goto_12
    move v4, p2

    goto :goto_19

    :cond_14
    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    goto :goto_12

    .line 269
    :goto_19
    iget-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    aget p1, v0, p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 270
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_3a

    iget v3, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v3, :cond_3a

    iget-boolean p2, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-eqz p2, :cond_3a

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move v5, v4

    .line 271
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void

    .line 273
    :cond_3a
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    .line 275
    :try_start_3f
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 277
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 278
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepare()V

    .line 279
    invoke-virtual {p2, v4}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 280
    new-instance p1, Lcom/android/server/audio/SoundEffectsHelper$3;

    invoke-direct {p1, p0}, Lcom/android/server/audio/SoundEffectsHelper$3;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 285
    new-instance p1, Lcom/android/server/audio/SoundEffectsHelper$4;

    invoke-direct {p1, p0}, Lcom/android/server/audio/SoundEffectsHelper$4;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 291
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_63} :catch_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_63} :catch_67
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_63} :catch_64

    return-void

    :catch_64
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    :catch_67
    move-exception v0

    move-object p0, v0

    goto :goto_82

    :catch_6a
    move-exception v0

    move-object p0, v0

    goto :goto_97

    .line 297
    :goto_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MediaPlayer IllegalStateException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 295
    :goto_82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 293
    :goto_97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MediaPlayer IOException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ab
    return-void
.end method

.method public onUnloadSoundEffects()V
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_5

    return-void

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    if-eqz v0, :cond_11

    .line 240
    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/audio/SoundEffectsHelper$2;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 248
    :cond_11
    const-string v0, "effects unloading started"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 250
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v2, :cond_1c

    .line 251
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 252
    invoke-virtual {v1}, Lcom/android/server/audio/SoundEffectsHelper$Resource;->unload()V

    goto :goto_1c

    .line 255
    :cond_35
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 257
    const-string v0, "effects unloading completed"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public playSoundEffect(II)V
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendMsg(IIILjava/lang/Object;I)V
    .registers 6

    .line 168
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p5

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final startWorker()V
    .registers 4

    .line 154
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    monitor-enter p0

    .line 157
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_13

    if-nez v0, :cond_37

    .line 159
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_15
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_b

    :catchall_13
    move-exception v0

    goto :goto_39

    .line 161
    :catch_15
    :try_start_15
    const-string v0, "AS.SfxHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted while waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 164
    :cond_37
    monitor-exit p0

    return-void

    :goto_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_13

    throw v0
.end method

.method public unloadSoundEffects()V
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    return-void
.end method
