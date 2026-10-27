.class public Landroid/app/servertransaction/WindowStateResizeItem;
.super Landroid/app/servertransaction/WindowStateTransactionItem;
.source "WindowStateResizeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowStateResizeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WindowStateResizeItem"


# instance fields
.field private final blacklist mDisplayId:I

.field private final blacklist mDragResizing:Z

.field private final blacklist mForceLayout:Z

.field private final blacklist mLayout:Landroid/view/WindowRelayoutResult;

.field private final blacklist mReportDraw:Z

.field private final blacklist mSyncWithBuffers:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/app/servertransaction/WindowStateResizeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowStateResizeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowStateResizeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 112
    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 44
    new-instance v0, Landroid/view/WindowRelayoutResult;

    new-instance v1, Landroid/window/ClientWindowFrames;

    invoke-direct {v1}, Landroid/window/ClientWindowFrames;-><init>()V

    new-instance v2, Landroid/util/MergedConfiguration;

    invoke-direct {v2}, Landroid/util/MergedConfiguration;-><init>()V

    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3}, Landroid/view/InsetsState;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    .line 113
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    invoke-virtual {v0, p1}, Landroid/view/WindowRelayoutResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncWithBuffers:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    .line 119
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowStateResizeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateResizeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZIIZZLandroid/window/ActivityWindowInfo;)V
    .registers 16

    .line 59
    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/view/IWindow;)V

    .line 44
    new-instance p1, Landroid/view/WindowRelayoutResult;

    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    new-instance v1, Landroid/util/MergedConfiguration;

    invoke-direct {v1}, Landroid/util/MergedConfiguration;-><init>()V

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    .line 60
    iget-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object p1, p1, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p1, p2}, Landroid/window/ClientWindowFrames;->setTo(Landroid/window/ClientWindowFrames;)V

    .line 61
    iget-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object p1, p1, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, p4}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 62
    iget-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object p1, p1, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    const/4 p2, 0x1

    invoke-virtual {p1, p5, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 63
    if-eqz p11, :cond_3c

    .line 64
    iget-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    new-instance p2, Landroid/window/ActivityWindowInfo;

    invoke-direct {p2, p11}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    iput-object p2, p1, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    goto :goto_40

    .line 66
    :cond_3c
    iget-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iput-object v3, p1, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 68
    :goto_40
    iput-boolean p3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    .line 69
    iput-boolean p6, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    .line 70
    iput p7, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    .line 71
    iget-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iput p8, p1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    .line 72
    iput-boolean p9, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncWithBuffers:Z

    .line 73
    iput-boolean p10, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 134
    return v0

    .line 136
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 137
    return v2

    .line 139
    :cond_c
    check-cast p1, Landroid/app/servertransaction/WindowStateResizeItem;

    .line 140
    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    iget-object v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v3, v3, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v3, v3, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    .line 141
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    iget-object v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v3, v3, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    .line 142
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    if-ne v1, v3, :cond_6f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    if-ne v1, v3, :cond_6f

    iget v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iget v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    if-ne v1, v3, :cond_6f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget v1, v1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    iget-object v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget v3, v3, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    if-ne v1, v3, :cond_6f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncWithBuffers:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncWithBuffers:Z

    if-ne v1, v3, :cond_6f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    if-ne v1, v3, :cond_6f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object p1, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object p1, p1, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 149
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    move v0, v2

    .line 140
    :goto_70
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 14

    .line 79
    const-string/jumbo p1, "windowResized"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 81
    :try_start_8
    iget-object v4, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-boolean v5, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iget-boolean v6, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iget v7, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iget-boolean v8, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncWithBuffers:Z

    iget-boolean v9, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Landroid/view/IWindow;->resized(Landroid/view/WindowRelayoutResult;ZZIZZ)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    .line 88
    goto :goto_22

    .line 83
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 87
    const-string p2, "WindowStateResizeItem"

    const-string p3, "The original window no longer exists in the new process"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_22
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    return-void
.end method

.method public blacklist getSyncWithBuffersForTest()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncWithBuffers:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 154
    nop

    .line 155
    const/16 v0, 0x20f

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    add-int/2addr v0, v1

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    add-int/2addr v0, v1

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    add-int/2addr v0, v1

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget v1, v1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncWithBuffers:Z

    add-int/2addr v0, v1

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    add-int/2addr v0, v1

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowStateResizeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", syncSeqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget v1, v1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncWithBuffers:Z

    if-eqz v1, :cond_34

    const-string v1, "+buf"

    goto :goto_36

    :cond_34
    const-string v1, ""

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mLayout:Landroid/view/WindowRelayoutResult;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowRelayoutResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    iget-boolean p2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    iget-boolean p2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 105
    iget p2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean p2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncWithBuffers:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 107
    iget-boolean p2, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    return-void
.end method
