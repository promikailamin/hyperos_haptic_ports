.class public final synthetic Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$1:I

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerInternal$ContrastListenerInternal;IF)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda1;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda1;->f$2:F

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lcom/android/server/UiModeManagerService$14;->$r8$lambda$pa5kjeMfCORkyiiMSWgu_bc-1oo(Lcom/android/server/UiModeManagerInternal$ContrastListenerInternal;IF)V

    return-void
.end method
