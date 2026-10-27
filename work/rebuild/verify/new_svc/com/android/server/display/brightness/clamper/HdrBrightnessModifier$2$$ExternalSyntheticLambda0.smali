.class public final synthetic Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;Lcom/android/server/display/plugin/types/HdrBoostOverride;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;->$r8$lambda$qhRKXQvcLczsYEMKzn0Lh8V_CkE(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;Lcom/android/server/display/plugin/types/HdrBoostOverride;)V

    return-void
.end method
