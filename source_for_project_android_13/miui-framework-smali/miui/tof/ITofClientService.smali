.class public interface abstract Lmiui/tof/ITofClientService;
.super Ljava/lang/Object;
.source "ITofClientService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/tof/ITofClientService$Stub;,
        Lmiui/tof/ITofClientService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.tof.ITofClientService"


# virtual methods
.method public abstract blacklist showGuideView()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateView(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
