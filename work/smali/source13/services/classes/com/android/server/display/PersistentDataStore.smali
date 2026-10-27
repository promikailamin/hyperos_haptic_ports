.class final Lcom/android/server/display/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PersistentDataStore$Injector;,
        Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;,
        Lcom/android/server/display/PersistentDataStore$StableDeviceValues;,
        Lcom/android/server/display/PersistentDataStore$DisplayState;
    }
.end annotation


# static fields
.field private static final ATTR_DEVICE_ADDRESS:Ljava/lang/String; = "deviceAddress"

.field private static final ATTR_DEVICE_ALIAS:Ljava/lang/String; = "deviceAlias"

.field private static final ATTR_DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTR_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_UNIQUE_ID:Ljava/lang/String; = "unique-id"

.field private static final ATTR_USER_SERIAL:Ljava/lang/String; = "user-serial"

.field static final TAG:Ljava/lang/String; = "DisplayManager.PersistentDataStore"

.field private static final TAG_BRIGHTNESS_CONFIGURATION:Ljava/lang/String; = "brightness-configuration"

.field private static final TAG_BRIGHTNESS_CONFIGURATIONS:Ljava/lang/String; = "brightness-configurations"

.field private static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "brightness-value"

.field private static final TAG_COLOR_MODE:Ljava/lang/String; = "color-mode"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "display"

.field private static final TAG_DISPLAY_MANAGER_STATE:Ljava/lang/String; = "display-manager-state"

.field private static final TAG_DISPLAY_STATES:Ljava/lang/String; = "display-states"

.field private static final TAG_REMEMBERED_WIFI_DISPLAYS:Ljava/lang/String; = "remembered-wifi-displays"

.field private static final TAG_STABLE_DEVICE_VALUES:Ljava/lang/String; = "stable-device-values"

.field private static final TAG_STABLE_DISPLAY_HEIGHT:Ljava/lang/String; = "stable-display-height"

.field private static final TAG_STABLE_DISPLAY_WIDTH:Ljava/lang/String; = "stable-display-width"

.field private static final TAG_WIFI_DISPLAY:Ljava/lang/String; = "wifi-display"


# instance fields
.field private mDirty:Z

.field private final mDisplayStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/PersistentDataStore$DisplayState;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileAccessLock:Ljava/lang/Object;

.field private mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

.field private final mHandler:Landroid/os/Handler;

.field private mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

.field private mLoaded:Z

.field private mRememberedWifiDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/WifiDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 151
    new-instance v0, Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/display/PersistentDataStore;-><init>(Lcom/android/server/display/PersistentDataStore$Injector;)V

    .line 152
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/PersistentDataStore$Injector;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/display/PersistentDataStore$Injector;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/PersistentDataStore;-><init>(Lcom/android/server/display/PersistentDataStore$Injector;Landroid/os/Handler;)V

    .line 157
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/PersistentDataStore$Injector;Landroid/os/Handler;)V
    .registers 5
    .param p1, "injector"    # Lcom/android/server/display/PersistentDataStore$Injector;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 132
    new-instance v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;-><init>(Lcom/android/server/display/PersistentDataStore$StableDeviceValues-IA;)V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 135
    new-instance v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 162
    iput-object p2, p0, Lcom/android/server/display/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 163
    return-void
.end method

.method private clearState()V
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 435
    return-void
.end method

.method private findRememberedWifiDisplay(Ljava/lang/String;)I
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 251
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 252
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 253
    return v1

    .line 251
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 256
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method private getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;
    .registers 6
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "createIfAbsent"    # Z

    .line 412
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 413
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 414
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 415
    new-instance v1, Lcom/android/server/display/PersistentDataStore$DisplayState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$DisplayState-IA;)V

    move-object v0, v1

    .line 416
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 419
    :cond_1e
    return-object v0
.end method

