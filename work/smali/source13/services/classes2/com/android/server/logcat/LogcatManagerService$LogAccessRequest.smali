.class final Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
.super Ljava/lang/Object;
.source "LogcatManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/logcat/LogcatManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogAccessRequest"
.end annotation


# instance fields
.field final mFd:I

.field final mGid:I

.field final mPid:I

.field final mUid:I


# direct methods
.method private constructor <init>(IIII)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .param p3, "pid"    # I
    .param p4, "fd"    # I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 146
    iput p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 147
    iput p3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 148
    iput p4, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 149
    return-void
.end method

.method synthetic constructor <init>(IIIILcom/android/server/logcat/LogcatManagerService$LogAccessRequest-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 153
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 154
    :cond_4
    instance-of v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 155
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 156
    .local v1, "that":Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
    iget v3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v4, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    if-ne v3, v4, :cond_26

    iget v3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v4, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    if-ne v3, v4, :cond_26

    iget v3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget v4, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    if-ne v3, v4, :cond_26

    iget v3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    iget v4, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 161
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogAccessRequest{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
