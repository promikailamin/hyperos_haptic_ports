.class public final Lcom/android/server/devicepolicy/CallerIdentity;
.super Ljava/lang/Object;
.source "CallerIdentity.java"


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Landroid/content/ComponentName;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPid:I

    .line 40
    iput p2, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 41
    iput-object p3, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPid:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    return p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 58
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public hasAdminComponent()Z
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasPackage()Z
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallerIdentity[uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 83
    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_1a
    iget-object v1, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2c

    .line 86
    const-string v1, ", cmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_2c
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