.method private load()V
    .registers 6

    .line 438
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_42

    .line 443
    :try_start_6
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore$Injector;->openRead()Ljava/io/InputStream;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_c} :catch_3f
    .catchall {:try_start_6 .. :try_end_c} :catchall_42

    .line 446
    .local v1, "is":Ljava/io/InputStream;
    nop

    .line 450
    :try_start_d
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 451
    .local v2, "parser":Landroid/util/TypedXmlPullParser;
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore;->loadFromXml(Landroid/util/TypedXmlPullParser;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_14} :catch_1a
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 459
    :try_start_14
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_42

    .line 460
    goto :goto_38

    .line 459
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    :catchall_18
    move-exception v2

    goto :goto_3a

    .line 455
    :catch_1a
    move-exception v2

    .line 456
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1b
    const-string v3, "DisplayManager.PersistentDataStore"

    const-string v4, "Failed to load display manager persistent store data."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_18

    .line 459
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_25
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_42

    goto :goto_37

    .line 452
    :catch_29
    move-exception v2

    .line 453
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2a
    const-string v3, "DisplayManager.PersistentDataStore"

    const-string v4, "Failed to load display manager persistent store data."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_18

    .line 459
    .end local v2    # "ex":Ljava/io/IOException;
    :try_start_34
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 460
    :goto_37
    nop

    .line 461
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_38
    monitor-exit v0

    .line 462
    return-void

    .line 459
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_3a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 460
    nop

    .end local p0    # "this":Lcom/android/server/display/PersistentDataStore;
    throw v2

    .line 444
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/display/PersistentDataStore;
    :catch_3f
    move-exception v1

    .line 445
    .local v1, "ex":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-void

    .line 461
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private loadDisplaysFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 541
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 542
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 543
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 544
    const/4 v1, 0x0

    const-string/jumbo v2, "unique-id"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "uniqueId":Ljava/lang/String;
    if-eqz v2, :cond_3f

    .line 549
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 553
    new-instance v3, Lcom/android/server/display/PersistentDataStore$DisplayState;

    invoke-direct {v3, v1}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$DisplayState-IA;)V

    move-object v1, v3

    .line 554
    .local v1, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 555
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .end local v1    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    .end local v2    # "uniqueId":Ljava/lang/String;
    goto :goto_4

    .line 550
    .restart local v2    # "uniqueId":Ljava/lang/String;
    :cond_37
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Found duplicate display."

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 546
    :cond_3f
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing unique-id attribute on display."

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    .end local v2    # "uniqueId":Ljava/lang/String;
    :cond_47
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

    .line 497
    const-string v0, "display-manager-state"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 498
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 499
    .local v0, "outerDepth":I
    :cond_9
    :goto_9
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 500
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remembered-wifi-displays"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 501
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadRememberedWifiDisplaysFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 503
    :cond_1f
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display-states"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 504
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadDisplaysFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 506
    :cond_2e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stable-device-values"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 507
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 509
    :cond_40
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brightness-configurations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 510
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    goto :goto_9

    .line 513
    :cond_52
    return-void
.end method

.method private loadRememberedWifiDisplaysFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 517
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 518
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 519
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi-display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 520
    const/4 v1, 0x0

    const-string v2, "deviceAddress"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "deviceAddress":Ljava/lang/String;
    const-string v3, "deviceName"

    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 522
    .local v10, "deviceName":Ljava/lang/String;
    const-string v3, "deviceAlias"

    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "deviceAlias":Ljava/lang/String;
    if-eqz v2, :cond_4e

    if-eqz v10, :cond_4e

    .line 527
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_46

    .line 532
    iget-object v11, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    new-instance v12, Landroid/hardware/display/WifiDisplay;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v12

    move-object v4, v2

    move-object v5, v10

    move-object v6, v1

    invoke-direct/range {v3 .. v9}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v1    # "deviceAlias":Ljava/lang/String;
    .end local v2    # "deviceAddress":Ljava/lang/String;
    .end local v10    # "deviceName":Ljava/lang/String;
    goto :goto_4

    .line 528
    .restart local v1    # "deviceAlias":Ljava/lang/String;
    .restart local v2    # "deviceAddress":Ljava/lang/String;
    .restart local v10    # "deviceName":Ljava/lang/String;
    :cond_46
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Found duplicate wifi display device address."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 524
    :cond_4e
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing deviceAddress or deviceName attribute on wifi-display."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 537
    .end local v1    # "deviceAlias":Ljava/lang/String;
    .end local v2    # "deviceAddress":Ljava/lang/String;
    .end local v10    # "deviceName":Ljava/lang/String;
    :cond_56
    return-void
