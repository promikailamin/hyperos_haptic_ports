.class public interface abstract Lcom/miui/enterprise/sdk/IEpDeletePackageObserver;
.super Ljava/lang/Object;
.source "IEpDeletePackageObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/sdk/IEpDeletePackageObserver$Stub;,
        Lcom/miui/enterprise/sdk/IEpDeletePackageObserver$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.sdk.IEpDeletePackageObserver"


# virtual methods
.method public abstract onPackageDeleted(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
