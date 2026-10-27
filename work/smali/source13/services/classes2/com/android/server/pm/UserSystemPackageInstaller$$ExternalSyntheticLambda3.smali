.class public final synthetic Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArrayMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;->f$0:Landroid/util/SparseArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;->f$0:Landroid/util/SparseArrayMap;

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$installWhitelistedSystemPackages$1(Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method
