.class Lcom/android/server/display/DisplayPowerController$10;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .line 3588
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSunlightStateChange()V
    .registers 2

    .line 3591
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    .line 3592
    return-void
.end method

.method public updateScreenBrightnessSettingDueToSunlight(F)V
    .registers 3
    .param p1, "brightness"    # F

    .line 3596
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdateScreenBrightnessSetting(Lcom/android/server/display/DisplayPowerController;F)V

    .line 3597
    return-void
.end method
