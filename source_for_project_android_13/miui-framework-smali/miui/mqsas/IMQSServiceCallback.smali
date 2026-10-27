.class public interface abstract Lmiui/mqsas/IMQSServiceCallback;
.super Ljava/lang/Object;
.source "IMQSServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSServiceCallback$Stub;,
        Lmiui/mqsas/IMQSServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.IMQSServiceCallback"


# virtual methods
.method public abstract blacklist onReportFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
