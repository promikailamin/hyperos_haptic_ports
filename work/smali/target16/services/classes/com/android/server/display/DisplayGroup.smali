.class public Lcom/android/server/display/DisplayGroup;
.super Ljava/lang/Object;
.source "DisplayGroup.java"


# static fields
.field public static FLAG_DEFAULT_GROUP_ADJACENT:J = 0x2L


# instance fields
.field public mChangeCount:I

.field public final mDisplays:Ljava/util/List;

.field public mFlags:J

.field public final mGroupId:I

.field public mGroupName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 47
    iput p1, p0, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    return-void
.end method


# virtual methods
.method public addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 84
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 85
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public containsLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    .line 136
    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_38

    .line 138
    iget-object v2, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 142
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayGroup;->getFlags()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getChangeCountLocked()I
    .registers 1

    .line 111
    iget p0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    return p0
.end method

.method public getFlags()J
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/android/server/display/DisplayGroup;->mFlags:J

    return-wide v0
.end method

.method public getGroupId()I
    .registers 1

    .line 52
    iget p0, p0, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getIdLocked(I)I
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p0

    return p0
.end method

.method public getIdsLocked()[I
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 127
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1c

    .line 129
    iget-object v3, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1c
    return-object v1
.end method

.method public getSizeLocked()I
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public isEmptyLocked()Z
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .registers 3

    .line 100
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 101
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setFlags(J)V
    .registers 5

    .line 67
    iget-wide v0, p0, Lcom/android/server/display/DisplayGroup;->mFlags:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/display/DisplayGroup;->mFlags:J

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/android/server/display/DisplayGroup;->mGroupName:Ljava/lang/String;

    return-void
.end method
