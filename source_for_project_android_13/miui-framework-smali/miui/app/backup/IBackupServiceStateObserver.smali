.class public interface abstract Lmiui/app/backup/IBackupServiceStateObserver;
.super Ljava/lang/Object;
.source "IBackupServiceStateObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IBackupServiceStateObserver$Stub;,
        Lmiui/app/backup/IBackupServiceStateObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IBackupServiceStateObserver"


# virtual methods
.method public abstract blacklist onServiceStateIdle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
