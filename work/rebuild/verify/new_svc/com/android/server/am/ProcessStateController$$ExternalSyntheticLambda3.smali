.class public final synthetic Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessStateController;

.field public final synthetic f$1:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$2:Lcom/android/server/am/ConnectionRecord;

.field public final synthetic f$3:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessStateController;

    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/am/ConnectionRecord;

    iput-object p4, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessStateController;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/am/ConnectionRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/am/ProcessStateController;->$r8$lambda$0TGLkE4vaGdArZAz6Huw38ist6g(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V

    return-void
.end method
