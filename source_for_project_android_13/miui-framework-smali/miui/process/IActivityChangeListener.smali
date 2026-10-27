.class public interface abstract Lmiui/process/IActivityChangeListener;
.super Ljava/lang/Object;
.source "IActivityChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/IActivityChangeListener$Stub;,
        Lmiui/process/IActivityChangeListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "miui.process.IActivityChangeListener"


# virtual methods
.method public abstract onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
