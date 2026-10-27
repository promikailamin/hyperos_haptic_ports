.class public interface abstract Lmiui/app/backup/ITransferDataCallback;
.super Ljava/lang/Object;
.source "ITransferDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/ITransferDataCallback$Stub;,
        Lmiui/app/backup/ITransferDataCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.ITransferDataCallback"


# virtual methods
.method public abstract blacklist onTransferDataEnd(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
