.class final Lcom/android/server/devicestate/OverrideRequest;
.super Ljava/lang/Object;
.source "OverrideRequest.java"


# instance fields
.field private final mFlags:I

.field private final mPid:I

.field private final mRequestedState:I

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;III)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "requestedState"    # I
    .param p4, "flags"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 37
    iput p2, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 38
    iput p3, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:I

    .line 39
    iput p4, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    .line 40
    return-void
.end method


# virtual methods
.method getFlags()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    return v0
.end method

.method getPid()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    return v0
.end method

.method getRequestedState()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:I

    return v0
.end method

.method getToken()Landroid/os/IBinder;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    return-object v0
.end method
