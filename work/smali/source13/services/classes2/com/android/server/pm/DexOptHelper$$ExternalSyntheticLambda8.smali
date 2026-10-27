.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DexOptHelper;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DexOptHelper;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/DexOptHelper;

    iput-object p2, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/DexOptHelper;

    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/DexOptHelper;->lambda$getOptimizablePackages$0$com-android-server-pm-DexOptHelper(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method
