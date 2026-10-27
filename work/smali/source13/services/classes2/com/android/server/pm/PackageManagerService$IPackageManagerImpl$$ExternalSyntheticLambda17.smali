.class public final synthetic Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;->f$3:I

    return-void
.end method


# virtual methods
.method public final applyOrThrow(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;->f$3:I

    move-object v4, p1

    check-cast v4, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-object v5, p2

    check-cast v5, Lcom/android/server/pm/Computer;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setApplicationCategoryHint$9$com-android-server-pm-PackageManagerService$IPackageManagerImpl(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p1

    return-object p1
.end method
