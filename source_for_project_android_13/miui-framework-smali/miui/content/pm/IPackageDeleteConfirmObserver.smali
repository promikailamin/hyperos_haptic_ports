.class public interface abstract Lmiui/content/pm/IPackageDeleteConfirmObserver;
.super Ljava/lang/Object;
.source "IPackageDeleteConfirmObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;,
        Lmiui/content/pm/IPackageDeleteConfirmObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.content.pm.IPackageDeleteConfirmObserver"


# virtual methods
.method public abstract blacklist onConfirm(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
