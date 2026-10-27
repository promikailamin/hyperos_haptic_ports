.class Lcom/android/server/wm/DisplayWindowSettingsProvider;
.super Ljava/lang/Object;
.source "DisplayWindowSettingsProvider.java"

# interfaces
.implements Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;,
        Lcom/android/server/wm/DisplayWindowSettingsProvider$DisplayIdentifierType;
    }
.end annotation


# static fields
.field private static final DATA_DISPLAY_SETTINGS_FILE_PATH:Ljava/lang/String; = "system/display_settings.xml"

.field private static final IDENTIFIER_PORT:I = 0x1

.field private static final IDENTIFIER_UNIQUE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VENDOR_DISPLAY_SETTINGS_FILE_PATH:Ljava/lang/String; = "etc/display_settings.xml"

.field private static final WM_DISPLAY_COMMIT_TAG:Ljava/lang/String; = "wm-displays"


# instance fields
.field private mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

.field private final mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;


# direct methods
.method static bridge synthetic -$$Nest$smreadSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->readSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smwriteSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->writeSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 93
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    invoke-static {}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getVendorSettingsFile()Landroid/util/AtomicFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    new-instance v1, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    .line 94
    invoke-static {}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettingsFile()Landroid/util/AtomicFile;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V
    .registers 4
    .param p1, "baseSettingsStorage"    # Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;
    .param p2, "overrideSettingsStorage"    # Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    .line 101
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-direct {v0, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    .line 102
    return-void
.end method

.method private static getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .line 369
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object v0

    .line 370
    :catch_a
    move-exception v0

    .line 371
    .local v0, "ignored":Ljava/lang/Exception;
    return-object p2
.end method

.method private static getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 352
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .line 359
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object v0

    .line 360
    :catch_a
    move-exception v0

    .line 361
    .local v0, "ignored":Ljava/lang/Exception;
    return-object p2
.end method

.method private static getOverrideSettingsFile()Landroid/util/AtomicFile;
    .registers 3

    .line 280
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system/display_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    .local v0, "overrideSettingsFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    const-string/jumbo v2, "wm-displays"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getVendorSettingsFile()Landroid/util/AtomicFile;
    .registers 4

    .line 268
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/display_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    .local v0, "vendorFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 272
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 275
    :cond_1b
    new-instance v1, Landroid/util/AtomicFile;

    const-string/jumbo v2, "wm-displays"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static readConfig(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .registers 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "fileData"    # Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    const-string v0, "identifier"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mIdentifierType:I

    .line 428
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 429
    return-void
.end method

.method private static readDisplay(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .registers 8
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "fileData"    # Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_ab

    .line 379
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>()V

    .line 380
    .local v2, "settingsEntry":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    const-string/jumbo v3, "windowingMode"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 382
    const-string/jumbo v3, "userRotationMode"

    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 384
    const-string/jumbo v3, "userRotation"

    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 386
    const-string v3, "forcedWidth"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 388
    const-string v3, "forcedHeight"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 390
    const-string v3, "forcedDensity"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 392
    const-string v3, "forcedScalingMode"

    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 394
    const-string/jumbo v3, "removeContentMode"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 396
    const-string/jumbo v3, "shouldShowWithInsecureKeyguard"

    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 398
    const-string/jumbo v3, "shouldShowSystemDecors"

    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 400
    const-string/jumbo v3, "shouldShowIme"

    invoke-static {p0, v3, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 402
    .local v3, "shouldShowIme":Ljava/lang/Boolean;
    if-eqz v3, :cond_7e

    .line 403
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_76

    goto :goto_77

    .line 404
    :cond_76
    const/4 v4, 0x1

    .line 403
    :goto_77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    goto :goto_86

    .line 406
    :cond_7e
    const-string v4, "imePolicy"

    invoke-static {p0, v4, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 409
    :goto_86
    const-string v4, "fixedToUserRotation"

    invoke-static {p0, v4, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 411
    const-string v4, "ignoreOrientationRequest"

    invoke-static {p0, v4, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 413
    const-string v4, "ignoreDisplayCutout"

    invoke-static {p0, v4, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 415
    const-string v4, "dontMoveToTop"

    invoke-static {p0, v4, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 418
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .end local v2    # "settingsEntry":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .end local v3    # "shouldShowIme":Ljava/lang/Boolean;
    :cond_ab
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 421
    return-void
.end method

.method private static readSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .registers 13
    .param p0, "storage"    # Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;

    .line 289
    const-string v0, "Failed parsing "

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    :try_start_5
    invoke-interface {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;->openRead()Ljava/io/InputStream;

    move-result-object v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_132

    .line 293
    .local v3, "stream":Ljava/io/InputStream;
    nop

    .line 294
    new-instance v4, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    invoke-direct {v4, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData-IA;)V

    move-object v2, v4

    .line 295
    .local v2, "fileData":Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    const/4 v4, 0x0

    .line 297
    .local v4, "success":Z
    :try_start_11
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 299
    .local v5, "parser":Landroid/util/TypedXmlPullParser;
    :goto_15
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v6, v9, :cond_21

    if-eq v7, v8, :cond_21

    goto :goto_15

    .line 304
    :cond_21
    if-ne v7, v9, :cond_80

    .line 308
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 309
    .local v6, "outerDepth":I
    :cond_27
    :goto_27
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v7, v9

    if-eq v9, v8, :cond_77

    const/4 v9, 0x3

    if-ne v7, v9, :cond_37

    .line 310
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_77

    .line 311
    :cond_37
    if-eq v7, v9, :cond_27

    const/4 v9, 0x4

    if-ne v7, v9, :cond_3d

    .line 312
    goto :goto_27

    .line 315
    :cond_3d
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 316
    .local v9, "tagName":Ljava/lang/String;
    const-string v10, "display"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 317
    invoke-static {v5, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->readDisplay(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    goto :goto_76

    .line 318
    :cond_4d
    const-string v10, "config"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 319
    invoke-static {v5, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->readConfig(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    goto :goto_76

    .line 321
    :cond_59
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <display-settings>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 322
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 321
    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_76
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_76} :catch_10a
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_76} :catch_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_76} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_76} :catch_be
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_76} :catch_a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_76} :catch_8c
    .catchall {:try_start_11 .. :try_end_76} :catchall_89

    .line 325
    .end local v9    # "tagName":Ljava/lang/String;
    :goto_76
    goto :goto_27

    .line 326
    :cond_77
    const/4 v4, 0x1

    .line 341
    .end local v5    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v6    # "outerDepth":I
    .end local v7    # "type":I
    :try_start_78
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7d

    .line 343
    :goto_7b
    goto/16 :goto_124

    .line 342
    :catch_7d
    move-exception v0

    .line 344
    goto/16 :goto_124

    .line 305
    .restart local v5    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v7    # "type":I
    :cond_80
    :try_start_80
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "no start tag found"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "fileData":Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "success":Z
    .end local p0    # "storage":Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;
    throw v6
    :try_end_89
    .catch Ljava/lang/IllegalStateException; {:try_start_80 .. :try_end_89} :catch_10a
    .catch Ljava/lang/NullPointerException; {:try_start_80 .. :try_end_89} :catch_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_89} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_89} :catch_be
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_89} :catch_a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_80 .. :try_end_89} :catch_8c
    .catchall {:try_start_80 .. :try_end_89} :catchall_89

    .line 340
    .end local v5    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v7    # "type":I
    .restart local v2    # "fileData":Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .restart local v3    # "stream":Ljava/io/InputStream;
    .restart local v4    # "success":Z
    .restart local p0    # "storage":Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;
    :catchall_89
    move-exception v0

    goto/16 :goto_12c

    .line 337
    :catch_8c
    move-exception v5

    .line 338
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_8d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_8d .. :try_end_a1} :catchall_89

    .line 341
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_7d

    goto :goto_7b

    .line 335
    :catch_a5
    move-exception v5

    .line 336
    .local v5, "e":Ljava/io/IOException;
    :try_start_a6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_89

    .line 341
    .end local v5    # "e":Ljava/io/IOException;
    :try_start_ba
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_7d

    goto :goto_7b

    .line 333
    :catch_be
    move-exception v5

    .line 334
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_bf
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_bf .. :try_end_d3} :catchall_89

    .line 341
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_7d

    goto :goto_7b

    .line 331
    :catch_d7
    move-exception v5

    .line 332
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_d8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_d8 .. :try_end_ec} :catchall_89

    .line 341
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :try_start_ec
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_7d

    goto :goto_7b

    .line 329
    :catch_f0
    move-exception v5

    .line 330
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_f1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_f1 .. :try_end_105} :catchall_89

    .line 341
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :try_start_105
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_7d

    goto/16 :goto_7b

    .line 327
    :catch_10a
    move-exception v5

    .line 328
    .local v5, "e":Ljava/lang/IllegalStateException;
    :try_start_10b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_10b .. :try_end_11f} :catchall_89

    .line 341
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :try_start_11f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_7d

    goto/16 :goto_7b

    .line 345
    :goto_124
    if-nez v4, :cond_12b

    .line 346
    iget-object v0, v2, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 348
    :cond_12b
    return-object v2

    .line 341
    :goto_12c
    :try_start_12c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_130

    .line 343
    goto :goto_131

    .line 342
    :catch_130
    move-exception v1

    .line 344
    :goto_131
    throw v0

    .line 290
    .end local v2    # "fileData":Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "success":Z
    :catch_132
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "No existing display settings, starting empty"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-object v2
.end method

