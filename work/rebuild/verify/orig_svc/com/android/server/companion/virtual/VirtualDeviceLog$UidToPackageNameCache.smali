.class public Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;
.super Ljava/lang/Object;
.source "VirtualDeviceLog.java"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUidToPackagesCache:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    .line 122
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getPackageName(I)Ljava/lang/String;
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 128
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_11
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_19

    .line 130
    const-string/jumbo p0, "system"

    return-object p0

    .line 132
    :cond_19
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 134
    array-length v1, v0

    if-lez v1, :cond_3d

    const/4 v1, 0x0

    .line 135
    aget-object v1, v0, v1

    .line 136
    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3f

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",..."

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    .line 143
    :cond_3d
    const-string v1, ""

    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method
