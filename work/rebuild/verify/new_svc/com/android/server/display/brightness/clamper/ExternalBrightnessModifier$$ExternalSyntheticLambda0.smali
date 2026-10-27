.class public final synthetic Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;IF)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

    iput p2, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier$$ExternalSyntheticLambda0;->f$2:F

    invoke-static {v0, v1, p0}, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;->$r8$lambda$1WBTU1BaKOJ1fbzMTLRTm22f_tk(Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;IF)V

    return-void
.end method
