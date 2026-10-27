.class Lcom/android/server/pm/UserManagerService$6;
.super Landroid/app/IStopUserCallback$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$sessionId:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .line 4711
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    iput-wide p2, p0, Lcom/android/server/pm/UserManagerService$6;->val$sessionId:J

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .registers 6
    .param p1, "userIdParam"    # I

    .line 4719
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-wide v1, p0, Lcom/android/server/pm/UserManagerService$6;->val$sessionId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mlogUserRemoveJourneyFinish(Lcom/android/server/pm/UserManagerService;JIZ)V

    .line 4720
    return-void
.end method

.method public userStopped(I)V
    .registers 6
    .param p1, "userIdParam"    # I

    .line 4714
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mfinishRemoveUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 4715
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-wide v1, p0, Lcom/android/server/pm/UserManagerService$6;->val$sessionId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mlogUserRemoveJourneyFinish(Lcom/android/server/pm/UserManagerService;JIZ)V

    .line 4716
    return-void
.end method
