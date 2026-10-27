.class public interface abstract Lmiui/app/backup/IListDirCallback;
.super Ljava/lang/Object;
.source "IListDirCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IListDirCallback$Stub;,
        Lmiui/app/backup/IListDirCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IListDirCallback"


# virtual methods
.method public abstract blacklist onListDataDirEnd(ILjava/lang/String;[Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
