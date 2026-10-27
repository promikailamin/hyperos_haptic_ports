.class public final Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;
.super Landroid/database/ContentObserver;
.source "HdrBrightnessModifier.java"


# static fields
.field public static final LOW_POWER_MODE_SETTING:Landroid/net/Uri;


# instance fields
.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetLOW_POWER_MODE_SETTING()Landroid/net/Uri;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->LOW_POWER_MODE_SETTING:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 475
    const-string/jumbo v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->LOW_POWER_MODE_SETTING:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Landroid/os/Handler;)V
    .registers 3

    .line 479
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    .line 480
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 485
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->onLowPowerModeChange()V

    return-void
.end method

.method public final onLowPowerModeChange()V
    .registers 4

    .line 506
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->isLowPowerMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmLowPowerMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Z)V

    .line 507
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmHdrBrightnessData(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmHdrBoostOverride(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/plugin/types/HdrBoostOverride;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$mrecalculateMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/config/HdrBrightnessData;Lcom/android/server/display/plugin/types/HdrBoostOverride;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object v1

    if-eq v0, v1, :cond_3a

    .line 509
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v1, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;)V

    .line 510
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmTransitionRate(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;F)V

    .line 511
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmClamperChangeListener(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_3a
    return-void
.end method

.method public register()V
    .registers 3

    .line 489
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->mRegistered:Z

    if-nez v0, :cond_1d

    .line 490
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->registerLowPowerModeSettingObserver(Landroid/database/ContentObserver;)V

    .line 491
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->isLowPowerMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmLowPowerMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Z)V

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->mRegistered:Z

    :cond_1d
    return-void
.end method

.method public unregister()V
    .registers 3

    .line 497
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->mRegistered:Z

    if-eqz v0, :cond_15

    .line 498
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->unregisterLowPowerModeSettingObserver(Landroid/database/ContentObserver;)V

    .line 499
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fputmLowPowerMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Z)V

    .line 500
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->mRegistered:Z

    :cond_15
    return-void
.end method
