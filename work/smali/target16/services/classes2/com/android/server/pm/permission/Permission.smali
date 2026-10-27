.class public final Lcom/android/server/pm/permission/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# instance fields
.field public mGids:[I

.field public mGidsPerUser:Z

.field public mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public mReconciled:Z

.field public final mType:I

.field public mUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 104
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 105
    iput p2, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;IZI[IZ)V
    .registers 7

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    .line 111
    iput-boolean p3, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 112
    iput p4, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 113
    iput-object p5, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 114
    iput-boolean p6, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getProtectionLevel()I
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    return p0
.end method

.method public isRuntime()Z
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
