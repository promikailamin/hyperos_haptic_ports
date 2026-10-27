.class public interface abstract Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;
.super Ljava/lang/Object;
.source "IAutomatedPackageListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/computercontrol/IAutomatedPackageListener$Stub;,
        Landroid/companion/virtual/computercontrol/IAutomatedPackageListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.computercontrol.IAutomatedPackageListener"


# virtual methods
.method public abstract blacklist onAutomatedPackagesChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
