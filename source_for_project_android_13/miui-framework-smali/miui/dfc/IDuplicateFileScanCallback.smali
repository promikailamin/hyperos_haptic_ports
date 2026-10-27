.class public interface abstract Lmiui/dfc/IDuplicateFileScanCallback;
.super Ljava/lang/Object;
.source "IDuplicateFileScanCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/dfc/IDuplicateFileScanCallback$Stub;,
        Lmiui/dfc/IDuplicateFileScanCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.dfc.IDuplicateFileScanCallback"


# virtual methods
.method public abstract blacklist onDumplicateFileScanfinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
