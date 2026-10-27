.class public Lcom/android/server/wm/SensitiveContentPackages;
.super Ljava/lang/Object;
.source "SensitiveContentPackages.java"


# instance fields
.field public final mProtectedPackages:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public addBlockScreenCaptureForApps(Landroid/util/ArraySet;)Z
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 p0, 0x1

    return p0
.end method

.method public clearBlockedApps()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 113
    const-string v0, "SensitiveContentPackages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Packages that should block screen capture ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    .line 115
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->-$$Nest$fgetmPkg(Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->-$$Nest$fgetmUid(Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->-$$Nest$fgetmWindowToken(Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a

    :cond_67
    return-void
.end method

.method public removeBlockScreenCaptureForApps(Landroid/util/ArraySet;)Z
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method public shouldBlockScreenCaptureForApp(Ljava/lang/String;ILandroid/os/IBinder;)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 48
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 49
    iget-object v2, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    if-eqz v2, :cond_32

    .line 50
    invoke-static {v2}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->-$$Nest$fgetmPkg(Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static {v2}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->-$$Nest$fgetmUid(Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;)I

    move-result v3

    if-ne v3, p2, :cond_32

    .line 54
    invoke-virtual {v2}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eq p3, v3, :cond_30

    .line 55
    invoke-virtual {v2}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_32

    :cond_30
    const/4 p0, 0x1

    return p0

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_35
    return v0
.end method

.method public size()I
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages;->mProtectedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method
