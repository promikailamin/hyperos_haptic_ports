.class public interface abstract Lcom/android/server/pm/pkg/PackageStateInternal;
.super Ljava/lang/Object;
.source "PackageStateInternal.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageState;


# virtual methods
.method public abstract getDomainSetId()Ljava/util/UUID;
.end method

.method public abstract getFlags()I
.end method

.method public abstract getInstallSource()Lcom/android/server/pm/InstallSource;
.end method

.method public abstract getKeySetData()Lcom/android/server/pm/PackageKeySetData;
.end method

.method public abstract getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
.end method

.method public abstract getLoadingProgress()F
.end method

.method public abstract getPathString()Ljava/lang/String;
.end method

.method public abstract getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.end method

.method public abstract getPrivateFlags()I
.end method

.method public abstract getRealName()Ljava/lang/String;
.end method

.method public abstract getSigningDetails()Landroid/content/pm/SigningDetails;
.end method

.method public abstract getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
.end method

.method public bridge synthetic getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;
    .registers 2

    .line 35
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    return-object p1
.end method

.method public getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .registers 4
    .param p1, "userId"    # I

    .line 66
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 67
    .local v0, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-nez v0, :cond_f

    sget-object v1, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1
.end method

.method public abstract getUserStates()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLoading()Z
.end method
