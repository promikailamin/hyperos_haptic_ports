.class public final Lcom/android/server/pm/DistractingPackageHelper;
.super Ljava/lang/Object;
.source "DistractingPackageHelper.java"


# instance fields
.field private final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field private final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/SuspendPackageHelper;)V
    .registers 5
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p3, "broadcastHelper"    # Lcom/android/server/pm/BroadcastHelper;
    .param p4, "suspendPackageHelper"    # Lcom/android/server/pm/SuspendPackageHelper;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 54
    iput-object p2, p0, Lcom/android/server/pm/DistractingPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 55
    iput-object p3, p0, Lcom/android/server/pm/DistractingPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 56
    iput-object p4, p0, Lcom/android/server/pm/DistractingPackageHelper;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 57
    return-void
.end method

.method static synthetic lambda$removeDistractingPackageRestrictions$1(Ljava/util/List;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 6
    .param p0, "changedPackages"    # Ljava/util/List;
    .param p1, "userId"    # I
    .param p2, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 161
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 162
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v1

    .line 163
    invoke-interface {v1, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v1

    const/4 v2, 0x0

    .line 164
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setDistractionFlags(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "index":I
    :cond_1c
    return-void
.end method

.method static synthetic lambda$setDistractingPackageRestrictionsAsUser$0(Landroid/util/ArraySet;IILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 7
    .param p0, "changesToCommit"    # Landroid/util/ArraySet;
    .param p1, "userId"    # I
    .param p2, "restrictionFlags"    # I
    .param p3, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 118
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 119
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 120
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    .line 121
    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v2

    .line 122
    invoke-interface {v2, p2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setDistractionFlags(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 124
    .end local v1    # "index":I
    :cond_1b
    return-void
.end method


# virtual methods
.method synthetic lambda$sendDistractingPackagesChanged$2$com-android-server-pm-DistractingPackageHelper(Landroid/os/Bundle;I)V
    .registers 14
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .line 192
    iget-object v0, p0, Lcom/android/server/pm/DistractingPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    aput p2, v7, v1

    const-string v1, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V
    .registers 10
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packagesToChange"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 146
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    return-void

    .line 149
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v0, "changedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/IntArray;

    array-length v2, p2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 151
    .local v1, "changedUids":Landroid/util/IntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, p2

    if-ge v2, v3, :cond_3e

    .line 152
    aget-object v3, p2, v2

    .line 153
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {p1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 154
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_3b

    invoke-interface {v4, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDistractionFlags()I

    move-result v5

    if-eqz v5, :cond_3b

    .line 156
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v5

    invoke-static {p3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 151
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 160
    .end local v2    # "i":I
    :cond_3e
    iget-object v2, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p3}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 168
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_69

    .line 169
    nop

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 171
    .local v2, "packageArray":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, p3, v4}, Lcom/android/server/pm/DistractingPackageHelper;->sendDistractingPackagesChanged([Ljava/lang/String;[III)V

    .line 173
    iget-object v3, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 175
    .end local v2    # "packageArray":[Ljava/lang/String;
    :cond_69
    return-void
.end method

.method sendDistractingPackagesChanged([Ljava/lang/String;[III)V
    .registers 8
    .param p1, "pkgList"    # [Ljava/lang/String;
    .param p2, "uidList"    # [I
    .param p3, "userId"    # I
    .param p4, "distractionFlags"    # I

    .line 186
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 187
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    const-string v1, "android.intent.extra.changed_uid_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 189
    const-string v1, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    iget-object v1, p0, Lcom/android/server/pm/DistractingPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 192
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p3}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/DistractingPackageHelper;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method setDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;III)[Ljava/lang/String;
    .registers 23
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "restrictionFlags"    # I
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 75
    return-object v2

    .line 77
    :cond_13
    const-string v6, "PackageManager"

    if-eqz v3, :cond_36

    iget-object v7, v0, Lcom/android/server/pm/DistractingPackageHelper;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 78
    invoke-virtual {v7, v1, v4, v5}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v7

    if-nez v7, :cond_36

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot restrict packages due to restrictions on user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v2

    .line 84
    :cond_36
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v7, "changedPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Landroid/util/IntArray;

    array-length v9, v2

    invoke-direct {v8, v9}, Landroid/util/IntArray;-><init>(I)V

    .line 86
    .local v8, "changedUids":Landroid/util/IntArray;
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v9, "unactionedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 89
    .local v10, "changesToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v3, :cond_56

    .line 90
    iget-object v12, v0, Lcom/android/server/pm/DistractingPackageHelper;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    invoke-virtual {v12, v1, v2, v4, v5}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v12

    goto :goto_57

    .line 91
    :cond_56
    const/4 v12, 0x0

    :goto_57
    nop

    .line 92
    .local v12, "canRestrict":[Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_59
    array-length v14, v2

    if-ge v13, v14, :cond_b7

    .line 93
    aget-object v14, v2, v13

    .line 94
    .local v14, "packageName":Ljava/lang/String;
    nop

    .line 95
    invoke-interface {v1, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    .line 96
    .local v15, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v15, :cond_92

    .line 97
    invoke-interface {v1, v15, v5, v4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v16

    if-eqz v16, :cond_6c

    goto :goto_92

    .line 104
    :cond_6c
    if-eqz v12, :cond_76

    aget-boolean v16, v12, v13

    if-nez v16, :cond_76

    .line 105
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_b2

    .line 108
    :cond_76
    invoke-interface {v15, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 109
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDistractionFlags()I

    move-result v11

    .line 110
    .local v11, "oldDistractionFlags":I
    if-eq v3, v11, :cond_b2

    .line 111
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    invoke-static {v4, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/util/IntArray;->add(I)V

    .line 113
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 98
    .end local v11    # "oldDistractionFlags":I
    :cond_92
    :goto_92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find package setting for package: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ". Skipping..."

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    nop

    .line 92
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_b2
    :goto_b2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_59

    .line 117
    .end local v13    # "i":I
    :cond_b7
    iget-object v1, v0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v6, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6, v10, v4, v3}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArraySet;II)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v6}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 126
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e1

    .line 127
    nop

    .line 128
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 127
    invoke-interface {v7, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 129
    .local v1, "changedPackages":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4, v3}, Lcom/android/server/pm/DistractingPackageHelper;->sendDistractingPackagesChanged([Ljava/lang/String;[III)V

    .line 131
    iget-object v6, v0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 133
    .end local v1    # "changedPackages":[Ljava/lang/String;
    :cond_e1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
