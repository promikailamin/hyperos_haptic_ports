.class Landroid/view/ViewRootImpl$3;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 2092
    iput-object p1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist toViewScreenState(I)I
    .registers 3
    .param p1, "displayState"    # I

    .line 2133
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 2134
    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    nop

    .line 2133
    :goto_6
    return v0
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2130
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 8
    .param p1, "displayId"    # I

    .line 2095
    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_59

    .line 2096
    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 2097
    .local v0, "oldDisplayState":I
    iget-object v1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 2098
    .local v1, "newDisplayState":I
    if-eq v0, v1, :cond_59

    .line 2099
    iget-object v2, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 2101
    sget v2, Landroid/view/ViewRootImpl;->sLastOldDisplayState:I

    if-eq v2, v0, :cond_3a

    sget v2, Landroid/view/ViewRootImpl;->sLastNewDisplayState:I

    if-eq v2, v1, :cond_3a

    .line 2102
    sput v0, Landroid/view/ViewRootImpl;->sLastOldDisplayState:I

    .line 2103
    sput v1, Landroid/view/ViewRootImpl;->sLastNewDisplayState:I

    .line 2104
    const/4 v2, 0x0

    sput-boolean v2, Landroid/view/ViewRootImpl;->sDrawLockPoked:Z

    .line 2105
    iget-object v2, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 2108
    :cond_3a
    if-eqz v0, :cond_59

    .line 2109
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$3;->toViewScreenState(I)I

    move-result v2

    .line 2110
    .local v2, "oldScreenState":I
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$3;->toViewScreenState(I)I

    move-result v3

    .line 2111
    .local v3, "newScreenState":I
    if-eq v2, v3, :cond_4d

    .line 2112
    iget-object v4, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2114
    :cond_4d
    const/4 v4, 0x1

    if-ne v0, v4, :cond_59

    .line 2116
    iget-object v5, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v4, v5, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2117
    iget-object v4, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2122
    .end local v0    # "oldDisplayState":I
    .end local v1    # "newDisplayState":I
    .end local v2    # "oldScreenState":I
    .end local v3    # "newScreenState":I
    :cond_59
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2126
    return-void
.end method
