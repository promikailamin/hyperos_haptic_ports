.class public final Lcom/android/server/pm/MultiuserNonComplianceLogger;
.super Ljava/lang/Object;
.source "MultiuserNonComplianceLogger.java"


# instance fields
.field public final mGetMainUserCalls:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsMainUserCalls:Landroid/util/SparseIntArray;

.field public final mLaunchedHsuActivities:Landroid/util/ArraySet;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$dPBfEHkeuk1Ojz4afuoK6uRVtp4(ILandroid/util/SparseIntArray;)V
    .registers 3

    .line 98
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 100
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, "fw.user.log_non_compliance"

    const/4 v0, -0x1

    .line 68
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    goto :goto_1e

    :cond_16
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mGetMainUserCalls:Landroid/util/SparseIntArray;

    .line 74
    iput-object p1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mIsMainUserCalls:Landroid/util/SparseIntArray;

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mLaunchedHsuActivities:Landroid/util/ArraySet;

    return-void

    .line 69
    :cond_1e
    :goto_1e
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mGetMainUserCalls:Landroid/util/SparseIntArray;

    .line 70
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mIsMainUserCalls:Landroid/util/SparseIntArray;

    .line 71
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mLaunchedHsuActivities:Landroid/util/ArraySet;

    return-void
.end method

.method public static getPackageNameForLoggingPurposes(Landroid/content/pm/PackageManagerInternal;I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3e8

    .line 203
    const-string/jumbo v1, "system"

    if-ne p1, v0, :cond_8

    return-object v1

    .line 208
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v1

    .line 215
    :cond_f
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 116
    const-string v0, "getMainUser"

    iget-object v1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mGetMainUserCalls:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 117
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 118
    const-string v0, "isMainUser"

    iget-object v1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mIsMainUserCalls:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 119
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->dumpLaunchedHsuActivities(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 8

    if-nez p3, :cond_c

    .line 125
    const-string p0, "Not logging %s() calls\n"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    .line 137
    :cond_c
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 139
    const-string p0, "Good News, Everyone!: no app called %s()\n"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    .line 142
    :cond_1c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%d apps called %s():\n"

    invoke-virtual {p1, v1, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 143
    invoke-virtual {p0}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 p2, 0x0

    :goto_2e
    if-ge p2, v0, :cond_50

    .line 145
    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 146
    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 147
    invoke-static {p0, v1}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->getPackageNameForLoggingPurposes(Landroid/content/pm/PackageManagerInternal;I)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s (uid %d): %d calls\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    :cond_50
    return-void
.end method

.method public final dumpLaunchedHsuActivities(Ljava/io/PrintWriter;)V
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mLaunchedHsuActivities:Landroid/util/ArraySet;

    if-nez v0, :cond_a

    .line 155
    const-string p0, "Not logging launched HSU activities"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 160
    :cond_a
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 162
    const-string p0, "Good News, Everyone!: no activity launched on HSU!"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 167
    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d activities launched on HSU:\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v0, :cond_3e

    .line 169
    iget-object v2, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mLaunchedHsuActivities:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  %s\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_3e
    return-void
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 194
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 196
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public logGetMainUserCall()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mGetMainUserCalls:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->logMainUserCall(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public logIsMainUserCall()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mIsMainUserCalls:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->logMainUserCall(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public final logMainUserCall(Landroid/util/SparseIntArray;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 95
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 97
    iget-object p0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/MultiuserNonComplianceLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/android/server/pm/MultiuserNonComplianceLogger$$ExternalSyntheticLambda0;-><init>(ILandroid/util/SparseIntArray;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset(Ljava/io/PrintWriter;)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mGetMainUserCalls:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mIsMainUserCalls:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_e

    .line 182
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 184
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger;->mLaunchedHsuActivities:Landroid/util/ArraySet;

    if-eqz p0, :cond_15

    .line 185
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 187
    :cond_15
    const-string p0, "Reset"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
