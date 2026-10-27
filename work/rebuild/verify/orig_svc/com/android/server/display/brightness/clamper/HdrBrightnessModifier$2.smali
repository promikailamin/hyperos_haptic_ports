.class public Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;
.super Ljava/lang/Object;
.source "HdrBrightnessModifier.java"

# interfaces
.implements Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;


# direct methods
.method public static synthetic $r8$lambda$qhRKXQvcLczsYEMKzn0Lh8V_CkE(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;Lcom/android/server/display/plugin/types/HdrBoostOverride;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;->lambda$onChanged$0(Lcom/android/server/display/plugin/types/HdrBoostOverride;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onChanged$0(Lcom/android/server/display/plugin/types/HdrBoostOverride;)V
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$monHdrBoostOverride(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/plugin/types/HdrBoostOverride;)V

    return-void
.end method

.method public onChanged(Lcom/android/server/display/plugin/types/HdrBoostOverride;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;->this$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->-$$Nest$fgetmHandler(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;Lcom/android/server/display/plugin/types/HdrBoostOverride;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 72
    invoke-static {p1}, Lcom/android/server/HardwarePropertiesManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;->onChanged(Lcom/android/server/display/plugin/types/HdrBoostOverride;)V

    return-void
.end method
