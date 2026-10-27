.class public final Lcom/android/server/SystemService$TargetUser;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TargetUser"
.end annotation


# instance fields
.field private final mFull:Z

.field private final mManagedProfile:Z

.field private final mPreCreated:Z

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .registers 3
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    .line 155
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    .line 156
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mManagedProfile:Z

    .line 157
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    .line 158
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 217
    :cond_14
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "addComma":Z
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 220
    const-string v1, "full"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 223
    if-eqz v0, :cond_32

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 224
    :cond_32
    const-string/jumbo v1, "mp"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    :cond_38
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 227
    return-void
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 192
    iget v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdentifier()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    return v0
.end method

.method public isFull()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    return v0
.end method

.method public isManagedProfile()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mManagedProfile:Z

    return v0
.end method

.method public isPreCreated()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 206
    iget v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
