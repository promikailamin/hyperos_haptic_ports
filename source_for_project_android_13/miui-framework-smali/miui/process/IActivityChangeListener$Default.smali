.class public Lmiui/process/IActivityChangeListener$Default;
.super Ljava/lang/Object;
.source "IActivityChangeListener.java"

# interfaces
.implements Lmiui/process/IActivityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/process/IActivityChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "lastActivityComponent"    # Landroid/content/ComponentName;
    .param p2, "curActivityComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
