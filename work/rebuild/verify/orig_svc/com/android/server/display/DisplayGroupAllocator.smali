.class public Lcom/android/server/display/DisplayGroupAllocator;
.super Ljava/lang/Object;
.source "DisplayGroupAllocator.java"


# instance fields
.field public mCanDefaultDisplayEnterDesktopMode:Z

.field public mCanDeviceEnterDesktopMode:Z

.field public mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/display/DisplayGroupAllocator$Injector;

.field public mReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 48
    new-instance v0, Lcom/android/server/display/DisplayGroupAllocator$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayGroupAllocator$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayGroupAllocator;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayGroupAllocator$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayGroupAllocator$Injector;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/android/server/display/DisplayGroupAllocator;->mInjector:Lcom/android/server/display/DisplayGroupAllocator$Injector;

    .line 53
    iput-object p1, p0, Lcom/android/server/display/DisplayGroupAllocator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static calculateGroupId(Ljava/lang/String;Landroid/util/SparseArray;)I
    .registers 5

    .line 88
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1f

    .line 91
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayGroup;

    .line 92
    invoke-virtual {v2}, Lcom/android/server/display/DisplayGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 93
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public decideRequiredGroupTypeLocked(Lcom/android/server/display/LogicalDisplay;I)Ljava/lang/String;
    .registers 3

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayGroupAllocator;->getContentModeForDisplayLocked(Lcom/android/server/display/LogicalDisplay;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayGroupAllocator;->mReason:I

    .line 70
    const-string p0, ""

    if-eqz p1, :cond_11

    const/4 p2, 0x1

    if-eq p1, p2, :cond_e

    return-object p0

    .line 72
    :cond_e
    const-string/jumbo p0, "secondary_mode"

    :cond_11
    return-object p0
.end method

.method public getContentModeForDisplayLocked(Lcom/android/server/display/LogicalDisplay;I)I
    .registers 6

    .line 126
    iget-boolean v0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDeviceEnterDesktopMode:Z

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2a

    const/4 v2, 0x4

    if-ne p2, v2, :cond_b

    goto :goto_2a

    :cond_b
    if-eqz v0, :cond_18

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayGroupAllocator;->isDesktopModeSupportedOnDisplayLocked(Lcom/android/server/display/LogicalDisplay;I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDefaultDisplayEnterDesktopMode:Z

    if-nez v0, :cond_18

    return v1

    .line 141
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDeviceEnterDesktopMode:Z

    if-eqz v0, :cond_28

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayGroupAllocator;->isDesktopModeSupportedOnDisplayLocked(Lcom/android/server/display/LogicalDisplay;I)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-boolean p0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDefaultDisplayEnterDesktopMode:Z

    if-eqz p0, :cond_28

    const/4 p0, 0x2

    return p0

    :cond_28
    const/4 p0, 0x3

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public getReason()I
    .registers 1

    .line 150
    iget p0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mReason:I

    return p0
.end method

.method public initLater(Landroid/content/Context;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/android/server/display/DisplayGroupAllocator;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mInjector:Lcom/android/server/display/DisplayGroupAllocator$Injector;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayGroupAllocator$Injector;->-$$Nest$mcanEnterDesktopMode(Lcom/android/server/display/DisplayGroupAllocator$Injector;Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDeviceEnterDesktopMode:Z

    .line 59
    iget-object p1, p0, Lcom/android/server/display/DisplayGroupAllocator;->mInjector:Lcom/android/server/display/DisplayGroupAllocator$Injector;

    iget-object v0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayGroupAllocator$Injector;->isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDefaultDisplayEnterDesktopMode:Z

    return-void
.end method

.method public isDesktopModeSupportedOnDisplayLocked(Lcom/android/server/display/LogicalDisplay;I)Z
    .registers 5

    .line 104
    iget-boolean v0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDeviceEnterDesktopMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 109
    iget-boolean p0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDefaultDisplayEnterDesktopMode:Z

    return p0

    :cond_c
    const/4 v0, 0x2

    if-eq p2, v0, :cond_14

    const/4 v0, 0x4

    if-ne p2, v0, :cond_13

    goto :goto_14

    :cond_13
    return v1

    .line 113
    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mInjector:Lcom/android/server/display/DisplayGroupAllocator$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayGroupAllocator$Injector;->canDisplayHostTasksLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result p0

    return p0
.end method
