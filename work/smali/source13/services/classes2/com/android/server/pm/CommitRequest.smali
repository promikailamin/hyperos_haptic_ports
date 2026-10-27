.class final Lcom/android/server/pm/CommitRequest;
.super Ljava/lang/Object;
.source "CommitRequest.java"


# instance fields
.field final mAllUsers:[I

.field final mReconciledPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ReconciledPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;[I)V
    .registers 3
    .param p2, "allUsers"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ReconciledPackage;",
            ">;[I)V"
        }
    .end annotation

    .line 31
    .local p1, "reconciledPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/pm/CommitRequest;->mReconciledPackages:Ljava/util/Map;

    .line 33
    iput-object p2, p0, Lcom/android/server/pm/CommitRequest;->mAllUsers:[I

    .line 34
    return-void
.end method
