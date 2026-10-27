.class public interface abstract Lmiui/mqsas/ICnssStatisticListener;
.super Ljava/lang/Object;
.source "ICnssStatisticListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/ICnssStatisticListener$Stub;,
        Lmiui/mqsas/ICnssStatisticListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.ICnssStatisticListener"


# virtual methods
.method public abstract blacklist onWakeupEvent(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
