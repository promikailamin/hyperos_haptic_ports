.class public final synthetic Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/pm/Computer;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Lcom/android/server/pm/pkg/SuspendParams;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;ILcom/android/server/pm/Computer;ZLjava/lang/String;ILcom/android/server/pm/pkg/SuspendParams;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$0:Landroid/util/ArraySet;

    iput p2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/pm/Computer;

    iput-boolean p4, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$3:Z

    iput-object p5, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$5:I

    iput-object p7, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$6:Lcom/android/server/pm/pkg/SuspendParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$0:Landroid/util/ArraySet;

    iget v1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/pm/Computer;

    iget-boolean v3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$3:Z

    iget-object v4, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$5:I

    iget-object v6, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;->f$6:Lcom/android/server/pm/pkg/SuspendParams;

    move-object v7, p1

    check-cast v7, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$setPackagesSuspended$0(Landroid/util/ArraySet;ILcom/android/server/pm/Computer;ZLjava/lang/String;ILcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method
