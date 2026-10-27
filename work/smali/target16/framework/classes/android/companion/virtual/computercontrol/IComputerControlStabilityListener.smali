.class public interface abstract Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener;
.super Ljava/lang/Object;
.source "IComputerControlStabilityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener$Stub;,
        Landroid/companion/virtual/computercontrol/IComputerControlStabilityListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.computercontrol.IComputerControlStabilityListener"


# virtual methods
.method public abstract blacklist onSessionStable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
