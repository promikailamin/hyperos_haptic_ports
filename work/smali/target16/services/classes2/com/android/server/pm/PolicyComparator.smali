.class public final Lcom/android/server/pm/PolicyComparator;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public duplicateFound:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 794
    iput-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I
    .registers 8

    .line 804
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_14

    .line 805
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, -0x1

    return p0

    :cond_13
    return v2

    .line 809
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 811
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasGlobalSeinfo()Z

    move-result v0

    const-string v1, "Duplicate policy entry: "

    const-string v3, "SELinuxMMAC"

    if-eqz v0, :cond_44

    .line 812
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_44
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object v0

    .line 818
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object p2

    .line 819
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_72

    .line 820
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 821
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 792
    check-cast p1, Lcom/android/server/pm/Policy;

    check-cast p2, Lcom/android/server/pm/Policy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PolicyComparator;->compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I

    move-result p0

    return p0
.end method

.method public foundDuplicate()Z
    .registers 1

    .line 797
    iget-boolean p0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    return p0
.end method
