.class final Lcom/android/server/pm/PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageRemovedInfo.java"


# static fields
.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field mArgs:Lcom/android/server/pm/InstallArgs;

.field mBroadcastAllowList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field mBroadcastUsers:[I

.field mDataRemoved:Z

.field mInstallReasons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInstallerPackageName:Ljava/lang/String;

.field mInstantUserIds:[I

.field mIsExternal:Z

.field mIsRemovedPackageSystemUpdate:Z

.field mIsStaticSharedLib:Z

.field mIsUpdate:Z

.field mOrigUsers:[I

.field final mPackageSender:Lcom/android/server/pm/PackageSender;

.field mRemovedAppId:I

.field mRemovedForAllUsers:Z

.field mRemovedPackage:Ljava/lang/String;

.field mRemovedUsers:[I

.field mUid:I

.field mUninstallReasons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageRemovedInfo;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSender;)V
    .registers 4
    .param p1, "packageSender"    # Lcom/android/server/pm/PackageSender;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 42
    iput v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 45
    iput-object v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 46
    iput-object v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 59
    iput-object v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    .line 64
    return-void
.end method

.method private static getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .registers 11
    .param p0, "reasonCode"    # I

    .line 101
    const-wide/16 v0, 0x2710

    .line 102
    .local v0, "duration":J
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 103
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 104
    .local v2, "amInternal":Landroid/app/ActivityManagerInternal;
    if-eqz v2, :cond_10

    .line 105
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    .line 107
    :cond_10
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v9

    .line 108
    .local v9, "bOptions":Landroid/app/BroadcastOptions;
    const/4 v6, 0x0

    const-string v8, ""

    move-object v3, v9

    move-wide v4, v0

    move v7, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 111
    return-object v9
.end method

.method private sendPackageRemovedBroadcastInternal(ZZ)V
    .registers 18
    .param p1, "killApp"    # Z
    .param p2, "removedBySystem"    # Z

    .line 118
    move-object v0, p0

    iget-boolean v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    if-eqz v1, :cond_6

    .line 119
    return-void

    .line 121
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v1, "extras":Landroid/os/Bundle;
    iget v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    if-ltz v2, :cond_10

    goto :goto_12

    :cond_10
    iget v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    :goto_12
    move v13, v2

    .line 123
    .local v13, "removedUid":I
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    const-string v3, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    xor-int/lit8 v2, p1, 0x1

    const-string v3, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    xor-int/lit8 v2, p2, 0x1

    const-string v3, "android.intent.extra.USER_INITIATED"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3a

    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    if-eqz v2, :cond_38

    goto :goto_3a

    :cond_38
    move v2, v3

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v2, v4

    :goto_3b
    move v14, v2

    .line 128
    .local v14, "isReplace":Z
    if-eqz v14, :cond_43

    .line 129
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    :cond_43
    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    const-string v5, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    iget-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz v2, :cond_ea

    .line 134
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceStub;->enablePackageEventRecorder()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 135
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    iget-object v6, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    if-eqz v8, :cond_6b

    iget-boolean v8, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    if-nez v8, :cond_6b

    move v3, v4

    :cond_6b
    invoke-virtual {v2, v5, v6, v7, v3}, Lcom/android/server/pm/PackageManagerServiceStub;->recordPackageRemove([ILjava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v2

    .line 137
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "miuiRemoveId"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string/jumbo v5, "miuiRemoveTime"

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_87
    iget-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    iget-object v4, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    iget-object v10, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    iget-object v11, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    const/4 v12, 0x0

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    move-object v5, v1

    invoke-interface/range {v2 .. v12}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 144
    iget-object v7, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v7, :cond_b1

    .line 145
    iget-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    iget-object v4, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    iget-object v10, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    move-object v5, v1

    invoke-interface/range {v2 .. v12}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 149
    :cond_b1
    iget-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    iget-object v4, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    iget-object v10, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    iget-object v11, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    const/4 v12, 0x0

    const-string v3, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    const-string v7, "android"

    move-object v5, v1

    invoke-interface/range {v2 .. v12}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 153
    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    if-eqz v2, :cond_ea

    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    if-nez v2, :cond_ea

    .line 154
    iget-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    iget-object v4, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    const/high16 v6, 0x1000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    iget-object v10, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    iget-object v11, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    const/4 v12, 0x0

    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    move-object v5, v1

    invoke-interface/range {v2 .. v12}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 157
    iget-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    iget-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    invoke-interface {v2, v3, v13}, Lcom/android/server/pm/PackageSender;->notifyPackageRemoved(Ljava/lang/String;I)V

    .line 160
    :cond_ea
    iget v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    if-ltz v2, :cond_10b

    .line 163
    if-eqz v14, :cond_f7

    .line 164
    iget-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_f7
    iget-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    const/4 v4, 0x0

    const/high16 v6, 0x1000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    iget-object v10, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    iget-object v11, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    const/4 v12, 0x0

    const-string v3, "android.intent.action.UID_REMOVED"

    move-object v5, v1

    invoke-interface/range {v2 .. v12}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 171
    :cond_10b
    return-void
.end method

.method private sendSystemPackageUpdatedBroadcastsInternal()V
    .registers 26

    .line 77
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 78
    .local v1, "extras":Landroid/os/Bundle;
    iget v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    if-ltz v2, :cond_d

    goto :goto_f

    :cond_d
    iget v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    :goto_f
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const/4 v2, 0x1

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    iget-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    iget-object v5, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    const/4 v13, 0x0

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    move-object v6, v1

    invoke-interface/range {v3 .. v13}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 82
    iget-object v8, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v8, :cond_4b

    .line 83
    iget-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    iget-object v5, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    move-object v6, v1

    invoke-interface/range {v3 .. v13}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 87
    iget-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    iget-object v5, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-interface/range {v3 .. v13}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 92
    :cond_4b
    iget-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    iget-object v5, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    const/4 v13, 0x0

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    move-object v6, v1

    invoke-interface/range {v3 .. v13}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 94
    iget-object v14, v0, Lcom/android/server/pm/PackageRemovedInfo;->mPackageSender:Lcom/android/server/pm/PackageSender;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v3, 0x137

    .line 96
    invoke-static {v3}, Lcom/android/server/pm/PackageRemovedInfo;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v24

    .line 94
    const-string v15, "android.intent.action.MY_PACKAGE_REPLACED"

    move-object/from16 v19, v2

    invoke-interface/range {v14 .. v24}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 97
    return-void
.end method


# virtual methods
.method public populateUsers([ILcom/android/server/pm/PackageSetting;)V
    .registers 6
    .param p1, "userIds"    # [I
    .param p2, "deletedPackageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 174
    iput-object p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 175
    if-nez p1, :cond_8

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 177
    return-void

    .line 180
    :cond_8
    sget-object v0, Lcom/android/server/pm/PackageRemovedInfo;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 181
    iput-object v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 182
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_2f

    .line 183
    aget v1, p1, v0

    .line 184
    .local v1, "userId":I
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 185
    iget-object v2, p0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    goto :goto_2c

    .line 187
    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 182
    .end local v1    # "userId":I
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 190
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method sendPackageRemovedBroadcasts(ZZ)V
    .registers 3
    .param p1, "killApp"    # Z
    .param p2, "removedBySystem"    # Z

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(ZZ)V

    .line 68
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts()V
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_7

    .line 72
    invoke-direct {p0}, Lcom/android/server/pm/PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 74
    :cond_7
    return-void
.end method
