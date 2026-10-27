.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/DisplayPowerController;

    return-void
.end method


# virtual methods
.method public final onBrightnessChanged(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$initialize$1$com-android-server-display-DisplayPowerController(F)V

    return-void
.end method
