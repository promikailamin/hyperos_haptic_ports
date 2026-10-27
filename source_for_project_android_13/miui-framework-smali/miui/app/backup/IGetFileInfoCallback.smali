.class public interface abstract Lmiui/app/backup/IGetFileInfoCallback;
.super Ljava/lang/Object;
.source "IGetFileInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IGetFileInfoCallback$Stub;,
        Lmiui/app/backup/IGetFileInfoCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IGetFileInfoCallback"


# virtual methods
.method public abstract blacklist onGetDataFileInfoEnd(ILjava/lang/String;Lmiui/app/backup/BackupFileInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
