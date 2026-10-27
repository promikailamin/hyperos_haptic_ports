.class Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;
.super Ljava/lang/Object;
.source "AbsListViewOptimizationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListViewOptimizationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInfo"
.end annotation


# static fields
.field private static final blacklist ALL_VERSION_ENABLE:Ljava/lang/String; = "all"


# instance fields
.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/AbsListViewOptimizationHelper;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/AbsListViewOptimizationHelper;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p3, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->this$0:Landroid/widget/AbsListViewOptimizationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->mPackageName:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->mVersions:Ljava/util/List;

    .line 72
    return-void
.end method


# virtual methods
.method public blacklist comparePackageName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 89
    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    :goto_a
    return v0
.end method

.method public blacklist containsVersion(Ljava/lang/String;)Z
    .registers 5
    .param p1, "version"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->mVersions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_17

    .line 84
    :cond_6
    const-string v2, "all"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->mVersions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    .line 83
    :cond_17
    :goto_17
    return v1
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->mVersions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    iget-object v1, p0, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->mVersions:Ljava/util/List;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_1a
    const-string v1, ""

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method
