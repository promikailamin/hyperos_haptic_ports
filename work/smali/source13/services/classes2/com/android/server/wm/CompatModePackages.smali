.class public final Lcom/android/server/wm/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field private static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field private static final COMPAT_FLAG_ENABLED:I = 0x2

.field public static final DOWNSCALED:J = 0xa09e1d7L

.field public static final DOWNSCALE_30:J = 0xb52b678L

.field public static final DOWNSCALE_35:J = 0xb52b555L

.field public static final DOWNSCALE_40:J = 0xb52b676L

.field public static final DOWNSCALE_45:J = 0xb52b576L

.field public static final DOWNSCALE_50:J = 0xa8bb015L

.field public static final DOWNSCALE_55:J = 0xb52b674L

.field public static final DOWNSCALE_60:J = 0xa8bb033L

.field public static final DOWNSCALE_65:J = 0xb52b550L

.field public static final DOWNSCALE_70:J = 0xa8bb06dL

.field public static final DOWNSCALE_75:J = 0xb52b573L

.field public static final DOWNSCALE_80:J = 0xa8bb021L

.field public static final DOWNSCALE_85:J = 0xb52b546L

.field public static final DOWNSCALE_90:J = 0xae57a6bL

.field private static final DO_NOT_DOWNSCALE_TO_1080P_ON_TV:J = 0x9653d2aL

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method static bridge synthetic -$$Nest$msaveCompatModes(Lcom/android/server/wm/CompatModePackages;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->saveCompatModes()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .registers 16
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 261
    const-string v0, "Error reading compat-packages"

    const-string v1, "ActivityTaskManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 262
    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 263
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "packages-compat.xml"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "compat-mode"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 264
    new-instance v3, Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    .line 266
    const/4 v3, 0x0

    .line 268
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_2d
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v3, v2

    .line 269
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 270
    .local v2, "parser":Landroid/util/TypedXmlPullParser;
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v4

    .line 271
    .local v4, "eventType":I
    :goto_3a
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_46

    if-eq v4, v5, :cond_46

    .line 273
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_44} :catch_af
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_44} :catch_a3
    .catchall {:try_start_2d .. :try_end_44} :catchall_a1

    move v4, v5

    goto :goto_3a

    .line 275
    :cond_46
    if-ne v4, v5, :cond_50

    .line 303
    if-eqz v3, :cond_4f

    .line 305
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 307
    goto :goto_4f

    .line 306
    :catch_4e
    move-exception v0

    .line 276
    :cond_4f
    :goto_4f
    return-void

    .line 279
    :cond_50
    :try_start_50
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "compat-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 281
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    move v4, v8

    .line 283
    :cond_61
    if-ne v4, v6, :cond_92

    .line 284
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 285
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v6, :cond_92

    .line 286
    const-string/jumbo v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 287
    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "pkg":Ljava/lang/String;
    if-eqz v8, :cond_92

    .line 289
    const-string/jumbo v10, "mode"

    const/4 v11, 0x0

    invoke-interface {v2, v9, v10, v11}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 290
    .local v9, "modeInt":I
    iget-object v10, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "modeInt":I
    :cond_92
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8
    :try_end_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_96} :catch_af
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_96} :catch_a3
    .catchall {:try_start_50 .. :try_end_96} :catchall_a1

    move v4, v8

    .line 296
    if-ne v4, v5, :cond_61

    .line 303
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v4    # "eventType":I
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_99
    if-eqz v3, :cond_ba

    .line 305
    :try_start_9b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 307
    :goto_9e
    goto :goto_ba

    .line 306
    :catch_9f
    move-exception v0

    goto :goto_9e

    .line 303
    :catchall_a1
    move-exception v0

    goto :goto_bb

    .line 300
    :catch_a3
    move-exception v2

    .line 301
    .local v2, "e":Ljava/io/IOException;
    if-eqz v3, :cond_a9

    :try_start_a6
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_a1

    .line 303
    .end local v2    # "e":Ljava/io/IOException;
    :cond_a9
    if-eqz v3, :cond_ba

    .line 305
    :try_start_ab
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_9f

    goto :goto_9e

    .line 298
    :catch_af
    move-exception v2

    .line 299
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b0
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_a1

    .line 303
    nop

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_ba

    .line 305
    :try_start_b6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_9f

    goto :goto_9e

    .line 310
    :cond_ba
    :goto_ba
    return-void

    .line 303
    :goto_bb
    if-eqz v3, :cond_c2

    .line 305
    :try_start_bd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    .line 307
    goto :goto_c2

    .line 306
    :catch_c1
    move-exception v1

    .line 309
    :cond_c2
    :goto_c2
    throw v0
