.class public abstract Lcom/android/server/permission/access/SchemePolicy;
.super Ljava/lang/Object;
.source "AccessPolicy.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getObjectScheme()Ljava/lang/String;
.end method

.method public abstract getSubjectScheme()Ljava/lang/String;
.end method

.method public migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 2

    .line 0
    return-void
.end method

.method public migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAgentAllowlistChanged(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAppIdAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V
    .registers 5

    .line 0
    return-void
.end method

.method public onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 5

    .line 0
    return-void
.end method

.method public onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
.end method

.method public serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
.end method

.method public upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .registers 5

    .line 0
    return-void
.end method
