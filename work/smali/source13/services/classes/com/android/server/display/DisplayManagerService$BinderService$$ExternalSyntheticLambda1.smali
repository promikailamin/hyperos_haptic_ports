.class public final synthetic Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:F

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$BinderService;->lambda$setTemporaryBrightness$1(F)V

    return-void
.end method
