.class public Lcom/android/server/wm/AppCompatTask$Creator;
.super Ljava/lang/Object;
.source "AppCompatTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppCompatTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# instance fields
.field private final mAppCompatTask:Lcom/android/server/wm/AppCompatTask;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;I)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "displayId"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lcom/android/server/wm/AppCompatTask;->get()Lcom/android/server/wm/AppCompatTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppCompatTask$Creator;->mAppCompatTask:Lcom/android/server/wm/AppCompatTask;

    .line 122
    invoke-static {v0, p1}, Lcom/android/server/wm/AppCompatTask;->-$$Nest$fputmTask(Lcom/android/server/wm/AppCompatTask;Lcom/android/server/wm/Task;)V

    .line 123
    invoke-static {}, Lcom/android/server/wm/ApplicationCompatRouterStub;->get()Lcom/android/server/wm/ApplicationCompatRouterStub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ApplicationCompatRouterStub;->getPackageName(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatTask;->-$$Nest$fputmPackageName(Lcom/android/server/wm/AppCompatTask;Ljava/lang/String;)V

    .line 124
    invoke-static {v0, p2}, Lcom/android/server/wm/AppCompatTask;->-$$Nest$fputmStartedDisplayId(Lcom/android/server/wm/AppCompatTask;I)V

    .line 125
    return-void
.end method


# virtual methods
.method public create()Lcom/android/server/wm/AppCompatTask;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask$Creator;->mAppCompatTask:Lcom/android/server/wm/AppCompatTask;

    return-object v0
.end method

.method public resetStartedDisplayId(I)Lcom/android/server/wm/AppCompatTask$Creator;
    .registers 3
    .param p1, "currentDisplayId"    # I

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask$Creator;->mAppCompatTask:Lcom/android/server/wm/AppCompatTask;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppCompatTask;->-$$Nest$fputmStartedDisplayId(Lcom/android/server/wm/AppCompatTask;I)V

    .line 154
    return-object p0
.end method

.method public setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/AppCompatTask$Creator;
    .registers 3
    .param p1, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask$Creator;->mAppCompatTask:Lcom/android/server/wm/AppCompatTask;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppCompatTask;->-$$Nest$fputmActivityOptions(Lcom/android/server/wm/AppCompatTask;Landroid/app/ActivityOptions;)V

    .line 129
    return-object p0
.end method

.method public setActivityRecord(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatTask$Creator;
    .registers 3
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask$Creator;->mAppCompatTask:Lcom/android/server/wm/AppCompatTask;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatTask;->setActivityRecord(Lcom/android/server/wm/ActivityRecord;)V

    .line 134
    return-object p0
.end method

.method public setCallingPid(I)Lcom/android/server/wm/AppCompatTask$Creator;
    .registers 3
    .param p1, "callingPid"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask$Creator;->mAppCompatTask:Lcom/android/server/wm/AppCompatTask;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppCompatTask;->-$$Nest$fputmCallingPid(Lcom/android/server/wm/AppCompatTask;I)V

    .line 139
    return-object p0
.end method

.method public setCallingUid(I)Lcom/android/server/wm/AppCompatTask$Creator;
    .registers 3
    .param p1, "callingUid"    # I

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask$Creator;->mAppCompatTask:Lcom/android/server/wm/AppCompatTask;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppCompatTask;->-$$Nest$fputmCallingUid(Lcom/android/server/wm/AppCompatTask;I)V

    .line 144
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/android/server/wm/AppCompatTask$Creator;
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask$Creator;->mAppCompatTask:Lcom/android/server/wm/AppCompatTask;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppCompatTask;->-$$Nest$fputmReason(Lcom/android/server/wm/AppCompatTask;Ljava/lang/String;)V

    .line 149
    return-object p0
.end method
