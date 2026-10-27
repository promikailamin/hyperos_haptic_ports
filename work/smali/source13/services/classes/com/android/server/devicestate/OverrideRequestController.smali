.class final Lcom/android/server/devicestate/OverrideRequestController;
.super Ljava/lang/Object;
.source "OverrideRequestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;,
        Lcom/android/server/devicestate/OverrideRequestController$RequestStatus;
    }
.end annotation


# static fields
.field static final STATUS_ACTIVE:I = 0x1

.field static final STATUS_CANCELED:I = 0x2

.field static final STATUS_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OverrideRequestController"


# instance fields
.field private final mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

.field private mRequest:Lcom/android/server/devicestate/OverrideRequest;

.field private mStickyRequest:Z

.field private mStickyRequestsAllowed:Z


# direct methods
.method constructor <init>(Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    .line 85
    return-void
.end method

.method private cancelCurrentRequestLocked()V
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_c

    .line 240
    const-string v0, "OverrideRequestController"

    const-string v1, "Attempted to cancel a null OverrideRequest"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    .line 244
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 246
    return-void
.end method

.method private cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;)V
    .registers 4
    .param p1, "requestToCancel"    # Lcom/android/server/devicestate/OverrideRequest;

    .line 231
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 232
    return-void
.end method

.method private static contains([II)Z
    .registers 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 250
    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 251
    const/4 v1, 0x1

    return v1

    .line 249
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static statusToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "status"    # I

    .line 63
    packed-switch p0, :pswitch_data_26

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_1c
    const-string v0, "CANCELED"

    return-object v0

    .line 65
    :pswitch_1f
    const-string v0, "ACTIVE"

    return-object v0

    .line 69
    :pswitch_22
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method addRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .registers 5
    .param p1, "request"    # Lcom/android/server/devicestate/OverrideRequest;

    .line 105
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 106
    .local v0, "previousRequest":Lcom/android/server/devicestate/OverrideRequest;
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 107
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 109
    if-eqz v0, :cond_f

    .line 110
    invoke-direct {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 112
    :cond_f
    return-void
.end method

.method cancelOverrideRequest()V
    .registers 1

    .line 143
    invoke-direct {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    .line 144
    return-void
.end method

.method cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/android/server/devicestate/OverrideRequest;

    .line 120
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 121
    return-void

    .line 123
    :cond_b
    invoke-direct {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    .line 124
    return-void
.end method

.method cancelStickyRequest()V
    .registers 2

    .line 133
    iget-boolean v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    if-eqz v0, :cond_7

    .line 134
    invoke-direct {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    .line 136
    :cond_7
    return-void
.end method

.method dumpInternal(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 218
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 219
    .local v0, "overrideRequest":Lcom/android/server/devicestate/OverrideRequest;
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    .line 220
    .local v2, "requestActive":Z
    :goto_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Override Request active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    if-eqz v2, :cond_67

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request: mPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRequestedState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 224
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    invoke-static {v1}, Lcom/android/server/devicestate/OverrideRequestController;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    :cond_67
    return-void
.end method

.method handleBaseStateChanged()V
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_5

    .line 181
    return-void

    .line 184
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 186
    invoke-direct {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    .line 188
    :cond_10
    return-void
.end method

.method handleFoldStateChanged()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_5

    .line 193
    return-void

    .line 196
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 198
    invoke-direct {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    .line 200
    :cond_11
    return-void
.end method

.method handleNewSupportedStates([I)V
    .registers 3
    .param p1, "newSupportedStates"    # [I

    .line 208
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_5

    .line 209
    return-void

    .line 212
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/devicestate/OverrideRequestController;->contains([II)Z

    move-result v0

    if-nez v0, :cond_12

    .line 213
    invoke-direct {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    .line 215
    :cond_12
    return-void
.end method

.method handleProcessDied(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_5

    .line 161
    return-void

    .line 164
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v0

    if-ne v0, p1, :cond_16

    .line 165
    iget-boolean v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    if-eqz v0, :cond_13

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    .line 169
    return-void

    .line 171
    :cond_13
    invoke-direct {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked()V

    .line 173
    :cond_16
    return-void
.end method

.method hasRequest(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 151
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method setStickyRequestsAllowed(Z)V
    .registers 2
    .param p1, "stickyRequestsAllowed"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    .line 95
    if-nez p1, :cond_7

    .line 96
    invoke-virtual {p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelStickyRequest()V

    .line 98
    :cond_7
    return-void
.end method
