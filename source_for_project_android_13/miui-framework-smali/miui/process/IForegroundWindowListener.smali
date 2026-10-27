.class public interface abstract Lmiui/process/IForegroundWindowListener;
.super Ljava/lang/Object;
.source "IForegroundWindowListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/IForegroundWindowListener$Stub;,
        Lmiui/process/IForegroundWindowListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.process.IForegroundWindowListener"


# virtual methods
.method public abstract blacklist onForegroundWindowChanged(Lmiui/process/ForegroundInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
