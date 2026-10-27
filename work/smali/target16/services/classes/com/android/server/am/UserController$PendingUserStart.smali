.class public Lcom/android/server/am/UserController$PendingUserStart;
.super Ljava/lang/Object;
.source "UserController.java"


# instance fields
.field public final autoStopUserInSecs:I

.field public final unlockListener:Landroid/os/IProgressListener;

.field public final userId:I

.field public final userStartMode:I


# direct methods
.method public constructor <init>(IIILandroid/os/IProgressListener;)V
    .registers 5

    .line 4405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4406
    iput p1, p0, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    .line 4407
    iput p2, p0, Lcom/android/server/am/UserController$PendingUserStart;->userStartMode:I

    .line 4408
    iput p3, p0, Lcom/android/server/am/UserController$PendingUserStart;->autoStopUserInSecs:I

    .line 4409
    iput-object p4, p0, Lcom/android/server/am/UserController$PendingUserStart;->unlockListener:Landroid/os/IProgressListener;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 4414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingUserStart{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userStartMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UserController$PendingUserStart;->userStartMode:I

    .line 4416
    invoke-static {v1}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autoStopUserInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UserController$PendingUserStart;->autoStopUserInSecs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unlockListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/UserController$PendingUserStart;->unlockListener:Landroid/os/IProgressListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