.end method

.method private save()V
    .registers 5

    .line 467
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 469
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 470
    .local v1, "serializer":Landroid/util/TypedXmlSerializer;
    invoke-direct {p0, v1}, Lcom/android/server/display/PersistentDataStore;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 471
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 473
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 474
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/PersistentDataStore;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_21

    .line 492
    nop

    .end local v1    # "serializer":Landroid/util/TypedXmlSerializer;
    goto :goto_29

    .line 490
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_21
    move-exception v0

    .line 491
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "DisplayManager.PersistentDataStore"

    const-string v2, "Failed to process the XML serializer."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_29
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

    .line 561
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 562
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 563
    const-string v0, "display-manager-state"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    const-string/jumbo v1, "remembered-wifi-displays"

    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/WifiDisplay;

    .line 566
    .local v4, "display":Landroid/hardware/display/WifiDisplay;
    const-string/jumbo v5, "wifi-display"

    invoke-interface {p1, v2, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceAddress"

    invoke-interface {p1, v2, v7, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceName"

    invoke-interface {p1, v2, v7, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 570
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceAlias"

    invoke-interface {p1, v2, v7, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    :cond_53
    invoke-interface {p1, v2, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    .end local v4    # "display":Landroid/hardware/display/WifiDisplay;
    goto :goto_20

    .line 574
    :cond_57
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    const-string v1, "display-states"

    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 577
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 578
    .local v5, "uniqueId":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 579
    .local v6, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    const-string v7, "display"

    invoke-interface {p1, v2, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    const-string/jumbo v8, "unique-id"

    invoke-interface {p1, v2, v8, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 581
    invoke-virtual {v6, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 582
    invoke-interface {p1, v2, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    .end local v5    # "uniqueId":Ljava/lang/String;
    .end local v6    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    goto :goto_69

    .line 584
    :cond_93
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 585
    const-string/jumbo v1, "stable-device-values"

    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 586
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 587
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    const-string v1, "brightness-configurations"

    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 590
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 591
    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 593
    return-void
.end method

.method private setDirty()V
    .registers 2

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 431
    return-void
.end method


# virtual methods
.method public applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .registers 12
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 187
    if-eqz p1, :cond_42

    .line 188
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v1

    .line 192
    .local v1, "index":I
    if-ltz v1, :cond_1c

    .line 193
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_1c
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 196
    new-instance v9, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v8

    move-object v2, v9

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 196
    return-object v9

    .line 200
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_42
    return-object p1
.end method

.method public applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 7
    .param p1, "displays"    # [Landroid/hardware/display/WifiDisplay;

    .line 204
    move-object v0, p1

    .line 205
    .local v0, "results":[Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_1e

    .line 206
    array-length v1, p1

    .line 207
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_1e

    .line 208
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 209
    .local v3, "result":Landroid/hardware/display/WifiDisplay;
    aget-object v4, p1, v2

    if-eq v3, v4, :cond_1b

    .line 210
    if-ne v0, p1, :cond_19

    .line 211
    new-array v0, v1, [Landroid/hardware/display/WifiDisplay;

    .line 212
    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    :cond_19
    aput-object v3, v0, v2

    .line 207
    .end local v3    # "result":Landroid/hardware/display/WifiDisplay;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 218
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1e
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 596
    const-string v0, "PersistentDataStore"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const-string v0, "  RememberedWifiDisplays:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ": "

    const-string v4, "    "

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    .line 602
    .local v2, "display":Landroid/hardware/display/WifiDisplay;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    .end local v2    # "display":Landroid/hardware/display/WifiDisplay;
    move v0, v5

    goto :goto_41

    .line 604
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_71
    const-string v1, "  DisplayStates:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x0

    .line 606
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v5, "      "

    if-eqz v2, :cond_be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 607
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/display/PersistentDataStore$DisplayState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 609
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    move v0, v7

    goto :goto_81

    .line 610
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_be
    const-string v1, "  StableDeviceValues:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v1, p1, v5}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 612
    const-string v1, "  GlobalBrightnessConfigurations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v1, p1, v5}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)Z
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 240
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "index":I
    if-ltz v0, :cond_13

    .line 242
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 243
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 244
    const/4 v1, 0x1

    return v1

    .line 246
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public getBrightness(Lcom/android/server/display/DisplayDevice;)F
    .registers 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 283
    const/high16 v0, 0x7fc00000    # Float.NaN

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1c

    .line 286
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v1

    .line 287
    .local v1, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v1, :cond_17

    .line 288
    return v0

    .line 290
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getBrightness()F

    move-result v0

    return v0

    .line 284
    .end local v1    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    :cond_1c
    :goto_1c
    return v0
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "userSerial"    # I

    .line 407
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 408
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessConfigurationForDisplayLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 5
    .param p1, "uniqueDisplayId"    # Ljava/lang/String;
    .param p2, "userSerial"    # I

    .line 398
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 399
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 400
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-eqz v0, :cond_12

    .line 401
    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    return-object v1

    .line 403
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getColorMode(Lcom/android/server/display/DisplayDevice;)I
    .registers 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 260
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 261
    return v1

    .line 263
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v0

    .line 264
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v0, :cond_14

    .line 265
    return v1

    .line 267
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getColorMode()I

    move-result v1

    return v1
.end method

.method public getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, "index":I
    if-ltz v0, :cond_12

    .line 176
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    return-object v1

    .line 178
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;
    .registers 3

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 183
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .registers 2

    .line 360
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 361
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-static {v0}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->-$$Nest$mgetDisplaySize(Lcom/android/server/display/PersistentDataStore$StableDeviceValues;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;)F
    .registers 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 325
    const/high16 v0, 0x7fc00000    # Float.NaN

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1c

    .line 328
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v1

    .line 329
    .local v1, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v1, :cond_17

    .line 330
    return v0

    .line 332
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getRefreshRate()F

    move-result v0

    return v0

    .line 326
    .end local v1    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    :cond_1c
    :goto_1c
    return v0
.end method

.method public getUserPreferredResolution(Lcom/android/server/display/DisplayDevice;)Landroid/graphics/Point;
    .registers 5
    .param p1, "displayDevice"    # Lcom/android/server/display/DisplayDevice;

    .line 349
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1b

    .line 352
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v1

    .line 353
    .local v1, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v1, :cond_16

    .line 354
    return-object v0

    .line 356
    :cond_16
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    .line 350
    .end local v1    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method synthetic lambda$save$0$com-android-server-display-PersistentDataStore(Ljava/io/ByteArrayOutputStream;)V
    .registers 8
    .param p1, "os"    # Ljava/io/ByteArrayOutputStream;

    .line 475
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    const/4 v1, 0x0

    .line 478
    .local v1, "fileOutput":Ljava/io/OutputStream;
    const/4 v2, 0x1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore$Injector;->startWrite()Ljava/io/OutputStream;

    move-result-object v3

    move-object v1, v3

    .line 479
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 480
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_1c
    .catchall {:try_start_5 .. :try_end_12} :catchall_1a

    .line 484
    if-eqz v1, :cond_29

    .line 485
    :try_start_14
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    :goto_16
    invoke-virtual {v3, v1, v2}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;Z)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_34

    goto :goto_29

    .line 484
    :catchall_1a
    move-exception v3

    goto :goto_2b

    .line 481
    :catch_1c
    move-exception v3

    .line 482
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1d
    const-string v4, "DisplayManager.PersistentDataStore"

    const-string v5, "Failed to save display manager persistent store data."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 484
    .end local v3    # "ex":Ljava/io/IOException;
    if-eqz v1, :cond_29

    .line 485
    :try_start_26
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    goto :goto_16

    .line 488
    .end local v1    # "fileOutput":Ljava/io/OutputStream;
    :cond_29
    :goto_29
    monitor-exit v0

    .line 489
    return-void

    .line 484
    .restart local v1    # "fileOutput":Ljava/io/OutputStream;
    :goto_2b
    if-eqz v1, :cond_32

    .line 485
    iget-object v4, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 487
    :cond_32
    nop

    .end local p0    # "this":Lcom/android/server/display/PersistentDataStore;
    .end local p1    # "os":Ljava/io/ByteArrayOutputStream;
    throw v3

    .line 488
    .end local v1    # "fileOutput":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/android/server/display/PersistentDataStore;
    .restart local p1    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public loadIfNeeded()V
    .registers 2

    .line 423
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_a

    .line 424
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->load()V

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    .line 427
    :cond_a
    return-void
.end method

.method public rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z
    .registers 5
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 222
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 224
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, "index":I
    if-ltz v0, :cond_23

    .line 226
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    .line 227
    .local v1, "other":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 228
    const/4 v2, 0x0

    return v2

    .line 230
    :cond_1d
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v1    # "other":Landroid/hardware/display/WifiDisplay;
    goto :goto_28

    .line 232
    :cond_23
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :goto_28
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 235
    const/4 v1, 0x1

    return v1
.end method

.method public saveIfNeeded()V
    .registers 2

    .line 166
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    if-eqz v0, :cond_a

    .line 167
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->save()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 170
    :cond_a
    return-void
.end method

.method public setBrightness(Lcom/android/server/display/DisplayDevice;F)Z
    .registers 8
    .param p1, "displayDevice"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "brightness"    # F

    .line 295
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 296
    return v0

    .line 299
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "displayDeviceUniqueId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v2

    if-eqz v2, :cond_21

    if-nez v1, :cond_11

    goto :goto_21

    .line 303
    :cond_11
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v3

    .line 304
    .local v3, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v3, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setBrightness(F)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 305
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 306
    return v2

    .line 308
    :cond_20
    return v0

    .line 301
    .end local v3    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    :cond_21
    :goto_21
    return v0
.end method

.method public setBrightnessConfigurationForDisplayLocked(Landroid/hardware/display/BrightnessConfiguration;Lcom/android/server/display/DisplayDevice;ILjava/lang/String;)Z
    .registers 9
    .param p1, "configuration"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p3, "userSerial"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1e

    .line 387
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v1

    .line 388
    .local v1, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 389
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 390
    return v2

    .line 392
    :cond_1d
    return v0

    .line 385
    .end local v1    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    :cond_1e
    :goto_1e
    return v0
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 5
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userSerial"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 375
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 378
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 380
    :cond_e
    return-void
.end method

.method public setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    .registers 7
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "colorMode"    # I

    .line 271
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 272
    return v1

    .line 274
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v0

    .line 275
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setColorMode(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 276
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 277
    return v2

    .line 279
    :cond_1b
    return v1
.end method

.method public setStableDisplaySize(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "size"    # Landroid/graphics/Point;

    .line 365
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 366
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->setDisplaySize(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 367
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 369
    :cond_e
    return-void
.end method

.method public setUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;F)Z
    .registers 8
    .param p1, "displayDevice"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "refreshRate"    # F

    .line 312
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "displayDeviceUniqueId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    if-nez v0, :cond_e

    goto :goto_22

    .line 316
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v1

    .line 317
    .local v1, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v1, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setRefreshRate(F)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 318
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 319
    return v3

    .line 321
    :cond_21
    return v2

    .line 314
    .end local v1    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    :cond_22
    :goto_22
    return v2
.end method

.method public setUserPreferredResolution(Lcom/android/server/display/DisplayDevice;II)Z
    .registers 9
    .param p1, "displayDevice"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 336
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "displayDeviceUniqueId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    if-nez v0, :cond_e

    goto :goto_22

    .line 340
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v1

    .line 341
    .local v1, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v1, p2, p3}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setResolution(II)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 342
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 343
    return v3

    .line 345
    :cond_21
    return v2

    .line 338
    .end local v1    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    :cond_22
    :goto_22
    return v2
.end method
