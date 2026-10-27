.class public final Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdrBrightnessModifier.java"


# static fields
.field public static final HDR_BRIGHTNESS_BOOST_LEVEL_SETTING:Landroid/net/Uri;

.field public static final HDR_BRIGHTNESS_ENABLED_SETTING:Landroid/net/Uri;


# instance fields
.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetHDR_BRIGHTNESS_BOOST_LEVEL_SETTING()Landroid/net/Uri;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->HDR_BRIGHTNESS_BOOST_LEVEL_SETTING:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetHDR_BRIGHTNESS_ENABLED_SETTING()Landroid/net/Uri;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->HDR_BRIGHTNESS_ENABLED_SETTING:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 517
    const-string v0, "hdr_brightness_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->HDR_BRIGHTNESS_ENABLED_SETTING:Landroid/net/Uri;

    .line 519
    const-string v0, "hdr_brightness_boost_level"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->HDR_BRIGHTNESS_BOOST_LEVEL_SETTING:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Landroid/os/Handler;)V
    .registers 3

    .line 524
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    .line 525
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 530
    sget-object p1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->HDR_BRIGHTNESS_ENABLED_SETTING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 531
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->updateHdrBrightnessEnabled()V

    return-void

    .line 532
    :cond_c
    sget-object p1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->HDR_BRIGHTNESS_BOOST_LEVEL_SETTING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 533
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->updateHdrBrightnessBoostLevel()V

    :cond_17
    return-void
.end method

.method public register()V
    .registers 3

    .line 538
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->mRegistered:Z

    if-nez v0, :cond_2a

    .line 539
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->registerHdrSettingsObserver(Landroid/database/ContentObserver;)V

    .line 540
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->isHdrBrightnessEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmHdrBrightnessEnabled(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Z)V

    .line 541
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->getHdrBrightnessBoostLevel()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmHdrBrightnessBoostLevel(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;F)V

    const/4 v0, 0x1

    .line 542
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->mRegistered:Z

    :cond_2a
    return-void
.end method

.method public unregister()V
    .registers 3

    .line 547
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_1d

    .line 548
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->unregisterHdrSettingObserver(Landroid/database/ContentObserver;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmHdrBrightnessEnabled(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Z)V

    .line 550
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmHdrBrightnessBoostLevel(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;F)V

    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->mRegistered:Z

    :cond_1d
    return-void
.end method

.method public final updateHdrBrightnessBoostLevel()V
    .registers 3

    .line 568
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->getHdrBrightnessBoostLevel()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmHdrBrightnessBoostLevel(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;F)V

    .line 570
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$misNbmOrHbmHdr(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 571
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmTransitionRate(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;F)V

    .line 572
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmClamperChangeListener(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_25
    return-void
.end method

.method public final updateHdrBrightnessEnabled()V
    .registers 4

    .line 557
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->isHdrBrightnessEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmHdrBrightnessEnabled(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Z)V

    .line 558
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmHdrBrightnessData(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmHdrBoostOverride(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/plugin/types/HdrBoostOverride;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$mrecalculateMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/config/HdrBrightnessData;Lcom/android/server/display/plugin/types/HdrBoostOverride;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v1

    if-eq v0, v1, :cond_3a

    .line 560
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v1, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;)V

    .line 561
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmTransitionRate(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;F)V

    .line 562
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmClamperChangeListener(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_3a
    return-void
.end method
