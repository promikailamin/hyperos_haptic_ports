.class public interface abstract Lcom/miui/enterprise/sdk/IEpInstallPackageObserver;
.super Ljava/lang/Object;
.source "IEpInstallPackageObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/sdk/IEpInstallPackageObserver$Stub;,
        Lcom/miui/enterprise/sdk/IEpInstallPackageObserver$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.sdk.IEpInstallPackageObserver"


# virtual methods
.method public abstract onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
