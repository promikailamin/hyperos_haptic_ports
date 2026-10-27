.class public interface abstract Lmiui/smartpower/ISmartPowerManager;
.super Ljava/lang/Object;
.source "ISmartPowerManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/smartpower/ISmartPowerManager$Stub;,
        Lmiui/smartpower/ISmartPowerManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.smartpower.ISmartPowerManager"


# virtual methods
.method public abstract blacklist onMultiTaskActionEnd(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMultiTaskActionStart(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registThermalScenarioCallback(Lmiui/smartpower/IScenarioCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
