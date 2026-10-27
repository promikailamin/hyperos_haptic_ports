.class public final Landroid/companion/virtual/computercontrol/InteractiveMirrorDisplay;
.super Ljava/lang/Object;
.source "InteractiveMirrorDisplay.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mDisplay:Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;


# direct methods
.method public constructor blacklist <init>(Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;

    iput-object p1, p0, Landroid/companion/virtual/computercontrol/InteractiveMirrorDisplay;->mDisplay:Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/InteractiveMirrorDisplay;->mDisplay:Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;

    invoke-interface {v0}, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :catch_7
    move-exception v0

    .line 69
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist resize(II)V
    .registers 4

    .line 45
    if-lez p1, :cond_11

    if-lez p2, :cond_11

    .line 49
    :try_start_4
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/InteractiveMirrorDisplay;->mDisplay:Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;->resize(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 52
    nop

    .line 53
    return-void

    .line 50
    :catch_b
    move-exception p1

    .line 51
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 46
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Display dimensions must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V
    .registers 3

    .line 58
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/InteractiveMirrorDisplay;->mDisplay:Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualTouchEvent;

    invoke-interface {v0, p1}, Landroid/companion/virtual/computercontrol/IInteractiveMirrorDisplay;->sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 61
    nop

    .line 62
    return-void

    .line 59
    :catch_d
    move-exception p1

    .line 60
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
