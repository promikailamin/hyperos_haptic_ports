.class public Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;
.super Ljava/lang/Object;
.source "HdrBrightnessModifier.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPluginManager:Lcom/android/server/display/plugin/PluginManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/plugin/PluginManager;)V
    .registers 3

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    .line 584
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    return-void
.end method


# virtual methods
.method public getHdrBrightnessBoostLevel()F
    .registers 4

    .line 643
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x2

    const-string v2, "hdr_brightness_boost_level"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public isHdrBrightnessEnabled()Z
    .registers 4

    .line 637
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "hdr_brightness_enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_11

    return v2

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isLowPowerMode()Z
    .registers 3

    .line 632
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    .line 633
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 632
    const-string/jumbo v0, "low_power"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public registerHdrBoostOverrideListener(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .registers 4

    .line 590
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    sget-object v0, Lcom/android/server/display/plugin/PluginType;->HDR_BOOST_OVERRIDE:Lcom/android/server/display/plugin/PluginType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/display/plugin/PluginManager;->subscribe(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    return-void
.end method

.method public registerHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V
    .registers 3

    .line 601
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    return-void
.end method

.method public registerHdrSettingsObserver(Landroid/database/ContentObserver;)V
    .registers 6

    .line 619
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->-$$Nest$sfgetHDR_BRIGHTNESS_ENABLED_SETTING()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 622
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->-$$Nest$sfgetHDR_BRIGHTNESS_BOOST_LEVEL_SETTING()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerLowPowerModeSettingObserver(Landroid/database/ContentObserver;)V
    .registers 5

    .line 609
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->-$$Nest$sfgetLOW_POWER_MODE_SETTING()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregisterHdrBoostOverrideListener(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .registers 4

    .line 596
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    sget-object v0, Lcom/android/server/display/plugin/PluginType;->HDR_BOOST_OVERRIDE:Lcom/android/server/display/plugin/PluginType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/display/plugin/PluginManager;->unsubscribe(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    return-void
.end method

.method public unregisterHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V
    .registers 3

    .line 605
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    return-void
.end method

.method public unregisterHdrSettingObserver(Landroid/database/ContentObserver;)V
    .registers 2

    .line 628
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterLowPowerModeSettingObserver(Landroid/database/ContentObserver;)V
    .registers 2

    .line 615
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
