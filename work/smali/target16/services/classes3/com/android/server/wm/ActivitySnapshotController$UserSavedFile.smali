.class public Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
.super Ljava/lang/Object;
.source "ActivitySnapshotController.java"


# instance fields
.field public final mActivityIds:Landroid/util/IntArray;

.field public final mFileId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 765
    iput p1, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    .line 766
    iput p2, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 2

    .line 770
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public filterExistActivities(Landroid/util/ArraySet;)[Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 783
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_8
    if-ltz v0, :cond_27

    .line 784
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 785
    invoke-static {v3}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_24

    if-nez v2, :cond_21

    .line 787
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 789
    :cond_21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_27
    if-eqz v2, :cond_40

    .line 792
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p0

    if-eq p1, p0, :cond_36

    goto :goto_40

    :cond_36
    const/4 p0, 0x0

    .line 795
    new-array p0, p0, [Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_40
    :goto_40
    return-object v1
.end method

.method public remove(I)V
    .registers 3

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_d

    .line 776
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->remove(I)V

    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 801
    const-string v1, "UserSavedFile{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const-string v1, " fileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const-string v1, ", activityIds=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_32
    if-ltz v1, :cond_4b

    .line 807
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_48

    const/16 v2, 0x2c

    .line 809
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    .line 812
    :cond_4b
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
