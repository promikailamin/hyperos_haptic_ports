.class public final synthetic Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessStateController;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStateController;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessStateController;

    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessStateController;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/am/ActivityManagerService;

    check-cast p1, Lcom/android/server/am/ConnectionRecord;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/server/am/ProcessStateController;->$r8$lambda$3p8ZlIp28Z4QMbQUpHQ25GJKHr0(Lcom/android/server/am/ProcessStateController;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V

    return-void
.end method
