.class public Lcom/android/server/wm/AppCompatTask;
.super Ljava/lang/Object;
.source "AppCompatTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppCompatTask$Creator;
    }
.end annotation


# instance fields
.field private mActivityOptions:Landroid/app/ActivityOptions;

.field private mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mCallingPid:I

.field private mCallingUid:I

.field private mIsChangedWindowingMode:Z

.field private mIsContinuityNotification:Z

.field private mIsContinuityRelaunch:Z

.field private mIsContinuityRestart:Z

.field private mPackageName:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mStartedDisplayId:I

.field private mTask:Lcom/android/server/wm/Task;


# direct methods
.method static bridge synthetic -$$Nest$fputmActivityOptions(Lcom/android/server/wm/AppCompatTask;Landroid/app/ActivityOptions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AppCompatTask;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallingPid(Lcom/android/server/wm/AppCompatTask;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/AppCompatTask;->mCallingPid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallingUid(Lcom/android/server/wm/AppCompatTask;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/AppCompatTask;->mCallingUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPackageName(Lcom/android/server/wm/AppCompatTask;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AppCompatTask;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReason(Lcom/android/server/wm/AppCompatTask;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AppCompatTask;->mReason:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartedDisplayId(Lcom/android/server/wm/AppCompatTask;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/AppCompatTask;->mStartedDisplayId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTask(Lcom/android/server/wm/AppCompatTask;Lcom/android/server/wm/Task;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AppCompatTask;->mTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatTask;->mIsChangedWindowingMode:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityRestart:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityRelaunch:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityNotification:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppCompatTask;->mStartedDisplayId:I

    return-void
.end method

.method public static get()Lcom/android/server/wm/AppCompatTask;
    .registers 1

    .line 42
    const-class v0, Lcom/android/server/wm/AppCompatTask;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppCompatTask;

    return-object v0
.end method


# virtual methods
.method public changeStartedDisplayId(I)V
    .registers 2
    .param p1, "startedDisplayId"    # I

    .line 78
    iput p1, p0, Lcom/android/server/wm/AppCompatTask;->mStartedDisplayId:I

    .line 79
    return-void
.end method

.method public changedWindowingMode(Z)V
    .registers 2
    .param p1, "isChangedWindowingMode"    # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatTask;->mIsChangedWindowingMode:Z

    .line 115
    return-void
.end method

.method public getActivityOptions()Landroid/app/ActivityOptions;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method public getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method public getCallingPid()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/android/server/wm/AppCompatTask;->mCallingPid:I

    return v0
.end method

.method public getCallingUid()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/android/server/wm/AppCompatTask;->mCallingUid:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStartedDisplayId()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/server/wm/AppCompatTask;->mStartedDisplayId:I

    return v0
.end method

.method public getTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method public getTaskPackageName()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/AppCompatTask;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isChangedWindowingMode()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatTask;->mIsChangedWindowingMode:Z

    return v0
.end method

.method public isContinuityNotification()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityNotification:Z

    return v0
.end method

.method public isContinuityRelaunch()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityRelaunch:Z

    return v0
.end method

.method public isContinuityRestart()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityRestart:Z

    return v0
.end method

.method public setActivityRecord(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 106
    iput-object p1, p0, Lcom/android/server/wm/AppCompatTask;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 107
    return-void
.end method

.method public setContinuityNotification(Z)V
    .registers 2
    .param p1, "isContinuityNotification"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityNotification:Z

    .line 87
    return-void
.end method

.method public setContinuityRelaunch(Z)V
    .registers 2
    .param p1, "isContinuityRelaunch"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityRelaunch:Z

    .line 95
    return-void
.end method

.method public setContinuityRestart(Z)V
    .registers 2
    .param p1, "isContinuityRestart"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityRestart:Z

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppCompatTask{mTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatTask;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivityRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatTask;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivityOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatTask;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatTask;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallingPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppCompatTask;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppCompatTask;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsChangedWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppCompatTask;->mIsChangedWindowingMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsContinuityRestart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityRestart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsContinuityRelaunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityRelaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsContinuityNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppCompatTask;->mIsContinuityNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppCompatTask;->mStartedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
