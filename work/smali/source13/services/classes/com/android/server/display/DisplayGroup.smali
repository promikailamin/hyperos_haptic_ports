.class public Lcom/android/server/display/DisplayGroup;
.super Ljava/lang/Object;
.source "DisplayGroup.java"


# instance fields
.field private mAlwaysUnlockedCount:I

.field private mChangeCount:I

.field private final mDisplays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupId:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "groupId"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 42
    iput p1, p0, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    .line 43
    return-void
.end method

.method private hasAlwaysUnLockedFlag(Lcom/android/server/display/LogicalDisplay;)Z
    .registers 4
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 100
    if-eqz p1, :cond_e

    .line 101
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    .line 102
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_e

    .line 103
    const/4 v1, 0x1

    return v1

    .line 106
    .end local v0    # "flags":I
    :cond_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 57
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 58
    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayGroup;->hasAlwaysUnLockedFlag(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 61
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mAlwaysUnlockedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayGroup;->mAlwaysUnlockedCount:I

    .line 65
    :cond_1d
    return-void
.end method

.method containsLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .registers 3
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getChangeCountLocked()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    return v0
.end method

.method getGroupId()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    return v0
.end method

.method getIdLocked(I)I
    .registers 3
    .param p1, "index"    # I

    .line 122
    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    return v0
.end method

.method getSizeLocked()I
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method isAlwaysOnLocked()Z
    .registers 2

    .line 96
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mAlwaysUnlockedCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isEmptyLocked()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .registers 4
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 78
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 81
    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, "result":Z
    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayGroup;->hasAlwaysUnLockedFlag(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 83
    iget v1, p0, Lcom/android/server/display/DisplayGroup;->mAlwaysUnlockedCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayGroup;->mAlwaysUnlockedCount:I

    .line 85
    :cond_1a
    return v0
.end method
