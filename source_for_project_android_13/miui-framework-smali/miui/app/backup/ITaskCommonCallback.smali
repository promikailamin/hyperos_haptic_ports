.class public interface abstract Lmiui/app/backup/ITaskCommonCallback;
.super Ljava/lang/Object;
.source "ITaskCommonCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/ITaskCommonCallback$Stub;,
        Lmiui/app/backup/ITaskCommonCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.ITaskCommonCallback"


# virtual methods
.method public abstract blacklist onTaskEnd(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
