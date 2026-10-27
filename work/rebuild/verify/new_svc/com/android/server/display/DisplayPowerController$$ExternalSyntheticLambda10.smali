.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/display/DisplayPowerController;

    return-void
.end method


# virtual methods
.method public final getHdrBrightnessFromSdr(FFF)F
    .registers 4

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->$r8$lambda$niZtGGrrbvBHFckEP88Htcgg_rk(Lcom/android/server/display/DisplayPowerController;FFF)F

    move-result p0

    return p0
.end method
