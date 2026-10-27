.class public interface abstract Landroid/app/supervision/ISupervisionListener;
.super Ljava/lang/Object;
.source "ISupervisionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/supervision/ISupervisionListener$Stub;,
        Landroid/app/supervision/ISupervisionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.supervision.ISupervisionListener"


# virtual methods
.method public abstract blacklist onSetSupervisionEnabled(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
