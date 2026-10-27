.class public final synthetic Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/smartspace/SmartspaceSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda5;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda5;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    check-cast p1, Lcom/android/server/smartspace/SmartspacePerUserService;

    invoke-static {v0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->lambda$destroySmartspaceSession$5(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    return-void
.end method
