.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$0:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {v0, p1}, Lcom/android/server/pm/DexOptHelper;->lambda$getPackagesForDexopt$2(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p1

    return p1
.end method
