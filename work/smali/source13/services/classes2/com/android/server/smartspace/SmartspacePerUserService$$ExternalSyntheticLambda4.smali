.class public final synthetic Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/smartspace/SmartspaceSessionId;

.field public final synthetic f$1:Landroid/app/smartspace/SmartspaceTargetEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/smartspace/SmartspaceTargetEvent;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/smartspace/SmartspaceTargetEvent;

    check-cast p1, Landroid/service/smartspace/ISmartspaceService;

    invoke-static {v0, v1, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->lambda$notifySmartspaceEventLocked$2(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;Landroid/service/smartspace/ISmartspaceService;)V

    return-void
.end method
