.class public final Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final mAllowedPackageAssociations:Landroid/util/ArraySet;

.field public mIsDebuggable:Z

.field public final mSourcePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Landroid/util/ArraySet;Z)V
    .registers 5

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mSourcePackage:Ljava/lang/String;

    .line 897
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    .line 898
    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return-void
.end method


# virtual methods
.method public getAllowedPackageAssociations()Landroid/util/ArraySet;
    .registers 1

    .line 918
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    return-object p0
.end method

.method public isDebuggable()Z
    .registers 1

    .line 910
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return p0
.end method

.method public isPackageAssociationAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 906
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public setDebuggable(Z)V
    .registers 2

    .line 914
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return-void
.end method
