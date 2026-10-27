.class Lcom/android/server/display/DisplayPowerController$5;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->createHbmControllerLocked()Lcom/android/server/display/HighBrightnessModeController;
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

    .line 2050
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$5;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGalleryHdrBrightness(F)F
    .registers 3
    .param p1, "sdrBrightness"    # F

    .line 2059
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$5;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayDeviceConfig(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getGalleryHdrBrightness(F)F

    move-result v0

    return v0
.end method

.method public getHdrBrightnessFromSdr(F)F
    .registers 3
    .param p1, "sdrBrightness"    # F

    .line 2053
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$5;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayDeviceConfig(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(F)F

    move-result v0

    return v0
.end method