.end method

.method private getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 454
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 318
    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private removePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 337
    :cond_10
    return-void
.end method

.method private saveCompatModes()V
    .registers 14

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 580
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 581
    .local v1, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_b5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 583
    const/4 v0, 0x0

    .line 586
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 587
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 588
    .local v2, "out":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 589
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 590
    const-string v3, "compat-packages"

    invoke-interface {v2, v5, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 593
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 594
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_97

    .line 595
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 596
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 597
    .local v7, "pkg":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_5a} :catch_a5

    .line 598
    .local v8, "mode":I
    if-nez v8, :cond_5d

    .line 599
    goto :goto_3e

    .line 601
    :cond_5d
    const/4 v9, 0x0

    .line 603
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    :try_start_61
    invoke-interface {v3, v7, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v10
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_65} :catch_67
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_a5

    move-object v9, v10

    .line 605
    goto :goto_68

    .line 604
    :catch_67
    move-exception v10

    .line 606
    :goto_68
    if-nez v9, :cond_6b

    .line 607
    goto :goto_3e

    .line 609
    :cond_6b
    :try_start_6b
    invoke-virtual {p0, v9}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 610
    .local v10, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v10}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v11

    if-eqz v11, :cond_76

    .line 611
    goto :goto_3e

    .line 613
    :cond_76
    invoke-virtual {v10}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 614
    goto :goto_3e

    .line 616
    :cond_7d
    const-string/jumbo v11, "pkg"

    invoke-interface {v2, v5, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 617
    const-string/jumbo v11, "name"

    invoke-interface {v2, v5, v11, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 618
    const-string/jumbo v11, "mode"

    invoke-interface {v2, v5, v11, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    const-string/jumbo v11, "pkg"

    invoke-interface {v2, v5, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "mode":I
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "info":Landroid/content/res/CompatibilityInfo;
    goto :goto_3e

    .line 622
    :cond_97
    const-string v6, "compat-packages"

    invoke-interface {v2, v5, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 625
    iget-object v5, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_a4} :catch_a5

    .line 631
    .end local v2    # "out":Landroid/util/TypedXmlSerializer;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    goto :goto_b4

    .line 626
    :catch_a5
    move-exception v2

    .line 627
    .local v2, "e1":Ljava/io/IOException;
    const-string v3, "ActivityTaskManager"

    const-string v4, "Error writing compat packages"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    if-eqz v0, :cond_b4

    .line 629
    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 632
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_b4
    :goto_b4
    return-void

    .line 581
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private scheduleWrite()V
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 365
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    return-void
.end method

.method private setPackageFlagLocked(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "set"    # Z

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 459
    .local v0, "curFlags":I
    if-eqz p3, :cond_9

    not-int v1, p2

    and-int/2addr v1, v0

    goto :goto_b

    :cond_9
    or-int v1, v0, p2

    .line 460
    .local v1, "newFlags":I
    :goto_b
    if-eq v0, v1, :cond_21

    .line 461
    if-eqz v1, :cond_19

    .line 462
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 464
    :cond_19
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :goto_1e
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 468
    :cond_21
    return-void
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 12
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 369
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    .line 370
    .local v6, "forceCompat":Z
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(Ljava/lang/String;I)F

    move-result v7

    .line 371
    .local v7, "compatScale":F
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 372
    .local v8, "config":Landroid/content/res/Configuration;
    new-instance v9, Landroid/content/res/CompatibilityInfo;

    iget v2, v8, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object v0, v9

    move-object v1, p1

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    return-object v9
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .registers 4
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 435
    .local v0, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 436
    const/4 v1, -0x2

    return v1

    .line 438
    :cond_c
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 439
    const/4 v1, -0x1

    return v1

    .line 441
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    .line 442
    :cond_1c
    const/4 v1, 0x0

    .line 441
    :goto_1d
    return v1
.end method

.method getCompatScale(Ljava/lang/String;I)F
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 377
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 378
    .local v0, "userHandle":Landroid/os/UserHandle;
    const-wide/32 v1, 0xa09e1d7

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 379
    const-wide/32 v1, 0xae57a6b

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 380
    const v1, 0x3f8e38e4

    return v1

    .line 382
    :cond_1a
    const-wide/32 v1, 0xb52b546

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 383
    const v1, 0x3f969696

    return v1

    .line 385
    :cond_27
    const-wide/32 v1, 0xa8bb021

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 386
    const/high16 v1, 0x3fa00000    # 1.25f

    return v1

    .line 388
    :cond_33
    const-wide/32 v1, 0xb52b573

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 389
    const v1, 0x3faaaaab

    return v1

    .line 391
    :cond_40
    const-wide/32 v1, 0xa8bb06d

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 392
    const v1, 0x3fb6db6e

    return v1

    .line 394
    :cond_4d
    const-wide/32 v1, 0xb52b550

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 395
    const v1, 0x3fc4ec4f

    return v1

    .line 397
    :cond_5a
    const-wide/32 v1, 0xa8bb033

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 398
    const v1, 0x3fd55555

    return v1

    .line 400
    :cond_67
    const-wide/32 v1, 0xb52b674

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 401
    const v1, 0x3fe8ba2e

    return v1

    .line 403
    :cond_74
    const-wide/32 v1, 0xa8bb015

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 404
    const/high16 v1, 0x40000000    # 2.0f

    return v1

    .line 406
    :cond_80
    const-wide/32 v1, 0xb52b576

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 407
    const v1, 0x400e38e4

    return v1

    .line 409
    :cond_8d
    const-wide/32 v1, 0xb52b676

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 410
    const/high16 v1, 0x40200000    # 2.5f

    return v1

    .line 412
    :cond_99
    const-wide/32 v1, 0xb52b555

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 413
    const v1, 0x4036db6e

    return v1

    .line 415
    :cond_a6
    const-wide/32 v1, 0xb52b678

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 416
    const v1, 0x40555555

    return v1

    .line 420
    :cond_b3
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v1, :cond_df

    .line 421
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 422
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    .line 423
    .local v2, "density":F
    iget v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 424
    .local v3, "smallestScreenWidthPx":I
    const/16 v4, 0x438

    if-le v3, v4, :cond_df

    const-wide/32 v4, 0x9653d2a

    invoke-static {v4, v5, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_df

    .line 426
    int-to-float v4, v3

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    return v4

    .line 430
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "density":F
    .end local v3    # "smallestScreenWidthPx":I
    :cond_df
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 475
    goto :goto_f

    .line 474
    :catch_e
    move-exception v1

    .line 476
    :goto_f
    if-nez v0, :cond_13

    .line 477
    const/4 v1, -0x3

    return v1

    .line 479
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    return v1
.end method

.method public getPackages()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, v2

    .line 344
    goto :goto_f

    .line 343
    :catch_e
    move-exception v2

    .line 345
    :goto_f
    if-nez v0, :cond_12

    .line 346
    return-void

    .line 348
    :cond_12
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 349
    .local v2, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v3

    if-nez v3, :cond_24

    .line 350
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v3

    if-nez v3, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    nop

    .line 352
    .local v1, "mayCompat":Z
    :goto_25
    if-eqz p2, :cond_39

    .line 355
    if-nez v1, :cond_39

    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 356
    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 360
    :cond_39
    return-void
.end method

.method public handlePackageDataClearedLocked(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public handlePackageUninstalledLocked(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageFlagLocked(Ljava/lang/String;IZ)V

    .line 451
    return-void
.end method

.method setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .registers 22
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .line 496
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 498
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v5

    .line 501
    .local v5, "curFlags":I
    const/4 v6, 0x1

    const-string v0, "ActivityTaskManager"

    packed-switch v2, :pswitch_data_120

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown screen compat mode req #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; ignoring"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void

    .line 509
    :pswitch_2f
    and-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_35

    move v8, v6

    goto :goto_36

    :cond_35
    const/4 v8, 0x0

    .line 510
    .local v8, "enable":Z
    :goto_36
    goto :goto_3b

    .line 506
    .end local v8    # "enable":Z
    :pswitch_37
    const/4 v8, 0x1

    .line 507
    .restart local v8    # "enable":Z
    goto :goto_3b

    .line 503
    .end local v8    # "enable":Z
    :pswitch_39
    const/4 v8, 0x0

    .line 504
    .restart local v8    # "enable":Z
    nop

    .line 516
    :goto_3b
    move v9, v5

    .line 517
    .local v9, "newFlags":I
    const/4 v10, 0x2

    if-eqz v8, :cond_41

    .line 518
    or-int/2addr v9, v10

    goto :goto_43

    .line 520
    :cond_41
    and-int/lit8 v9, v9, -0x3

    .line 523
    :goto_43
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    .line 524
    .local v11, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v11}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v12

    const-string v13, "Ignoring compat mode change of "

    if-eqz v12, :cond_6a

    .line 525
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "; compatibility never needed"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v9, 0x0

    .line 529
    :cond_6a
    invoke-virtual {v11}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v12

    if-eqz v12, :cond_8b

    .line 530
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; compatibility always needed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v9, 0x0

    .line 535
    :cond_8b
    if-eq v9, v5, :cond_11f

    .line 536
    if-eqz v9, :cond_99

    .line 537
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9e

    .line 539
    :cond_99
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :goto_9e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    .line 545
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 547
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    .line 548
    .local v12, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v12, v4}, Lcom/android/server/wm/Task;->restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 551
    .local v13, "starting":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v14

    .line 552
    .local v14, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v6

    move v15, v0

    .local v15, "i":I
    :goto_bd
    if-ltz v15, :cond_116

    .line 553
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowProcessController;

    .line 554
    .local v6, "app":Lcom/android/server/wm/WindowProcessController;
    iget-object v0, v6, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 555
    const/16 v16, 0x1

    goto :goto_10c

    .line 558
    :cond_d1
    :try_start_d1
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 559
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v0, :cond_fa

    iget-object v0, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .local v17, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v1, v10
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_ec} :catch_109

    const/16 v16, 0x1

    :try_start_ee
    aput-object v17, v1, v16

    move-object/from16 v18, v0

    const v0, 0x4fba1a5b

    const/4 v3, 0x0

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .local v18, "protoLogParam0":Ljava/lang/String;
    invoke-static {v7, v0, v10, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_fc

    .end local v17    # "protoLogParam1":Ljava/lang/String;
    .end local v18    # "protoLogParam0":Ljava/lang/String;
    :cond_fa
    const/16 v16, 0x1

    .line 561
    :goto_fc
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0, v4, v11}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_103} :catch_104

    goto :goto_108

    .line 563
    :catch_104
    move-exception v0

    goto :goto_10c

    .line 558
    :cond_106
    const/16 v16, 0x1

    .line 564
    :goto_108
    goto :goto_10c

    .line 563
    :catch_109
    move-exception v0

    const/16 v16, 0x1

    .line 552
    .end local v6    # "app":Lcom/android/server/wm/WindowProcessController;
    :goto_10c
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v6, v16

    const/4 v10, 0x2

    goto :goto_bd

    .line 567
    .end local v15    # "i":I
    :cond_116
    if-eqz v13, :cond_11f

    .line 568
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 572
    invoke-virtual {v12, v13, v1, v1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 575
    .end local v12    # "rootTask":Lcom/android/server/wm/Task;
    .end local v13    # "starting":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_11f
    return-void

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_39
        :pswitch_37
        :pswitch_2f
    .end packed-switch
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 487
    goto :goto_f

    .line 486
    :catch_e
    move-exception v1

    .line 488
    :goto_f
    if-nez v0, :cond_2b

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void

    .line 492
    :cond_2b
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 493
    return-void
.end method
