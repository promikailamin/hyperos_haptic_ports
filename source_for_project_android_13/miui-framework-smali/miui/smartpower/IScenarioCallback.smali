.class public interface abstract Lmiui/smartpower/IScenarioCallback;
.super Ljava/lang/Object;
.source "IScenarioCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/smartpower/IScenarioCallback$Stub;,
        Lmiui/smartpower/IScenarioCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.smartpower.IScenarioCallback"


# virtual methods
.method public abstract blacklist onCurrentScenarioChanged(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
