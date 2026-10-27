.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-static {v0, v1, p1}, Lcom/android/server/people/data/DataManager;->lambda$pruneUninstalledPackageData$11(Ljava/util/Set;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    return-void
.end method
