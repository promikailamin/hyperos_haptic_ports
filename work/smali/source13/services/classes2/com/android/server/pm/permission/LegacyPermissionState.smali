.class public final Lcom/android/server/pm/permission/LegacyPermissionState;
.super Ljava/lang/Object;
.source "LegacyPermissionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;,
        Lcom/android/server/pm/permission/LegacyPermissionState$UserState;
    }
.end annotation


# instance fields
.field private final mMissing:Landroid/util/SparseBooleanArray;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/LegacyPermissionState$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private static checkUserId(I)V
    .registers 4
    .param p0, "userId"    # I

    .line 225
    if-ltz p0, :cond_3

    .line 228
    return-void

    .line 226
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V
    .registers 8
    .param p1, "other"    # Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 51
    if-ne p1, p0, :cond_3

    .line 52
    return-void

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 56
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 57
    .local v0, "userStatesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2c

    .line 58
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    iget-object v5, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    invoke-direct {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;-><init>(Lcom/android/server/pm/permission/LegacyPermissionState$UserState;)V

    .line 58
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 62
    .end local v1    # "i":I
    :cond_2c
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 63
    iget-object v1, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 64
    .local v1, "missingSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_4e

    .line 65
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    iget-object v4, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    iget-object v5, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 67
    .end local v2    # "i":I
    :cond_4e
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 93
    if-ne p0, p1, :cond_4

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 97
    return v0

    .line 99
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 100
    return v0

    .line 102
    :cond_13
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 105
    .local v1, "other":Lcom/android/server/pm/permission/LegacyPermissionState;
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 106
    .local v2, "userStatesSize":I
    iget-object v3, v1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_25

    .line 107
    return v0

    .line 109
    :cond_25
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    if-ge v3, v2, :cond_44

    .line 110
    iget-object v4, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 111
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 112
    return v0

    .line 109
    .end local v4    # "userId":I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 115
    .end local v3    # "i":I
    :cond_44
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    iget-object v3, v1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 130
    invoke-static {p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 132
    .local v0, "userState":Lcom/android/server/pm/permission/LegacyPermissionState$UserState;
    if-nez v0, :cond_f

    .line 133
    const/4 v1, 0x0

    return-object v1

    .line 135
    :cond_f
    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v1

    return-object v1
.end method

.method public getPermissionStates(I)Ljava/util/Collection;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-static {p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 186
    .local v0, "userState":Lcom/android/server/pm/permission/LegacyPermissionState$UserState;
    if-nez v0, :cond_12

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 189
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->getPermissionStates()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public hasPermissionState(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 164
    .local p1, "permissionNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 165
    .local v0, "userStatesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2d

    .line 166
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 167
    .local v2, "userState":Lcom/android/server/pm/permission/LegacyPermissionState$UserState;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "permissionName":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 169
    const/4 v3, 0x1

    return v3

    .line 171
    .end local v4    # "permissionName":Ljava/lang/String;
    :cond_29
    goto :goto_15

    .line 165
    .end local v2    # "userState":Lcom/android/server/pm/permission/LegacyPermissionState$UserState;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 173
    .end local v1    # "i":I
    :cond_2d
    const/4 v1, 0x0

    return v1
.end method

.method public isMissing(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 202
    invoke-static {p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V
    .registers 5
    .param p1, "permissionState"    # Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .param p2, "userId"    # I

    .line 146
    invoke-static {p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 147
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 148
    .local v0, "userState":Lcom/android/server/pm/permission/LegacyPermissionState$UserState;
    if-nez v0, :cond_18

    .line 149
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    invoke-direct {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;-><init>()V

    move-object v0, v1

    .line 150
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    :cond_18
    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;)V

    .line 153
    return-void
.end method

.method public remove(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 88
    return-void
.end method

.method public reset()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 77
    return-void
.end method

.method public setMissing(ZI)V
    .registers 5
    .param p1, "missing"    # Z
    .param p2, "userId"    # I

    .line 216
    invoke-static {p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 217
    if-eqz p1, :cond_c

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_11

    .line 220
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 222
    :goto_11
    return-void
.end method
