.class public interface abstract Lmiui/dfc/IGetDuplicateFilesCallback;
.super Ljava/lang/Object;
.source "IGetDuplicateFilesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/dfc/IGetDuplicateFilesCallback$Stub;,
        Lmiui/dfc/IGetDuplicateFilesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.dfc.IGetDuplicateFilesCallback"


# virtual methods
.method public abstract blacklist onFinish(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
