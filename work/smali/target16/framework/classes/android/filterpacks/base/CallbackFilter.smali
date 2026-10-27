.class public Landroid/filterpacks/base/CallbackFilter;
.super Landroid/filterfw/core/Filter;
.source "CallbackFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    }
.end annotation


# instance fields
.field private blacklist mCallbacksOnUiThread:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "callUiThread"
    .end annotation
.end field

.field private blacklist mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "listener"
    .end annotation
.end field

.field private blacklist mUiThreadHandler:Landroid/os/Handler;

.field private blacklist mUserData:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "userData"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    .line 67
    return-void
.end method


# virtual methods
.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 3

    .line 75
    iget-boolean p1, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    if-eqz p1, :cond_f

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    .line 78
    :cond_f
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8

    .line 82
    const-string p1, "frame"

    invoke-virtual {p0, p1}, Landroid/filterpacks/base/CallbackFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 83
    iget-object p1, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    if-eqz p1, :cond_36

    .line 84
    iget-boolean p1, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    if-eqz p1, :cond_2d

    .line 85
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 86
    new-instance v0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;

    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    iget-object v5, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    move-object v3, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;-><init>(Landroid/filterpacks/base/CallbackFilter;Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 87
    iget-object p1, v1, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 90
    goto :goto_35

    .line 88
    :cond_25
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to send callback to UI thread!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2d
    move-object v1, p0

    iget-object p1, v1, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    iget-object v0, v1, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    invoke-interface {p1, p0, v4, v0}, Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;->onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 96
    :goto_35
    return-void

    .line 94
    :cond_36
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "CallbackFilter received frame, but no listener set!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setupPorts()V
    .registers 2

    .line 71
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/CallbackFilter;->addInputPort(Ljava/lang/String;)V

    .line 72
    return-void
.end method
