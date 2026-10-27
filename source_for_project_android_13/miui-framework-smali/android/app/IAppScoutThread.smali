.class public interface abstract Landroid/app/IAppScoutThread;
.super Ljava/lang/Object;
.source "IAppScoutThread.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAppScoutThread$Stub;,
        Landroid/app/IAppScoutThread$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IAppScoutThread"


# virtual methods
.method public abstract blacklist dumpPeriodHistoryMessage(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