.method private static writeSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .registers 15
    .param p0, "storage"    # Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;
    .param p1, "data"    # Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    .line 434
    const-string v0, "display"

    const-string v1, "config"

    const-string v2, "display-settings"

    const-string v3, "WindowManager"

    :try_start_8
    invoke-interface {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->startWrite()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_150

    .line 438
    .local v4, "stream":Ljava/io/OutputStream;
    nop

    .line 440
    const/4 v5, 0x0

    .line 442
    .local v5, "success":Z
    :try_start_e
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v6

    .line 443
    .local v6, "out":Landroid/util/TypedXmlSerializer;
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 445
    invoke-interface {v6, v8, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    invoke-interface {v6, v8, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    const-string v7, "identifier"

    iget v9, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mIdentifierType:I

    invoke-interface {v6, v8, v7, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    invoke-interface {v6, v8, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_136

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 453
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 454
    .local v9, "displayIdentifier":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 455
    .local v10, "settingsEntry":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_54

    .line 456
    goto :goto_35

    .line 459
    :cond_54
    invoke-interface {v6, v8, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    const-string/jumbo v11, "name"

    invoke-interface {v6, v8, v11, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 461
    iget v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    if-eqz v11, :cond_69

    .line 462
    const-string/jumbo v11, "windowingMode"

    iget v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    :cond_69
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    if-eqz v11, :cond_79

    .line 465
    const-string/jumbo v11, "userRotationMode"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 466
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 465
    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    :cond_79
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    if-eqz v11, :cond_89

    .line 469
    const-string/jumbo v11, "userRotation"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 470
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 469
    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    :cond_89
    iget v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eqz v11, :cond_9f

    iget v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-eqz v11, :cond_9f

    .line 473
    const-string v11, "forcedWidth"

    iget v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    const-string v11, "forcedHeight"

    iget v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    :cond_9f
    iget v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-eqz v11, :cond_aa

    .line 477
    const-string v11, "forcedDensity"

    iget v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    :cond_aa
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    if-eqz v11, :cond_b9

    .line 480
    const-string v11, "forcedScalingMode"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 481
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 480
    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    :cond_b9
    iget v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-eqz v11, :cond_c5

    .line 484
    const-string/jumbo v11, "removeContentMode"

    iget v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    :cond_c5
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    if-eqz v11, :cond_d5

    .line 487
    const-string/jumbo v11, "shouldShowWithInsecureKeyguard"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 488
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 487
    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    :cond_d5
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-eqz v11, :cond_e5

    .line 491
    const-string/jumbo v11, "shouldShowSystemDecors"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 492
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 491
    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    :cond_e5
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    if-eqz v11, :cond_f4

    .line 495
    const-string v11, "imePolicy"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    :cond_f4
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    if-eqz v11, :cond_103

    .line 498
    const-string v11, "fixedToUserRotation"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 499
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 498
    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    :cond_103
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-eqz v11, :cond_112

    .line 502
    const-string v11, "ignoreOrientationRequest"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 503
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 502
    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    :cond_112
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-eqz v11, :cond_121

    .line 506
    const-string v11, "ignoreDisplayCutout"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 507
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 506
    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    :cond_121
    iget-object v11, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-eqz v11, :cond_130

    .line 510
    const-string v11, "dontMoveToTop"

    iget-object v12, v10, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 511
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 510
    invoke-interface {v6, v8, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    :cond_130
    invoke-interface {v6, v8, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    nop

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;>;"
    .end local v9    # "displayIdentifier":Ljava/lang/String;
    .end local v10    # "settingsEntry":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    goto/16 :goto_35

    .line 516
    :cond_136
    invoke-interface {v6, v8, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    invoke-interface {v6}, Landroid/util/TypedXmlSerializer;->endDocument()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13c} :catch_140
    .catchall {:try_start_e .. :try_end_13c} :catchall_13e

    .line 518
    const/4 v5, 0x1

    .line 522
    .end local v6    # "out":Landroid/util/TypedXmlSerializer;
    goto :goto_147

    :catchall_13e
    move-exception v0

    goto :goto_14c

    .line 519
    :catch_140
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    :try_start_141
    const-string v1, "Failed to write display window settings."

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_146
    .catchall {:try_start_141 .. :try_end_146} :catchall_13e

    .line 522
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_147
    invoke-interface {p0, v4, v5}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 523
    nop

    .line 524
    return-void

    .line 522
    :goto_14c
    invoke-interface {p0, v4, v5}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 523
    throw v0

    .line 435
    .end local v4    # "stream":Ljava/io/OutputStream;
    .end local v5    # "success":Z
    :catch_150
    move-exception v0

    .line 436
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write display settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method


# virtual methods
.method public getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .registers 4
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 149
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-object v0
.end method

.method public getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .registers 5
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->getSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 136
    .local v0, "baseSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 137
    .local v1, "overrideSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    if-nez v0, :cond_14

    .line 138
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-object v2

    .line 140
    :cond_14
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 141
    .local v2, "mergedSettings":Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->updateFrom(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z

    .line 142
    return-object v2
.end method

.method setBaseSettingsFilePath(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 112
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 113
    .local v0, "file":Ljava/io/File;
    :goto_9
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 114
    new-instance v1, Landroid/util/AtomicFile;

    const-string/jumbo v2, "wm-displays"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "settingsFile":Landroid/util/AtomicFile;
    goto :goto_3c

    .line 116
    .end local v1    # "settingsFile":Landroid/util/AtomicFile;
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist, using vendor defaults"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getVendorSettingsFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 119
    .restart local v1    # "settingsFile":Landroid/util/AtomicFile;
    :goto_3c
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->setBaseSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    .line 120
    return-void
.end method

.method setBaseSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V
    .registers 3
    .param p1, "baseSettingsStorage"    # Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;

    .line 129
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    .line 130
    return-void
.end method

.method public updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V
    .registers 4
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "overrides"    # Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->updateSettingsEntry(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 156
    return-void
.end method
